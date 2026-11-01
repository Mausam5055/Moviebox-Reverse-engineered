package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HandlerThread f19844a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Handler f19847d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Queue<c> f19845b = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Queue<Message> f19846c = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f19848e = new Object();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            while (!p.this.f19846c.isEmpty()) {
                if (p.this.f19847d != null) {
                    try {
                        p.this.f19847d.sendMessageAtFrontOfQueue((Message) p.this.f19846c.poll());
                    } catch (Throwable unused) {
                    }
                }
            }
            while (!p.this.f19845b.isEmpty()) {
                c cVar = (c) p.this.f19845b.poll();
                if (p.this.f19847d != null) {
                    try {
                        p.this.f19847d.sendMessageAtTime(cVar.f19853a, cVar.f19854b);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
    }

    class b extends HandlerThread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile int f19850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile boolean f19851b;

        b(String str) {
            super(str);
            this.f19850a = 0;
            this.f19851b = false;
        }

        /* JADX INFO: Infinite loop detected, blocks: 19, insns: 0 */
        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            super.onLooperPrepared();
            synchronized (p.this.f19848e) {
                try {
                    p.this.f19847d = new Handler();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            p.this.f19847d.post(p.this.new a());
            while (true) {
                try {
                    Looper.loop();
                } catch (Throwable th3) {
                    try {
                        com.apm.insight.b.f.a(com.apm.insight.e.g()).a().c();
                        if (this.f19850a < 5) {
                            com.apm.insight.c.a();
                            j.a(th3, "NPTH_CATCH");
                        } else if (!this.f19851b) {
                            this.f19851b = true;
                            com.apm.insight.c.a();
                            j.a(new RuntimeException(), "NPTH_ERR_MAX");
                        }
                        this.f19850a++;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Message f19853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f19854b;

        c(Message message, long j11) {
            this.f19853a = message;
            this.f19854b = j11;
        }
    }

    static {
        new Object() { // from class: com.apm.insight.runtime.p.1
        };
        new Object() { // from class: com.apm.insight.runtime.p.2
        };
    }

    public p(String str) {
        this.f19844a = new b(str);
    }

    private boolean a(Message message, long j11) {
        if (j11 < 0) {
            j11 = 0;
        }
        return b(message, SystemClock.uptimeMillis() + j11);
    }

    private Message b(Runnable runnable) {
        return Message.obtain(this.f19847d, runnable);
    }

    private boolean b(Message message, long j11) {
        if (this.f19847d == null) {
            synchronized (this.f19848e) {
                try {
                    if (this.f19847d == null) {
                        this.f19845b.add(new c(message, j11));
                        return true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        try {
            return this.f19847d.sendMessageAtTime(message, j11);
        } catch (Throwable unused) {
            return true;
        }
    }

    @Nullable
    public final Handler a() {
        return this.f19847d;
    }

    public final boolean a(Runnable runnable) {
        return a(b(runnable), 0L);
    }

    public final boolean a(Runnable runnable, long j11) {
        return a(b(runnable), j11);
    }

    public final void b() {
        this.f19844a.start();
    }

    public final HandlerThread c() {
        return this.f19844a;
    }
}
