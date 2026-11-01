package com.google.net.cronet.okhttptransport;

import com.google.common.base.m;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CronetEngine f32803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32804b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f32805c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f32806d;

    h(CronetEngine cronetEngine, Class cls) {
        this.f32803a = (CronetEngine) m.o(cronetEngine);
        m.d(getClass().equals(cls));
        this.f32806d = this;
    }

    public Object a() {
        if (this.f32805c == null) {
            this.f32805c = c.a();
        }
        return b(new g(this.f32803a, Executors.newFixedThreadPool(this.f32804b), e.b(Executors.newCachedThreadPool()), new i(), this.f32805c));
    }

    abstract Object b(g gVar);
}
