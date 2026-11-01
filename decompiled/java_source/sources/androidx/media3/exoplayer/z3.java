package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class z3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z3 f13398c = new z3(0, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13400b;

    public z3(int i11, boolean z10) {
        this.f13399a = i11;
        this.f13400b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z3.class != obj.getClass()) {
            return false;
        }
        z3 z3Var = (z3) obj;
        return this.f13399a == z3Var.f13399a && this.f13400b == z3Var.f13400b;
    }

    public int hashCode() {
        return (this.f13399a << 1) + (this.f13400b ? 1 : 0);
    }
}
