package com.bykv.vk.openvk.preload.b;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class i implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f20556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<h> f20558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f20559d;

    static final class a extends Exception {
        a(Throwable th2) {
            super(th2);
        }
    }

    i(List<h> list, int i11, e eVar, d dVar) {
        this.f20558c = list;
        this.f20557b = i11;
        this.f20556a = eVar;
        this.f20559d = dVar;
    }

    private d c(Class cls) {
        d dVar = this.f20559d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.f20538a;
        }
        return dVar;
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.f20539b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Object obj) throws Exception {
        d dVar = this.f20559d;
        if (dVar != null) {
            dVar.f20540c = obj;
            dVar.e();
        }
        if (this.f20557b >= this.f20558c.size()) {
            return obj;
        }
        h hVar = this.f20558c.get(this.f20557b);
        Class<? extends d> cls = hVar.f20550a;
        d dVar2 = (d) this.f20556a.a(cls);
        if (dVar2 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
        }
        com.bykv.vk.openvk.preload.b.b.a aVarA = hVar.a();
        i iVar = new i(this.f20558c, this.f20557b + 1, this.f20556a, dVar2);
        dVar2.a(iVar, this.f20559d, obj, aVarA, hVar.b());
        dVar2.c();
        try {
            Object objA = dVar2.a(iVar, obj);
            dVar2.d();
            return objA;
        } catch (a e11) {
            dVar2.c(e11.getCause());
            throw e11;
        } catch (Throwable th2) {
            dVar2.b(th2);
            throw new a(th2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object b(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.f20540c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}
