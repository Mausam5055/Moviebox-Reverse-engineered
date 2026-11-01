package o0;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class d {
    public static int a(e eVar, float f11) {
        float fE0 = eVar.E0(f11);
        if (Float.isInfinite(fE0)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(fE0);
    }

    public static float b(e eVar, float f11) {
        return i.g(f11 / eVar.getDensity());
    }

    public static float c(e eVar, int i11) {
        return i.g(i11 / eVar.getDensity());
    }

    public static float d(e eVar, long j11) {
        if (y.g(w.g(j11), y.f70632b.b())) {
            return eVar.E0(eVar.J(j11));
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    public static float e(e eVar, float f11) {
        return f11 * eVar.getDensity();
    }

    public static long f(e eVar, long j11) {
        return j11 != 9205357640488583168L ? y.n.a(eVar.E0(l.d(j11)), eVar.E0(l.c(j11))) : y.m.f78491b.a();
    }

    public static long g(e eVar, float f11) {
        return eVar.H(eVar.y0(f11));
    }
}
