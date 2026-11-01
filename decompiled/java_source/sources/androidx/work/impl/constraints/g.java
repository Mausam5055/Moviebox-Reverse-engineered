package androidx.work.impl.constraints;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f15618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f15619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f15620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15622e;

    public g(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.f15618a = z10;
        this.f15619b = z11;
        this.f15620c = z12;
        this.f15621d = z13;
        this.f15622e = z14;
    }

    public static /* synthetic */ g b(g gVar, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = gVar.f15618a;
        }
        if ((i11 & 2) != 0) {
            z11 = gVar.f15619b;
        }
        boolean z15 = z11;
        if ((i11 & 4) != 0) {
            z12 = gVar.f15620c;
        }
        boolean z16 = z12;
        if ((i11 & 8) != 0) {
            z13 = gVar.f15621d;
        }
        boolean z17 = z13;
        if ((i11 & 16) != 0) {
            z14 = gVar.f15622e;
        }
        return gVar.a(z10, z15, z16, z17, z14);
    }

    public final g a(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return new g(z10, z11, z12, z13, z14);
    }

    public final boolean c() {
        return this.f15622e;
    }

    public final boolean d() {
        return this.f15618a;
    }

    public final boolean e() {
        return this.f15620c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f15618a == gVar.f15618a && this.f15619b == gVar.f15619b && this.f15620c == gVar.f15620c && this.f15621d == gVar.f15621d && this.f15622e == gVar.f15622e;
    }

    public final boolean f() {
        return this.f15621d;
    }

    public final boolean g() {
        return this.f15619b;
    }

    public int hashCode() {
        return (((((((androidx.compose.foundation.e.a(this.f15618a) * 31) + androidx.compose.foundation.e.a(this.f15619b)) * 31) + androidx.compose.foundation.e.a(this.f15620c)) * 31) + androidx.compose.foundation.e.a(this.f15621d)) * 31) + androidx.compose.foundation.e.a(this.f15622e);
    }

    public String toString() {
        return "NetworkState(isConnected=" + this.f15618a + ", isValidated=" + this.f15619b + ", isMetered=" + this.f15620c + ", isNotRoaming=" + this.f15621d + ", isBlocked=" + this.f15622e + ')';
    }
}
