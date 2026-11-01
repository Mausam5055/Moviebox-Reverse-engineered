package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.GlideTrace;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {
    private static final String GLIDE_TAG = "Glide";
    private final TransitionFactory<? super R> animationFactory;
    private final Executor callbackExecutor;
    private final Context context;
    private int cookie;
    private volatile Engine engine;

    @Nullable
    private Drawable errorDrawable;

    @Nullable
    private Drawable fallbackDrawable;
    private final GlideContext glideContext;
    private int height;
    private boolean isCallingCallbacks;
    private Engine.LoadStatus loadStatus;

    @Nullable
    private final Object model;
    private final int overrideHeight;
    private final int overrideWidth;

    @Nullable
    private Drawable placeholderDrawable;
    private final Priority priority;
    private final RequestCoordinator requestCoordinator;

    @Nullable
    private final List<RequestListener<R>> requestListeners;
    private final Object requestLock;
    private final BaseRequestOptions<?> requestOptions;

    @Nullable
    private RuntimeException requestOrigin;
    private Resource<R> resource;
    private long startTime;
    private final StateVerifier stateVerifier;
    private Status status;

    @Nullable
    private final String tag;
    private final Target<R> target;

    @Nullable
    private final RequestListener<R> targetListener;
    private final Class<R> transcodeClass;
    private int width;
    private static final String TAG = "GlideRequest";
    private static final boolean IS_VERBOSE_LOGGABLE = Log.isLoggable(TAG, 2);

    private enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private SingleRequest(Context context, GlideContext glideContext, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i11, int i12, Priority priority, Target<R> target, @Nullable RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        this.tag = IS_VERBOSE_LOGGABLE ? String.valueOf(super.hashCode()) : null;
        this.stateVerifier = StateVerifier.newInstance();
        this.requestLock = obj;
        this.context = context;
        this.glideContext = glideContext;
        this.model = obj2;
        this.transcodeClass = cls;
        this.requestOptions = baseRequestOptions;
        this.overrideWidth = i11;
        this.overrideHeight = i12;
        this.priority = priority;
        this.target = target;
        this.targetListener = requestListener;
        this.requestListeners = list;
        this.requestCoordinator = requestCoordinator;
        this.engine = engine;
        this.animationFactory = transitionFactory;
        this.callbackExecutor = executor;
        this.status = Status.PENDING;
        if (this.requestOrigin == null && glideContext.getExperiments().isEnabled(GlideBuilder.LogRequestOrigins.class)) {
            this.requestOrigin = new RuntimeException("Glide request origin trace");
        }
    }

    private void assertNotCallingCallbacks() {
        if (this.isCallingCallbacks) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    private boolean canNotifyCleared() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    private boolean canNotifyStatusChanged() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    private boolean canSetResource() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    private void cancel() {
        assertNotCallingCallbacks();
        this.stateVerifier.throwIfRecycled();
        this.target.removeCallback(this);
        Engine.LoadStatus loadStatus = this.loadStatus;
        if (loadStatus != null) {
            loadStatus.cancel();
            this.loadStatus = null;
        }
    }

    private void experimentalNotifyRequestStarted(Object obj) {
        List<RequestListener<R>> list = this.requestListeners;
        if (list == null) {
            return;
        }
        for (RequestListener<R> requestListener : list) {
            if (requestListener instanceof ExperimentalRequestListener) {
                ((ExperimentalRequestListener) requestListener).onRequestStarted(obj);
            }
        }
    }

    private Drawable getErrorDrawable() {
        if (this.errorDrawable == null) {
            Drawable errorPlaceholder = this.requestOptions.getErrorPlaceholder();
            this.errorDrawable = errorPlaceholder;
            if (errorPlaceholder == null && this.requestOptions.getErrorId() > 0) {
                this.errorDrawable = loadDrawable(this.requestOptions.getErrorId());
            }
        }
        return this.errorDrawable;
    }

    private Drawable getFallbackDrawable() {
        if (this.fallbackDrawable == null) {
            Drawable fallbackDrawable = this.requestOptions.getFallbackDrawable();
            this.fallbackDrawable = fallbackDrawable;
            if (fallbackDrawable == null && this.requestOptions.getFallbackId() > 0) {
                this.fallbackDrawable = loadDrawable(this.requestOptions.getFallbackId());
            }
        }
        return this.fallbackDrawable;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderDrawable == null) {
            Drawable placeholderDrawable = this.requestOptions.getPlaceholderDrawable();
            this.placeholderDrawable = placeholderDrawable;
            if (placeholderDrawable == null && this.requestOptions.getPlaceholderId() > 0) {
                this.placeholderDrawable = loadDrawable(this.requestOptions.getPlaceholderId());
            }
        }
        return this.placeholderDrawable;
    }

    private boolean isFirstReadyResource() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || !requestCoordinator.getRoot().isAnyResourceSet();
    }

    private Drawable loadDrawable(int i11) {
        return DrawableDecoderCompat.getDrawable(this.context, i11, this.requestOptions.getTheme() != null ? this.requestOptions.getTheme() : this.context.getTheme());
    }

    private void logV(String str) {
        Log.v(TAG, str + " this: " + this.tag);
    }

    private static int maybeApplySizeMultiplier(int i11, float f11) {
        return i11 == Integer.MIN_VALUE ? i11 : Math.round(f11 * i11);
    }

    private void notifyRequestCoordinatorLoadFailed() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestFailed(this);
        }
    }

    private void notifyRequestCoordinatorLoadSucceeded() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestSuccess(this);
        }
    }

    public static <R> SingleRequest<R> obtain(Context context, GlideContext glideContext, Object obj, Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i11, int i12, Priority priority, Target<R> target, RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        return new SingleRequest<>(context, glideContext, obj, obj2, cls, baseRequestOptions, i11, i12, priority, target, requestListener, list, requestCoordinator, engine, transitionFactory, executor);
    }

    private void onLoadFailed(GlideException glideException, int i11) {
        boolean zOnLoadFailed;
        this.stateVerifier.throwIfRecycled();
        synchronized (this.requestLock) {
            try {
                glideException.setOrigin(this.requestOrigin);
                int logLevel = this.glideContext.getLogLevel();
                if (logLevel <= i11) {
                    Log.w(GLIDE_TAG, "Load failed for [" + this.model + "] with dimensions [" + this.width + "x" + this.height + "]", glideException);
                    if (logLevel <= 4) {
                        glideException.logRootCauses(GLIDE_TAG);
                    }
                }
                this.loadStatus = null;
                this.status = Status.FAILED;
                notifyRequestCoordinatorLoadFailed();
                boolean z10 = true;
                this.isCallingCallbacks = true;
                try {
                    List<RequestListener<R>> list = this.requestListeners;
                    if (list != null) {
                        Iterator<RequestListener<R>> it = list.iterator();
                        zOnLoadFailed = false;
                        while (it.hasNext()) {
                            zOnLoadFailed |= it.next().onLoadFailed(glideException, this.model, this.target, isFirstReadyResource());
                        }
                    } else {
                        zOnLoadFailed = false;
                    }
                    RequestListener<R> requestListener = this.targetListener;
                    if (requestListener == null || !requestListener.onLoadFailed(glideException, this.model, this.target, isFirstReadyResource())) {
                        z10 = false;
                    }
                    if (!(zOnLoadFailed | z10)) {
                        setErrorPlaceholder();
                    }
                    this.isCallingCallbacks = false;
                    GlideTrace.endSectionAsync(TAG, this.cookie);
                } catch (Throwable th2) {
                    this.isCallingCallbacks = false;
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    private void onResourceReady(Resource<R> resource, R r11, DataSource dataSource, boolean z10) {
        boolean zOnResourceReady;
        boolean zIsFirstReadyResource = isFirstReadyResource();
        this.status = Status.COMPLETE;
        this.resource = resource;
        if (this.glideContext.getLogLevel() <= 3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Finished loading ");
            sb2.append(r11.getClass().getSimpleName());
            sb2.append(" from ");
            sb2.append(dataSource);
            sb2.append(" for ");
            sb2.append(this.model);
            sb2.append(" with size [");
            sb2.append(this.width);
            sb2.append("x");
            sb2.append(this.height);
            sb2.append("] in ");
            sb2.append(LogTime.getElapsedMillis(this.startTime));
            sb2.append(" ms");
        }
        notifyRequestCoordinatorLoadSucceeded();
        boolean z11 = true;
        this.isCallingCallbacks = true;
        try {
            List<RequestListener<R>> list = this.requestListeners;
            if (list != null) {
                zOnResourceReady = false;
                for (RequestListener<R> requestListener : list) {
                    boolean zOnResourceReady2 = zOnResourceReady | requestListener.onResourceReady(r11, this.model, this.target, dataSource, zIsFirstReadyResource);
                    zOnResourceReady = requestListener instanceof ExperimentalRequestListener ? ((ExperimentalRequestListener) requestListener).onResourceReady(r11, this.model, this.target, dataSource, zIsFirstReadyResource, z10) | zOnResourceReady2 : zOnResourceReady2;
                }
            } else {
                zOnResourceReady = false;
            }
            RequestListener<R> requestListener2 = this.targetListener;
            if (requestListener2 == null || !requestListener2.onResourceReady(r11, this.model, this.target, dataSource, zIsFirstReadyResource)) {
                z11 = false;
            }
            if (!(zOnResourceReady | z11)) {
                this.target.onResourceReady(r11, this.animationFactory.build(dataSource, zIsFirstReadyResource));
            }
            this.isCallingCallbacks = false;
            GlideTrace.endSectionAsync(TAG, this.cookie);
        } catch (Throwable th2) {
            this.isCallingCallbacks = false;
            throw th2;
        }
    }

    private void setErrorPlaceholder() {
        if (canNotifyStatusChanged()) {
            Drawable fallbackDrawable = this.model == null ? getFallbackDrawable() : null;
            if (fallbackDrawable == null) {
                fallbackDrawable = getErrorDrawable();
            }
            if (fallbackDrawable == null) {
                fallbackDrawable = getPlaceholderDrawable();
            }
            this.target.onLoadFailed(fallbackDrawable);
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.requestLock) {
            try {
                assertNotCallingCallbacks();
                this.stateVerifier.throwIfRecycled();
                this.startTime = LogTime.getLogTime();
                Object obj = this.model;
                if (obj == null) {
                    if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
                        this.width = this.overrideWidth;
                        this.height = this.overrideHeight;
                    }
                    onLoadFailed(new GlideException("Received null model"), getFallbackDrawable() == null ? 5 : 3);
                    return;
                }
                Status status = this.status;
                Status status2 = Status.RUNNING;
                if (status == status2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (status == Status.COMPLETE) {
                    onResourceReady(this.resource, DataSource.MEMORY_CACHE, false);
                    return;
                }
                experimentalNotifyRequestStarted(obj);
                this.cookie = GlideTrace.beginSectionAsync(TAG);
                Status status3 = Status.WAITING_FOR_SIZE;
                this.status = status3;
                if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
                    onSizeReady(this.overrideWidth, this.overrideHeight);
                } else {
                    this.target.getSize(this);
                }
                Status status4 = this.status;
                if ((status4 == status2 || status4 == status3) && canNotifyStatusChanged()) {
                    this.target.onLoadStarted(getPlaceholderDrawable());
                }
                if (IS_VERBOSE_LOGGABLE) {
                    logV("finished run method in " + LogTime.getElapsedMillis(this.startTime));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.requestLock) {
            try {
                assertNotCallingCallbacks();
                this.stateVerifier.throwIfRecycled();
                Status status = this.status;
                Status status2 = Status.CLEARED;
                if (status == status2) {
                    return;
                }
                cancel();
                Resource<R> resource = this.resource;
                if (resource != null) {
                    this.resource = null;
                } else {
                    resource = null;
                }
                if (canNotifyCleared()) {
                    this.target.onLoadCleared(getPlaceholderDrawable());
                }
                GlideTrace.endSectionAsync(TAG, this.cookie);
                this.status = status2;
                if (resource != null) {
                    this.engine.release(resource);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public Object getLock() {
        this.stateVerifier.throwIfRecycled();
        return this.requestLock;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z10;
        synchronized (this.requestLock) {
            z10 = this.status == Status.COMPLETE;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z10;
        synchronized (this.requestLock) {
            z10 = this.status == Status.CLEARED;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z10;
        synchronized (this.requestLock) {
            z10 = this.status == Status.COMPLETE;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        int i11;
        int i12;
        Object obj;
        Class<R> cls;
        BaseRequestOptions<?> baseRequestOptions;
        Priority priority;
        int size;
        int i13;
        int i14;
        Object obj2;
        Class<R> cls2;
        BaseRequestOptions<?> baseRequestOptions2;
        Priority priority2;
        int size2;
        if (!(request instanceof SingleRequest)) {
            return false;
        }
        synchronized (this.requestLock) {
            try {
                i11 = this.overrideWidth;
                i12 = this.overrideHeight;
                obj = this.model;
                cls = this.transcodeClass;
                baseRequestOptions = this.requestOptions;
                priority = this.priority;
                List<RequestListener<R>> list = this.requestListeners;
                size = list != null ? list.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        SingleRequest singleRequest = (SingleRequest) request;
        synchronized (singleRequest.requestLock) {
            try {
                i13 = singleRequest.overrideWidth;
                i14 = singleRequest.overrideHeight;
                obj2 = singleRequest.model;
                cls2 = singleRequest.transcodeClass;
                baseRequestOptions2 = singleRequest.requestOptions;
                priority2 = singleRequest.priority;
                List<RequestListener<R>> list2 = singleRequest.requestListeners;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return i11 == i13 && i12 == i14 && Util.bothModelsNullEquivalentOrEquals(obj, obj2) && cls.equals(cls2) && Util.bothBaseRequestOptionsNullEquivalentOrEquals(baseRequestOptions, baseRequestOptions2) && priority == priority2 && size == size2;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z10;
        synchronized (this.requestLock) {
            try {
                Status status = this.status;
                z10 = status == Status.RUNNING || status == Status.WAITING_FOR_SIZE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void onLoadFailed(GlideException glideException) {
        onLoadFailed(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void onResourceReady(Resource<?> resource, DataSource dataSource, boolean z10) {
        this.stateVerifier.throwIfRecycled();
        Resource<?> resource2 = null;
        try {
            synchronized (this.requestLock) {
                try {
                    this.loadStatus = null;
                    if (resource == null) {
                        onLoadFailed(new GlideException("Expected to receive a Resource<R> with an object of " + this.transcodeClass + " inside, but instead got null."));
                        return;
                    }
                    Object obj = resource.get();
                    try {
                        if (obj != null && this.transcodeClass.isAssignableFrom(obj.getClass())) {
                            if (canSetResource()) {
                                onResourceReady(resource, obj, dataSource, z10);
                                return;
                            }
                            this.resource = null;
                            this.status = Status.COMPLETE;
                            GlideTrace.endSectionAsync(TAG, this.cookie);
                            this.engine.release(resource);
                            return;
                        }
                        this.resource = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append(this.transcodeClass);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(resource);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        onLoadFailed(new GlideException(sb2.toString()));
                        this.engine.release(resource);
                    } catch (Throwable th2) {
                        resource2 = resource;
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            if (resource2 != null) {
                this.engine.release(resource2);
            }
            throw th4;
        }
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i11, int i12) throws Throwable {
        Object obj;
        this.stateVerifier.throwIfRecycled();
        Object obj2 = this.requestLock;
        synchronized (obj2) {
            try {
                try {
                    boolean z10 = IS_VERBOSE_LOGGABLE;
                    if (z10) {
                        logV("Got onSizeReady in " + LogTime.getElapsedMillis(this.startTime));
                    }
                    if (this.status == Status.WAITING_FOR_SIZE) {
                        Status status = Status.RUNNING;
                        this.status = status;
                        float sizeMultiplier = this.requestOptions.getSizeMultiplier();
                        this.width = maybeApplySizeMultiplier(i11, sizeMultiplier);
                        this.height = maybeApplySizeMultiplier(i12, sizeMultiplier);
                        if (z10) {
                            logV("finished setup for calling load in " + LogTime.getElapsedMillis(this.startTime));
                        }
                        obj = obj2;
                        try {
                            this.loadStatus = this.engine.load(this.glideContext, this.model, this.requestOptions.getSignature(), this.width, this.height, this.requestOptions.getResourceClass(), this.transcodeClass, this.priority, this.requestOptions.getDiskCacheStrategy(), this.requestOptions.getTransformations(), this.requestOptions.isTransformationRequired(), this.requestOptions.isScaleOnlyOrNoTransform(), this.requestOptions.getOptions(), this.requestOptions.isMemoryCacheable(), this.requestOptions.getUseUnlimitedSourceGeneratorsPool(), this.requestOptions.getUseAnimationPool(), this.requestOptions.getOnlyRetrieveFromCache(), this, this.callbackExecutor);
                            if (this.status != status) {
                                this.loadStatus = null;
                            }
                            if (z10) {
                                logV("finished onSizeReady in " + LogTime.getElapsedMillis(this.startTime));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.requestLock) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.requestLock) {
            obj = this.model;
            cls = this.transcodeClass;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
