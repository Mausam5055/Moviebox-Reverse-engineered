package com.mbridge.msdk.thrid.okhttp;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class l {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ boolean f38273h = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f38276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f38277d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38274a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38275b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<v.b> f38278e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Deque<v.b> f38279f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Deque<v> f38280g = new ArrayDeque();

    public l() {
    }

    public l(ExecutorService executorService) {
        this.f38277d = executorService;
    }

    private <T> void a(Deque<T> deque, T t11) {
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t11)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            runnable = this.f38276c;
        }
        if (b() || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int b(v.b bVar) {
        int i11 = 0;
        for (v.b bVar2 : this.f38279f) {
            if (!bVar2.c().f38372f && bVar2.d().equals(bVar.d())) {
                i11++;
            }
        }
        return i11;
    }

    private boolean b() {
        int i11;
        boolean z10;
        if (!f38273h && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<v.b> it = this.f38278e.iterator();
                while (it.hasNext()) {
                    v.b next = it.next();
                    if (this.f38279f.size() >= this.f38274a) {
                        break;
                    }
                    if (b(next) < this.f38275b) {
                        it.remove();
                        arrayList.add(next);
                        this.f38279f.add(next);
                    }
                }
                z10 = c() > 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size = arrayList.size();
        for (i11 = 0; i11 < size; i11++) {
            ((v.b) arrayList.get(i11)).a(a());
        }
        return z10;
    }

    public synchronized ExecutorService a() {
        try {
            if (this.f38277d == null) {
                this.f38277d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Dispatcher", false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f38277d;
    }

    public void a(int i11) {
        if (i11 >= 1) {
            synchronized (this) {
                this.f38274a = i11;
            }
            b();
        } else {
            throw new IllegalArgumentException("max < 1: " + i11);
        }
    }

    void a(v.b bVar) {
        a(this.f38279f, bVar);
    }

    synchronized void a(v vVar) {
        this.f38280g.add(vVar);
    }

    public void b(int i11) {
        if (i11 >= 1) {
            synchronized (this) {
                this.f38275b = i11;
            }
            b();
        } else {
            throw new IllegalArgumentException("max < 1: " + i11);
        }
    }

    void b(v vVar) {
        a(this.f38280g, vVar);
    }

    public synchronized int c() {
        return this.f38279f.size() + this.f38280g.size();
    }
}
