package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
final class ActiveResources {
    final Map<Key, ResourceWeakReference> activeEngineResources;

    /* JADX INFO: renamed from: cb, reason: collision with root package name */
    @Nullable
    private volatile DequeuedResourceCallback f20142cb;
    private final boolean isActiveResourceRetentionAllowed;
    private volatile boolean isShutdown;
    private EngineResource.ResourceListener listener;
    private final Executor monitorClearedResourcesExecutor;
    private final ReferenceQueue<EngineResource<?>> resourceReferenceQueue;

    /* JADX INFO: loaded from: classes2.dex */
    interface DequeuedResourceCallback {
        void onResourceDequeued();
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class ResourceWeakReference extends WeakReference<EngineResource<?>> {
        final boolean isCacheable;
        final Key key;

        @Nullable
        Resource<?> resource;

        ResourceWeakReference(@NonNull Key key, @NonNull EngineResource<?> engineResource, @NonNull ReferenceQueue<? super EngineResource<?>> referenceQueue, boolean z10) {
            super(engineResource, referenceQueue);
            this.key = (Key) Preconditions.checkNotNull(key);
            this.resource = (engineResource.isMemoryCacheable() && z10) ? (Resource) Preconditions.checkNotNull(engineResource.getResource()) : null;
            this.isCacheable = engineResource.isMemoryCacheable();
        }

        void reset() {
            this.resource = null;
            clear();
        }
    }

    ActiveResources(boolean z10) {
        this(z10, Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.bumptech.glide.load.engine.ActiveResources.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull final Runnable runnable) {
                return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Process.setThreadPriority(10);
                        runnable.run();
                    }
                }, "glide-active-resources");
            }
        }));
    }

    ActiveResources(boolean z10, Executor executor) {
        this.activeEngineResources = new HashMap();
        this.resourceReferenceQueue = new ReferenceQueue<>();
        this.isActiveResourceRetentionAllowed = z10;
        this.monitorClearedResourcesExecutor = executor;
        executor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.2
            @Override // java.lang.Runnable
            public void run() {
                ActiveResources.this.cleanReferenceQueue();
            }
        });
    }

    synchronized void activate(Key key, EngineResource<?> engineResource) {
        ResourceWeakReference resourceWeakReferencePut = this.activeEngineResources.put(key, new ResourceWeakReference(key, engineResource, this.resourceReferenceQueue, this.isActiveResourceRetentionAllowed));
        if (resourceWeakReferencePut != null) {
            resourceWeakReferencePut.reset();
        }
    }

    void cleanReferenceQueue() {
        while (!this.isShutdown) {
            try {
                cleanupActiveReference((ResourceWeakReference) this.resourceReferenceQueue.remove());
                DequeuedResourceCallback dequeuedResourceCallback = this.f20142cb;
                if (dequeuedResourceCallback != null) {
                    dequeuedResourceCallback.onResourceDequeued();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    void cleanupActiveReference(@NonNull ResourceWeakReference resourceWeakReference) {
        Resource<?> resource;
        synchronized (this) {
            this.activeEngineResources.remove(resourceWeakReference.key);
            if (resourceWeakReference.isCacheable && (resource = resourceWeakReference.resource) != null) {
                this.listener.onResourceReleased(resourceWeakReference.key, new EngineResource<>(resource, true, false, resourceWeakReference.key, this.listener));
            }
        }
    }

    synchronized void deactivate(Key key) {
        ResourceWeakReference resourceWeakReferenceRemove = this.activeEngineResources.remove(key);
        if (resourceWeakReferenceRemove != null) {
            resourceWeakReferenceRemove.reset();
        }
    }

    @Nullable
    synchronized EngineResource<?> get(Key key) {
        ResourceWeakReference resourceWeakReference = this.activeEngineResources.get(key);
        if (resourceWeakReference == null) {
            return null;
        }
        EngineResource<?> engineResource = resourceWeakReference.get();
        if (engineResource == null) {
            cleanupActiveReference(resourceWeakReference);
        }
        return engineResource;
    }

    void setDequeuedResourceCallback(DequeuedResourceCallback dequeuedResourceCallback) {
        this.f20142cb = dequeuedResourceCallback;
    }

    void setListener(EngineResource.ResourceListener resourceListener) {
        synchronized (resourceListener) {
            synchronized (this) {
                this.listener = resourceListener;
            }
        }
    }

    void shutdown() {
        this.isShutdown = true;
        Executor executor = this.monitorClearedResourcesExecutor;
        if (executor instanceof ExecutorService) {
            com.bumptech.glide.util.Executors.shutdownAndAwaitTermination((ExecutorService) executor);
        }
    }
}
