package com.bykv.vk.openvk.preload.b;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<IN, OUT> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicLong f20537d = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d f20538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    IN f20539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    OUT f20540c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.b.b.a f20541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f20542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f20543g;

    public abstract Object a(b<OUT> bVar, IN in2) throws Throwable;

    final void a(b bVar, d dVar, IN in2, com.bykv.vk.openvk.preload.b.b.a aVar, Object[] objArr) {
        this.f20542f = new m(bVar);
        this.f20538a = dVar;
        this.f20539b = in2;
        this.f20541e = aVar;
        if (dVar != null) {
            this.f20543g = dVar.f20543g;
        } else {
            long andIncrement = f20537d.getAndIncrement();
            this.f20543g = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        a(objArr);
    }

    protected void a(Object... objArr) {
    }

    public final long b() {
        return this.f20543g;
    }

    final void b(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f20542f, this, th2);
    }

    final void c() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f20542f, this);
    }

    final void c(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f20542f, this, th2);
    }

    final void d() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f20542f, this);
    }

    protected final void d(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f20542f, this, th2);
    }

    final void e() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f20541e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f20542f, this);
    }

    public final OUT f() {
        return this.f20540c;
    }
}
