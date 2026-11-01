package y8;

import java.util.concurrent.Executor;
import z8.u;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f78938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f78939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f78940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f78941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final uz.a f78942e;

    public d(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        this.f78938a = aVar;
        this.f78939b = aVar2;
        this.f78940c = aVar3;
        this.f78941d = aVar4;
        this.f78942e = aVar5;
    }

    public static d a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, t8.d dVar, u uVar, a9.d dVar2, b9.a aVar) {
        return new c(executor, dVar, uVar, dVar2, aVar);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c get() {
        return c((Executor) this.f78938a.get(), (t8.d) this.f78939b.get(), (u) this.f78940c.get(), (a9.d) this.f78941d.get(), (b9.a) this.f78942e.get());
    }
}
