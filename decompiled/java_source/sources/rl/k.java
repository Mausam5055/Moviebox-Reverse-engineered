package rl;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74564b;

    public k(int i11, int i12) {
        this.f74563a = i11;
        this.f74564b = i12;
    }

    public final int a() {
        return this.f74564b;
    }

    public final int b() {
        return this.f74563a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f74563a == kVar.f74563a && this.f74564b == kVar.f74564b;
    }

    public int hashCode() {
        return (this.f74563a * 31) + this.f74564b;
    }

    public String toString() {
        return "UGCFilterCoverSize(width=" + this.f74563a + ", height=" + this.f74564b + ")";
    }
}
