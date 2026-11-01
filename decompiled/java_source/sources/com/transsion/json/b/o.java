package com.transsion.json.b;

/* JADX INFO: loaded from: classes.dex */
public class o extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final n f46033a;

    public o(n nVar) {
        this.f46033a = nVar;
    }

    @Override // com.transsion.json.b.a, com.transsion.json.b.g
    public Boolean a() {
        n nVar = this.f46033a;
        return Boolean.valueOf((nVar instanceof g) && ((g) nVar).a().booleanValue());
    }

    @Override // com.transsion.json.b.n
    public void a(Object obj) {
        b().t().addFirst(obj);
        this.f46033a.a(obj);
        b().t().removeFirst();
    }
}
