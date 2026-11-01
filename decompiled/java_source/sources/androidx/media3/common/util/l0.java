package androidx.media3.common.util;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l0 f10407c = new l0(-1, -1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l0 f10408d = new l0(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f10410b;

    public l0(int i11, int i12) {
        a.a((i11 == -1 || i11 >= 0) && (i12 == -1 || i12 >= 0));
        this.f10409a = i11;
        this.f10410b = i12;
    }

    public int a() {
        return this.f10410b;
    }

    public int b() {
        return this.f10409a;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.f10409a == l0Var.f10409a && this.f10410b == l0Var.f10410b;
    }

    public int hashCode() {
        int i11 = this.f10410b;
        int i12 = this.f10409a;
        return i11 ^ ((i12 >>> 16) | (i12 << 16));
    }

    public String toString() {
        return this.f10409a + "x" + this.f10410b;
    }
}
