package com.mbridge.msdk.dycreator.bus;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
final class BackgroundPoster implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PendingPostQueue f34776a = new PendingPostQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f34777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EventBus f34778c;

    BackgroundPoster(EventBus eventBus) {
        this.f34778c = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        PendingPost pendingPostA = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f34776a.a(pendingPostA);
                if (!this.f34777b) {
                    this.f34777b = true;
                    EventBus.f34779n.execute(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    PendingPost pendingPostA = this.f34776a.a(1000);
                    if (pendingPostA == null) {
                        synchronized (this) {
                            pendingPostA = this.f34776a.a();
                            if (pendingPostA == null) {
                                this.f34777b = false;
                                this.f34777b = false;
                                return;
                            }
                        }
                    }
                    this.f34778c.a(pendingPostA);
                } catch (InterruptedException e11) {
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e11);
                    this.f34777b = false;
                    return;
                }
            } catch (Throwable th2) {
                this.f34777b = false;
                throw th2;
            }
        }
    }
}
