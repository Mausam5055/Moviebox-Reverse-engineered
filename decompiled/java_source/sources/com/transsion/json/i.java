package com.transsion.json;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f46073a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f46074b = new HashMap();

    private m a() {
        m mVar = new m();
        for (Class cls : this.f46073a.keySet()) {
            mVar.b(cls, (o) this.f46073a.get(cls));
        }
        for (q qVar : this.f46074b.keySet()) {
            mVar.a(qVar, (o) this.f46074b.get(qVar));
        }
        return mVar;
    }

    public Object b(String str, Class cls) {
        return a().j(new l(str).j(), cls);
    }
}
