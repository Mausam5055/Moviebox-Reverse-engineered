package y;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public static final k a(float f11, float f12, float f13, float f14, float f15, float f16) {
        long jA = b.a(f15, f16);
        return new k(f11, f12, f13, f14, jA, jA, jA, jA, null);
    }

    public static final k b(i iVar, long j11, long j12, long j13, long j14) {
        return new k(iVar.f(), iVar.i(), iVar.g(), iVar.c(), j11, j12, j13, j14, null);
    }

    public static final k c(float f11, float f12, float f13, float f14, long j11) {
        return a(f11, f12, f13, f14, a.d(j11), a.e(j11));
    }

    public static final i d(k kVar) {
        return new i(kVar.e(), kVar.g(), kVar.f(), kVar.a());
    }

    public static final boolean e(k kVar) {
        return a.d(kVar.h()) == a.e(kVar.h()) && a.d(kVar.h()) == a.d(kVar.i()) && a.d(kVar.h()) == a.e(kVar.i()) && a.d(kVar.h()) == a.d(kVar.c()) && a.d(kVar.h()) == a.e(kVar.c()) && a.d(kVar.h()) == a.d(kVar.b()) && a.d(kVar.h()) == a.e(kVar.b());
    }
}
