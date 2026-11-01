package com.bumptech.glide;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.BitmapPreFiller;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class Glide implements ComponentCallbacks2 {
    private static final String DEFAULT_DISK_CACHE_DIR = "image_manager_disk_cache";
    private static final String DESTROYED_ACTIVITY_WARNING = "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).";
    private static final String TAG = "Glide";
    private static volatile Glide glide;
    private static volatile boolean isInitializing;
    private final ArrayPool arrayPool;
    private final BitmapPool bitmapPool;

    @Nullable
    private BitmapPreFiller bitmapPreFiller;
    private final ConnectivityMonitorFactory connectivityMonitorFactory;
    private final RequestOptionsFactory defaultRequestOptionsFactory;
    private final Engine engine;
    private final GlideContext glideContext;
    private final MemoryCache memoryCache;
    private final RequestManagerRetriever requestManagerRetriever;
    private final List<RequestManager> managers = new ArrayList();
    private MemoryCategory memoryCategory = MemoryCategory.NORMAL;

    public interface RequestOptionsFactory {
        @NonNull
        RequestOptions build();
    }

    Glide(@NonNull Context context, @NonNull Engine engine, @NonNull MemoryCache memoryCache, @NonNull BitmapPool bitmapPool, @NonNull ArrayPool arrayPool, @NonNull RequestManagerRetriever requestManagerRetriever, @NonNull ConnectivityMonitorFactory connectivityMonitorFactory, int i11, @NonNull RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, TransitionOptions<?, ?>> map, @NonNull List<RequestListener<Object>> list, @NonNull List<GlideModule> list2, @Nullable AppGlideModule appGlideModule, @NonNull GlideExperiments glideExperiments) {
        this.engine = engine;
        this.bitmapPool = bitmapPool;
        this.arrayPool = arrayPool;
        this.memoryCache = memoryCache;
        this.requestManagerRetriever = requestManagerRetriever;
        this.connectivityMonitorFactory = connectivityMonitorFactory;
        this.defaultRequestOptionsFactory = requestOptionsFactory;
        this.glideContext = new GlideContext(context, arrayPool, RegistryFactory.lazilyCreateAndInitializeRegistry(this, list2, appGlideModule), new ImageViewTargetFactory(), requestOptionsFactory, map, list, engine, glideExperiments, i11);
    }

    static void checkAndInitializeGlide(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (isInitializing) {
            throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
        }
        isInitializing = true;
        try {
            initializeGlide(context, generatedAppGlideModule);
        } finally {
            isInitializing = false;
        }
    }

    public static void enableHardwareBitmaps() {
        HardwareConfigState.getInstance().unblockHardwareBitmaps();
    }

    @NonNull
    public static Glide get(@NonNull Context context) {
        if (glide == null) {
            GeneratedAppGlideModule annotationGeneratedGlideModules = getAnnotationGeneratedGlideModules(context.getApplicationContext());
            synchronized (Glide.class) {
                try {
                    if (glide == null) {
                        checkAndInitializeGlide(context, annotationGeneratedGlideModules);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return glide;
    }

    @Nullable
    private static GeneratedAppGlideModule getAnnotationGeneratedGlideModules(Context context) {
        try {
            return (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e11) {
            throwIncorrectGlideModule(e11);
            return null;
        } catch (InstantiationException e12) {
            throwIncorrectGlideModule(e12);
            return null;
        } catch (NoSuchMethodException e13) {
            throwIncorrectGlideModule(e13);
            return null;
        } catch (InvocationTargetException e14) {
            throwIncorrectGlideModule(e14);
            return null;
        }
    }

    @Nullable
    public static File getPhotoCacheDir(@NonNull Context context) {
        return getPhotoCacheDir(context, "image_manager_disk_cache");
    }

    @Nullable
    public static File getPhotoCacheDir(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            if (Log.isLoggable(TAG, 6)) {
                Log.e(TAG, "default disk cache dir is null");
            }
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.isDirectory() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    @NonNull
    private static RequestManagerRetriever getRetriever(@Nullable Context context) {
        Preconditions.checkNotNull(context, DESTROYED_ACTIVITY_WARNING);
        return get(context).getRequestManagerRetriever();
    }

    public static void init(@NonNull Context context, @NonNull GlideBuilder glideBuilder) {
        GeneratedAppGlideModule annotationGeneratedGlideModules = getAnnotationGeneratedGlideModules(context);
        synchronized (Glide.class) {
            try {
                if (glide != null) {
                    tearDown();
                }
                initializeGlide(context, glideBuilder, annotationGeneratedGlideModules);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public static synchronized void init(Glide glide2) {
        try {
            if (glide != null) {
                tearDown();
            }
            glide = glide2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static void initializeGlide(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        initializeGlide(context, new GlideBuilder(), generatedAppGlideModule);
    }

    private static void initializeGlide(@NonNull Context context, @NonNull GlideBuilder glideBuilder, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<GlideModule> listEmptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) {
            listEmptyList = new ManifestParser(applicationContext).parse();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.getExcludedModuleClasses().isEmpty()) {
            Set<Class<?>> excludedModuleClasses = generatedAppGlideModule.getExcludedModuleClasses();
            Iterator<GlideModule> it = listEmptyList.iterator();
            while (it.hasNext()) {
                GlideModule next = it.next();
                if (excludedModuleClasses.contains(next.getClass())) {
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("AppGlideModule excludes manifest GlideModule: ");
                        sb2.append(next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(TAG, 3)) {
            for (GlideModule glideModule : listEmptyList) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Discovered GlideModule from manifest: ");
                sb3.append(glideModule.getClass());
            }
        }
        glideBuilder.setRequestManagerFactory(generatedAppGlideModule != null ? generatedAppGlideModule.getRequestManagerFactory() : null);
        Iterator<GlideModule> it2 = listEmptyList.iterator();
        while (it2.hasNext()) {
            it2.next().applyOptions(applicationContext, glideBuilder);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.applyOptions(applicationContext, glideBuilder);
        }
        Glide glideBuild = glideBuilder.build(applicationContext, listEmptyList, generatedAppGlideModule);
        applicationContext.registerComponentCallbacks(glideBuild);
        glide = glideBuild;
    }

    public static synchronized boolean isInitialized() {
        return glide != null;
    }

    public static void tearDown() {
        synchronized (Glide.class) {
            try {
                if (glide != null) {
                    glide.getContext().getApplicationContext().unregisterComponentCallbacks(glide);
                    glide.engine.shutdown();
                }
                glide = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void throwIncorrectGlideModule(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @NonNull
    @Deprecated
    public static RequestManager with(@NonNull Activity activity) {
        return with(activity.getApplicationContext());
    }

    @NonNull
    @Deprecated
    public static RequestManager with(@NonNull Fragment fragment) {
        Activity activity = fragment.getActivity();
        Preconditions.checkNotNull(activity, DESTROYED_ACTIVITY_WARNING);
        return with(activity.getApplicationContext());
    }

    @NonNull
    public static RequestManager with(@NonNull Context context) {
        return getRetriever(context).get(context);
    }

    @NonNull
    public static RequestManager with(@NonNull View view) {
        return getRetriever(view.getContext()).get(view);
    }

    @NonNull
    public static RequestManager with(@NonNull androidx.fragment.app.Fragment fragment) {
        return getRetriever(fragment.getContext()).get(fragment);
    }

    @NonNull
    public static RequestManager with(@NonNull FragmentActivity fragmentActivity) {
        return getRetriever(fragmentActivity).get(fragmentActivity);
    }

    public void clearDiskCache() {
        Util.assertBackgroundThread();
        this.engine.clearDiskCache();
    }

    public void clearMemory() {
        Util.assertMainThread();
        this.memoryCache.clearMemory();
        this.bitmapPool.clearMemory();
        this.arrayPool.clearMemory();
    }

    @NonNull
    public ArrayPool getArrayPool() {
        return this.arrayPool;
    }

    @NonNull
    public BitmapPool getBitmapPool() {
        return this.bitmapPool;
    }

    ConnectivityMonitorFactory getConnectivityMonitorFactory() {
        return this.connectivityMonitorFactory;
    }

    @NonNull
    public Context getContext() {
        return this.glideContext.getBaseContext();
    }

    @NonNull
    GlideContext getGlideContext() {
        return this.glideContext;
    }

    @NonNull
    public Registry getRegistry() {
        return this.glideContext.getRegistry();
    }

    @NonNull
    public RequestManagerRetriever getRequestManagerRetriever() {
        return this.requestManagerRetriever;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        clearMemory();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i11) {
        trimMemory(i11);
    }

    public synchronized void preFillBitmapPool(@NonNull PreFillType.Builder... builderArr) {
        try {
            if (this.bitmapPreFiller == null) {
                this.bitmapPreFiller = new BitmapPreFiller(this.memoryCache, this.bitmapPool, (DecodeFormat) this.defaultRequestOptionsFactory.build().getOptions().get(Downsampler.DECODE_FORMAT));
            }
            this.bitmapPreFiller.preFill(builderArr);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    void registerRequestManager(RequestManager requestManager) {
        synchronized (this.managers) {
            try {
                if (this.managers.contains(requestManager)) {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
                this.managers.add(requestManager);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean removeFromManagers(@NonNull Target<?> target) {
        synchronized (this.managers) {
            try {
                Iterator<RequestManager> it = this.managers.iterator();
                while (it.hasNext()) {
                    if (it.next().untrack(target)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public MemoryCategory setMemoryCategory(@NonNull MemoryCategory memoryCategory) {
        Util.assertMainThread();
        this.memoryCache.setSizeMultiplier(memoryCategory.getMultiplier());
        this.bitmapPool.setSizeMultiplier(memoryCategory.getMultiplier());
        MemoryCategory memoryCategory2 = this.memoryCategory;
        this.memoryCategory = memoryCategory;
        return memoryCategory2;
    }

    public void trimMemory(int i11) {
        Util.assertMainThread();
        synchronized (this.managers) {
            try {
                Iterator<RequestManager> it = this.managers.iterator();
                while (it.hasNext()) {
                    it.next().onTrimMemory(i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.memoryCache.trimMemory(i11);
        this.bitmapPool.trimMemory(i11);
        this.arrayPool.trimMemory(i11);
    }

    void unregisterRequestManager(RequestManager requestManager) {
        synchronized (this.managers) {
            try {
                if (!this.managers.contains(requestManager)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.managers.remove(requestManager);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
