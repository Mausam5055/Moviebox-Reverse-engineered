package a9;

/* JADX INFO: loaded from: classes3.dex */
public final class n0 implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final uz.a f431e;

    public n0(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        this.f427a = aVar;
        this.f428b = aVar2;
        this.f429c = aVar3;
        this.f430d = aVar4;
        this.f431e = aVar5;
    }

    public static n0 a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(c9.a aVar, c9.a aVar2, Object obj, Object obj2, uz.a aVar3) {
        return new m0(aVar, aVar2, (e) obj, (v0) obj2, aVar3);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m0 get() {
        return c((c9.a) this.f427a.get(), (c9.a) this.f428b.get(), this.f429c.get(), this.f430d.get(), this.f431e);
    }
}
