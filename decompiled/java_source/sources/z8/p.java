package z8;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class p implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f79343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f79344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f79345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f79346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final uz.a f79347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final uz.a f79348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final uz.a f79349g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final uz.a f79350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final uz.a f79351i;

    public p(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5, uz.a aVar6, uz.a aVar7, uz.a aVar8, uz.a aVar9) {
        this.f79343a = aVar;
        this.f79344b = aVar2;
        this.f79345c = aVar3;
        this.f79346d = aVar4;
        this.f79347e = aVar5;
        this.f79348f = aVar6;
        this.f79349g = aVar7;
        this.f79350h = aVar8;
        this.f79351i = aVar9;
    }

    public static p a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5, uz.a aVar6, uz.a aVar7, uz.a aVar8, uz.a aVar9) {
        return new p(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static o c(Context context, t8.d dVar, a9.d dVar2, u uVar, Executor executor, b9.a aVar, c9.a aVar2, c9.a aVar3, a9.c cVar) {
        return new o(context, dVar, dVar2, uVar, executor, aVar, aVar2, aVar3, cVar);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public o get() {
        return c((Context) this.f79343a.get(), (t8.d) this.f79344b.get(), (a9.d) this.f79345c.get(), (u) this.f79346d.get(), (Executor) this.f79347e.get(), (b9.a) this.f79348f.get(), (c9.a) this.f79349g.get(), (c9.a) this.f79350h.get(), (a9.c) this.f79351i.get());
    }
}
