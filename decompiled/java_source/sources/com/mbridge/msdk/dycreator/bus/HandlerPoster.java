package com.mbridge.msdk.dycreator.bus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
final class HandlerPoster extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PendingPostQueue f34799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EventBus f34801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34802d;

    HandlerPoster(EventBus eventBus, Looper looper, int i11) {
        super(looper);
        this.f34801c = eventBus;
        this.f34800b = i11;
        this.f34799a = new PendingPostQueue();
    }

    void a(Subscription subscription, Object obj) {
        PendingPost pendingPostA = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f34799a.a(pendingPostA);
                if (!this.f34802d) {
                    this.f34802d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new EventBusException("Could not send handler message");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                PendingPost pendingPostA = this.f34799a.a();
                if (pendingPostA == null) {
                    synchronized (this) {
                        pendingPostA = this.f34799a.a();
                        if (pendingPostA == null) {
                            this.f34802d = false;
                            return;
                        }
                    }
                }
                this.f34801c.a(pendingPostA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f34800b);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.f34802d = true;
        } catch (Throwable th2) {
            this.f34802d = false;
            throw th2;
        }
    }
}
