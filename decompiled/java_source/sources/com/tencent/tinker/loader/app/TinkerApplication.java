package com.tencent.tinker.loader.app;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import com.tencent.tinker.anno.Keep;
import com.tencent.tinker.loader.TinkerLoader;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.TinkerUncaughtHandler;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TinkerApplication extends Application {
    private static final String INTENT_PATCH_EXCEPTION = "intent_patch_exception";
    private static final TinkerApplication[] SELF_HOLDER = {null};
    private static final String TINKER_LOADER_METHOD = "tryLoad";
    private final String delegateClassName;
    private final String loaderClassName;
    protected ClassLoader mCurrentClassLoader;
    private Handler mInlineFence;
    private final int tinkerFlags;
    private final boolean tinkerLoadVerifyFlag;
    protected Intent tinkerResultIntent;
    private final boolean useDelegateLastClassLoader;
    private final boolean useInterpretModeOnSupported32BitSystem;
    private boolean useSafeMode;

    protected TinkerApplication(int i11) {
        this(i11, "com.tencent.tinker.entry.DefaultApplicationLike");
    }

    protected TinkerApplication(int i11, String str) {
        this(i11, str, TinkerLoader.class.getName(), false);
    }

    protected TinkerApplication(int i11, String str, String str2, boolean z10) {
        this(i11, str, str2, z10, true, false);
    }

    protected TinkerApplication(int i11, String str, String str2, boolean z10, boolean z11) {
        this(i11, str, str2, z10, z11, false);
    }

    protected TinkerApplication(int i11, String str, String str2, boolean z10, boolean z11, boolean z12) {
        this.mCurrentClassLoader = null;
        this.mInlineFence = null;
        TinkerApplication[] tinkerApplicationArr = SELF_HOLDER;
        synchronized (tinkerApplicationArr) {
            tinkerApplicationArr[0] = this;
        }
        this.tinkerFlags = i11;
        this.delegateClassName = str;
        this.loaderClassName = str2;
        this.tinkerLoadVerifyFlag = z10;
        this.useDelegateLastClassLoader = z11;
        this.useInterpretModeOnSupported32BitSystem = z12;
    }

    private Handler createInlineFence(Application application, int i11, String str, boolean z10, long j11, long j12, Intent intent) {
        try {
            Class<?> cls = Class.forName(str, false, this.mCurrentClassLoader);
            Class<?> cls2 = Long.TYPE;
            Object objNewInstance = cls.getConstructor(Application.class, Integer.TYPE, Boolean.TYPE, cls2, cls2, Intent.class).newInstance(application, Integer.valueOf(i11), Boolean.valueOf(z10), Long.valueOf(j11), Long.valueOf(j12), intent);
            Constructor<?> constructor = Class.forName("com.tencent.tinker.entry.TinkerApplicationInlineFence", false, this.mCurrentClassLoader).getConstructor(Class.forName("com.tencent.tinker.entry.ApplicationLike", false, this.mCurrentClassLoader));
            constructor.setAccessible(true);
            return (Handler) constructor.newInstance(objNewInstance);
        } catch (Throwable th2) {
            throw new TinkerRuntimeException("createInlineFence failed", th2);
        }
    }

    public static TinkerApplication getInstance() {
        TinkerApplication tinkerApplication;
        TinkerApplication[] tinkerApplicationArr = SELF_HOLDER;
        synchronized (tinkerApplicationArr) {
            try {
                tinkerApplication = tinkerApplicationArr[0];
                if (tinkerApplication == null) {
                    throw new IllegalStateException("TinkerApplication is not initialized.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tinkerApplication;
    }

    private void loadTinker() {
        try {
            Class<?> cls = Class.forName(this.loaderClassName, false, TinkerApplication.class.getClassLoader());
            this.tinkerResultIntent = (Intent) cls.getMethod(TINKER_LOADER_METHOD, TinkerApplication.class).invoke(cls.getConstructor(null).newInstance(null), this);
        } catch (Throwable th2) {
            Intent intent = new Intent();
            this.tinkerResultIntent = intent;
            ShareIntentUtil.setIntentReturnCode(intent, -20);
            this.tinkerResultIntent.putExtra(INTENT_PATCH_EXCEPTION, th2);
        }
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Thread.setDefaultUncaughtExceptionHandler(new TinkerUncaughtHandler(this));
        onBaseContextAttached(context, jElapsedRealtime, jCurrentTimeMillis);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        AssetManager assets = super.getAssets();
        Handler handler = this.mInlineFence;
        return handler == null ? assets : TinkerInlineFenceAction.callGetAssets(handler, assets);
    }

    @Override // android.content.ContextWrapper
    public Context getBaseContext() {
        Context baseContext = super.getBaseContext();
        Handler handler = this.mInlineFence;
        return handler == null ? baseContext : TinkerInlineFenceAction.callGetBaseContext(handler, baseContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        ClassLoader classLoader = super.getClassLoader();
        Handler handler = this.mInlineFence;
        return handler == null ? classLoader : TinkerInlineFenceAction.callGetClassLoader(handler, classLoader);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = super.getResources();
        Handler handler = this.mInlineFence;
        return handler == null ? resources : TinkerInlineFenceAction.callGetResources(handler, resources);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService = super.getSystemService(str);
        Handler handler = this.mInlineFence;
        return handler == null ? systemService : TinkerInlineFenceAction.callGetSystemService(handler, str, systemService);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = super.getTheme();
        Handler handler = this.mInlineFence;
        return handler == null ? theme : TinkerInlineFenceAction.callGetTheme(handler, theme);
    }

    public int getTinkerFlags() {
        return this.tinkerFlags;
    }

    public boolean isTinkerLoadVerifyFlag() {
        return this.tinkerLoadVerifyFlag;
    }

    public boolean isUseDelegateLastClassLoader() {
        return this.useDelegateLastClassLoader;
    }

    public boolean isUseInterpretModeOnSupported32BitSystem() {
        return this.useInterpretModeOnSupported32BitSystem;
    }

    @Keep
    public int mzNightModeUseOf() {
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return 1;
        }
        return TinkerInlineFenceAction.callMZNightModeUseOf(handler);
    }

    protected void onBaseContextAttached(Context context, long j11, long j12) {
        try {
            loadTinker();
            this.mCurrentClassLoader = context.getClassLoader();
            Handler handlerCreateInlineFence = createInlineFence(this, this.tinkerFlags, this.delegateClassName, this.tinkerLoadVerifyFlag, j11, j12, this.tinkerResultIntent);
            this.mInlineFence = handlerCreateInlineFence;
            TinkerInlineFenceAction.callOnBaseContextAttached(handlerCreateInlineFence, context);
            if (this.useSafeMode) {
                ShareTinkerInternals.setSafeModeCount(this, 0);
            }
        } catch (TinkerRuntimeException e11) {
            throw e11;
        } catch (Throwable th2) {
            throw new TinkerRuntimeException(th2.getMessage(), th2);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) throws Throwable {
        super.onConfigurationChanged(configuration);
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        TinkerInlineFenceAction.callOnConfigurationChanged(handler, configuration);
    }

    @Override // android.app.Application
    public void onCreate() throws Throwable {
        super.onCreate();
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        TinkerInlineFenceAction.callOnCreate(handler);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() throws Throwable {
        super.onLowMemory();
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        TinkerInlineFenceAction.callOnLowMemory(handler);
    }

    @Override // android.app.Application
    public void onTerminate() throws Throwable {
        super.onTerminate();
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        TinkerInlineFenceAction.callOnTerminate(handler);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    @TargetApi(14)
    public void onTrimMemory(int i11) {
        super.onTrimMemory(i11);
        Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        TinkerInlineFenceAction.callOnTrimMemory(handler, i11);
    }

    public void setUseSafeMode(boolean z10) {
        this.useSafeMode = z10;
    }
}
