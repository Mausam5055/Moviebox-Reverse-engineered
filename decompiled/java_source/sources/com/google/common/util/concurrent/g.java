package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final q f31027c = new q(g.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f31028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f31029b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f31030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f31031b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        a f31032c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.f31030a = runnable;
            this.f31031b = executor;
            this.f31032c = aVar;
        }
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e11) {
            f31027c.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e11);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        com.google.common.base.m.p(runnable, "Runnable was null.");
        com.google.common.base.m.p(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (this.f31029b) {
                    c(runnable, executor);
                } else {
                    this.f31028a = new a(runnable, executor, this.f31028a);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        synchronized (this) {
            try {
                if (this.f31029b) {
                    return;
                }
                this.f31029b = true;
                a aVar = this.f31028a;
                a aVar2 = null;
                this.f31028a = null;
                while (aVar != null) {
                    a aVar3 = aVar.f31032c;
                    aVar.f31032c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    c(aVar2.f31030a, aVar2.f31031b);
                    aVar2 = aVar2.f31032c;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
