package k0;

/* JADX INFO: loaded from: classes2.dex */
final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e1 f66495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66496b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f66497c;

    public c0(e1 e1Var) {
        this.f66495a = e1Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    private final float a(int i11, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        int i12 = 1;
        if (z10) {
            int iA = e0.a(this.f66495a.h(), i11, z10);
            int iU = this.f66495a.u(iA);
            int iO = this.f66495a.o(iA);
            if (i11 == iU || i11 == iO) {
                z13 = true;
            } else {
                z13 = false;
            }
        } else {
            z13 = false;
        }
        int i13 = i11 * 4;
        if (!z12) {
            i12 = z13 ? 2 : 3;
        } else if (z13) {
            i12 = 0;
        }
        int i14 = i13 + i12;
        if (this.f66496b == i14) {
            return this.f66497c;
        }
        float fY = z12 ? this.f66495a.y(i11, z10) : this.f66495a.A(i11, z10);
        if (z11) {
            this.f66496b = i14;
            this.f66497c = fY;
        }
        return fY;
    }

    public final float b(int i11) {
        return a(i11, false, false, true);
    }

    public final float c(int i11) {
        return a(i11, true, true, true);
    }

    public final float d(int i11) {
        return a(i11, false, false, false);
    }

    public final float e(int i11) {
        return a(i11, true, true, false);
    }
}
