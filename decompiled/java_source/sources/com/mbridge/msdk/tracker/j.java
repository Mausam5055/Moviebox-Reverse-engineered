package com.mbridge.msdk.tracker;

import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile ThreadPoolExecutor f38526a;

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeTrackThread");
        }
    }

    private static final class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Runnable f38528a;

        public b(Runnable runnable) {
            this.f38528a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y.b(this.f38528a)) {
                return;
            }
            try {
                this.f38528a.run();
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    Log.e("TrackManager", "execute error", e11);
                }
            }
        }
    }

    private ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public void a(Runnable runnable) {
        if (this.f38526a == null) {
            this.f38526a = a();
        }
        if (this.f38526a.isShutdown()) {
            return;
        }
        this.f38526a.execute(new b(runnable));
    }
}
