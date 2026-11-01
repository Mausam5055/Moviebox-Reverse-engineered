package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f19240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f19241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue f19242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue f19243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f19244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f19245f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f19246g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final NetworkDispatcher[] f19247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CacheDispatcher f19248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f19249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f19250k;

    public h(c cVar, f fVar) {
        this(cVar, fVar, 4);
    }

    public h(c cVar, f fVar, int i11) {
        this(cVar, fVar, i11, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public h(c cVar, f fVar, int i11, j jVar) {
        this.f19240a = new AtomicInteger();
        this.f19241b = new HashSet();
        this.f19242c = new PriorityBlockingQueue();
        this.f19243d = new PriorityBlockingQueue();
        this.f19249j = new ArrayList();
        this.f19250k = new ArrayList();
        this.f19244e = cVar;
        this.f19245f = fVar;
        this.f19247h = new NetworkDispatcher[i11];
        this.f19246g = jVar;
    }

    public Request a(Request request) {
        request.setRequestQueue(this);
        synchronized (this.f19241b) {
            this.f19241b.add(request);
        }
        request.setSequence(d());
        request.addMarker("add-to-queue");
        e(request, 0);
        b(request);
        return request;
    }

    void b(Request request) {
        if (request.shouldCache()) {
            this.f19242c.add(request);
        } else {
            f(request);
        }
    }

    void c(Request request) {
        synchronized (this.f19241b) {
            this.f19241b.remove(request);
        }
        synchronized (this.f19249j) {
            Iterator it = this.f19249j.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        e(request, 5);
    }

    public int d() {
        return this.f19240a.incrementAndGet();
    }

    void e(Request request, int i11) {
        synchronized (this.f19250k) {
            try {
                Iterator it = this.f19250k.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void f(Request request) {
        this.f19243d.add(request);
    }

    public void g() {
        h();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f19242c, this.f19243d, this.f19244e, this.f19246g);
        this.f19248i = cacheDispatcher;
        cacheDispatcher.start();
        for (int i11 = 0; i11 < this.f19247h.length; i11++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f19243d, this.f19245f, this.f19244e, this.f19246g);
            this.f19247h[i11] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void h() {
        CacheDispatcher cacheDispatcher = this.f19248i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f19247h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
