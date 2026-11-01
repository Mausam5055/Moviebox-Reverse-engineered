package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.base.m;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CronetEngine f21494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f21495b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f21496c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f21497d;

    h(CronetEngine cronetEngine, Class cls) {
        this.f21494a = (CronetEngine) m.o(cronetEngine);
        m.d(getClass().equals(cls));
        this.f21497d = this;
    }

    public Object a() {
        if (this.f21496c == null) {
            this.f21496c = c.a();
        }
        return b(new g(this.f21494a, Executors.newFixedThreadPool(this.f21495b), e.b(Executors.newCachedThreadPool()), new i(), this.f21496c));
    }

    abstract Object b(g gVar);
}
