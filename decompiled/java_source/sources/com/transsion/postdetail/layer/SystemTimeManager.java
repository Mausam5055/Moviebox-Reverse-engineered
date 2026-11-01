package com.transsion.postdetail.layer;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes6.dex */
public final class SystemTimeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f48888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f48889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f48890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HandlerThread f48891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f48892e;

    public interface a {
        long a();
    }

    public SystemTimeManager(a aVar) {
        HandlerThread handlerThread = new HandlerThread("SystemTimeManager");
        this.f48891d = handlerThread;
        this.f48892e = new Runnable() { // from class: com.transsion.postdetail.layer.SystemTimeManager$mTrackingRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.f48889b == null) {
                    this.this$0.e();
                    return;
                }
                SystemTimeManager.a aVar2 = this.this$0.f48889b;
                Long lValueOf = aVar2 != null ? Long.valueOf(aVar2.a()) : null;
                if (lValueOf != null) {
                    if (lValueOf.longValue() <= 0) {
                        this.this$0.e();
                        return;
                    }
                    Handler handler = this.this$0.f48888a;
                    if (handler != null) {
                        handler.postDelayed(this, lValueOf.longValue());
                    }
                }
            }
        };
        handlerThread.start();
        this.f48888a = new Handler(handlerThread.getLooper());
        this.f48889b = aVar;
    }

    public final void c() {
        e();
        this.f48890c = false;
        Handler handler = this.f48888a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f48888a = null;
        this.f48889b = null;
        this.f48891d.quitSafely();
    }

    public final void d() {
        if (this.f48890c) {
            return;
        }
        this.f48890c = true;
        Handler handler = this.f48888a;
        if (handler != null) {
            handler.removeCallbacks(this.f48892e);
        }
        Handler handler2 = this.f48888a;
        if (handler2 != null) {
            handler2.post(this.f48892e);
        }
    }

    public final void e() {
        if (this.f48890c) {
            this.f48890c = false;
            Handler handler = this.f48888a;
            if (handler != null) {
                handler.removeCallbacks(this.f48892e);
            }
        }
    }
}
