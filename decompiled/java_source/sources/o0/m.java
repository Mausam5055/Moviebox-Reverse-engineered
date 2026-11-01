package o0;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class m {
    public static float a(n nVar, long j11) {
        p0.a aVarB;
        if (!y.g(w.g(j11), y.f70632b.b())) {
            o.b("Only Sp can convert to Px");
        }
        p0.b bVar = p0.b.f72221a;
        if (bVar.f(nVar.C0()) && (aVarB = bVar.b(nVar.C0())) != null) {
            return i.g(aVarB.b(w.h(j11)));
        }
        return i.g(w.h(j11) * nVar.C0());
    }

    public static long b(n nVar, float f11) {
        p0.b bVar = p0.b.f72221a;
        if (!bVar.f(nVar.C0())) {
            return x.b(f11 / nVar.C0());
        }
        p0.a aVarB = bVar.b(nVar.C0());
        return x.b(aVarB != null ? aVarB.a(f11) : f11 / nVar.C0());
    }
}
