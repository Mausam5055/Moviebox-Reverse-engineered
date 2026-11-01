package z8;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class t implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f79358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f79359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f79360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f79361d;

    public t(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4) {
        this.f79358a = aVar;
        this.f79359b = aVar2;
        this.f79360c = aVar3;
        this.f79361d = aVar4;
    }

    public static t a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4) {
        return new t(aVar, aVar2, aVar3, aVar4);
    }

    public static s c(Executor executor, a9.d dVar, u uVar, b9.a aVar) {
        return new s(executor, dVar, uVar, aVar);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public s get() {
        return c((Executor) this.f79358a.get(), (a9.d) this.f79359b.get(), (u) this.f79360c.get(), (b9.a) this.f79361d.get());
    }
}
