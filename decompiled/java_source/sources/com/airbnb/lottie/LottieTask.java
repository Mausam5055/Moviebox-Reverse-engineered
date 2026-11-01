package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class LottieTask {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Executor f17693e = Executors.newCachedThreadPool(new v4.g());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f17694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f17695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f17696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile q0 f17697d;

    private static class LottieFutureTask<T> extends FutureTask<q0> {
        private LottieTask lottieTask;

        LottieFutureTask(LottieTask lottieTask, Callable<q0> callable) {
            super(callable);
            this.lottieTask = lottieTask;
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                if (isCancelled()) {
                    return;
                }
                try {
                    this.lottieTask.l(get());
                } catch (InterruptedException | ExecutionException e11) {
                    this.lottieTask.l(new q0(e11));
                }
            } finally {
                this.lottieTask = null;
            }
        }
    }

    public LottieTask(Object obj) {
        this.f17694a = new LinkedHashSet(1);
        this.f17695b = new LinkedHashSet(1);
        this.f17696c = new Handler(Looper.getMainLooper());
        this.f17697d = null;
        l(new q0(obj));
    }

    public LottieTask(Callable callable) {
        this(callable, false);
    }

    LottieTask(Callable callable, boolean z10) {
        this.f17694a = new LinkedHashSet(1);
        this.f17695b = new LinkedHashSet(1);
        this.f17696c = new Handler(Looper.getMainLooper());
        this.f17697d = null;
        if (!z10) {
            f17693e.execute(new LottieFutureTask(this, callable));
            return;
        }
        try {
            l((q0) callable.call());
        } catch (Throwable th2) {
            l(new q0(th2));
        }
    }

    private synchronized void f(Throwable th2) {
        ArrayList arrayList = new ArrayList(this.f17695b);
        if (arrayList.isEmpty()) {
            v4.f.d("Lottie encountered an error but no failure listener was added:", th2);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((m0) it.next()).onResult(th2);
        }
    }

    private void g() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            h();
        } else {
            this.f17696c.post(new Runnable() { // from class: com.airbnb.lottie.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f17959a.h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        q0 q0Var = this.f17697d;
        if (q0Var == null) {
            return;
        }
        if (q0Var.b() != null) {
            i(q0Var.b());
        } else {
            f(q0Var.a());
        }
    }

    private synchronized void i(Object obj) {
        Iterator it = new ArrayList(this.f17694a).iterator();
        while (it.hasNext()) {
            ((m0) it.next()).onResult(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(q0 q0Var) {
        if (this.f17697d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f17697d = q0Var;
        g();
    }

    public synchronized LottieTask c(m0 m0Var) {
        try {
            q0 q0Var = this.f17697d;
            if (q0Var != null && q0Var.a() != null) {
                m0Var.onResult(q0Var.a());
            }
            this.f17695b.add(m0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized LottieTask d(m0 m0Var) {
        try {
            q0 q0Var = this.f17697d;
            if (q0Var != null && q0Var.b() != null) {
                m0Var.onResult(q0Var.b());
            }
            this.f17694a.add(m0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public q0 e() {
        return this.f17697d;
    }

    public synchronized LottieTask j(m0 m0Var) {
        this.f17695b.remove(m0Var);
        return this;
    }

    public synchronized LottieTask k(m0 m0Var) {
        this.f17694a.remove(m0Var);
        return this;
    }
}
