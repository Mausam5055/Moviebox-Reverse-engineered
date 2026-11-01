package com.bytedance.adsdk.sP;

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

/* JADX INFO: loaded from: classes2.dex */
public class Fmk<T> {
    public static Executor Sj = Executors.newCachedThreadPool();
    private final Handler EjP;
    private volatile aa<T> HiB;
    private final Set<Ym<Throwable>> TKC;
    private final Set<Ym<T>> sP;

    private class Sj extends FutureTask<aa<T>> {
        Sj(Callable<aa<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                Fmk.this.Sj((aa) get());
            } catch (InterruptedException | ExecutionException e11) {
                Fmk.this.Sj(new aa(e11));
            }
        }
    }

    public Fmk(Callable<aa<T>> callable) {
        this(callable, false);
    }

    Fmk(Callable<aa<T>> callable, boolean z10) {
        this.sP = new LinkedHashSet(1);
        this.TKC = new LinkedHashSet(1);
        this.EjP = new Handler(Looper.getMainLooper());
        this.HiB = null;
        if (!z10) {
            Sj.execute(new Sj(callable));
            return;
        }
        try {
            Sj((aa) callable.call());
        } catch (Throwable th2) {
            Sj((aa) new aa<>(th2));
        }
    }

    private void Sj() {
        this.EjP.post(new Runnable() { // from class: com.bytedance.adsdk.sP.Fmk.1
            @Override // java.lang.Runnable
            public void run() {
                aa aaVar = Fmk.this.HiB;
                if (aaVar == null) {
                    return;
                }
                if (aaVar.Sj() != null) {
                    Fmk.this.Sj(aaVar.Sj());
                } else {
                    Fmk.this.Sj(aaVar.sP());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(aa<T> aaVar) {
        if (this.HiB != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.HiB = aaVar;
        Sj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Sj(T t11) {
        Iterator it = new ArrayList(this.sP).iterator();
        while (it.hasNext()) {
            ((Ym) it.next()).Sj(t11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Sj(Throwable th2) {
        ArrayList arrayList = new ArrayList(this.TKC);
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Ym) it.next()).Sj(th2);
        }
    }

    public synchronized Fmk<T> EjP(Ym<Throwable> ym2) {
        this.TKC.remove(ym2);
        return this;
    }

    public synchronized Fmk<T> Sj(Ym<T> ym2) {
        try {
            aa<T> aaVar = this.HiB;
            if (aaVar != null && aaVar.Sj() != null) {
                ym2.Sj(aaVar.Sj());
            }
            this.sP.add(ym2);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized Fmk<T> TKC(Ym<Throwable> ym2) {
        try {
            aa<T> aaVar = this.HiB;
            if (aaVar != null && aaVar.sP() != null) {
                ym2.Sj(aaVar.sP());
            }
            this.TKC.add(ym2);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized Fmk<T> sP(Ym<T> ym2) {
        this.sP.remove(ym2);
        return this;
    }
}
