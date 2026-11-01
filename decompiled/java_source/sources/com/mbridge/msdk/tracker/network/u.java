package com.mbridge.msdk.tracker.network;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile ThreadPoolExecutor f38679a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f38683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.mbridge.msdk.tracker.network.b f38684f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m f38685g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final w f38686h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f38680b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<t<?>> f38681c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<t<?>> f38682d = new PriorityBlockingQueue<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<c> f38687i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38688j = false;

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "NetworkDispatcher");
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                new n(u.this.f38682d, u.this.f38685g, u.this.f38684f, u.this.f38686h).run();
            } catch (Throwable unused) {
            }
        }
    }

    public interface c {
        void a(t<?> tVar, int i11);
    }

    public u(m mVar, w wVar, int i11, com.mbridge.msdk.tracker.network.b bVar) {
        this.f38683e = i11;
        this.f38684f = bVar;
        this.f38685g = mVar;
        this.f38686h = wVar;
    }

    private void a(int i11) {
        if (this.f38679a != null) {
            return;
        }
        try {
            b(i11);
        } catch (Throwable unused) {
            try {
                b(5);
            } catch (Exception unused2) {
                this.f38679a = null;
            }
        }
    }

    private void b(int i11) {
        this.f38679a = new ThreadPoolExecutor(i11, i11, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public int a() {
        return this.f38680b.incrementAndGet();
    }

    public <T> t<T> a(t<T> tVar) {
        tVar.a(this);
        synchronized (this.f38681c) {
            this.f38681c.add(tVar);
        }
        tVar.b(a());
        tVar.a("add-to-queue");
        a(tVar, 0);
        b(tVar);
        if (this.f38679a == null) {
            a(this.f38683e);
        }
        if (!this.f38679a.isShutdown()) {
            this.f38679a.execute(new b());
        }
        return tVar;
    }

    void a(t<?> tVar, int i11) {
        synchronized (this.f38687i) {
            try {
                Iterator<c> it = this.f38687i.iterator();
                while (it.hasNext()) {
                    it.next().a(tVar, i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        if (!this.f38688j || this.f38679a == null) {
            a(this.f38683e);
            this.f38688j = true;
        }
    }

    <T> void b(t<T> tVar) {
        d(tVar);
    }

    <T> void c(t<T> tVar) {
        synchronized (this.f38681c) {
            this.f38681c.remove(tVar);
        }
        a(tVar, 5);
    }

    <T> void d(t<T> tVar) {
        this.f38682d.add(tVar);
    }
}
