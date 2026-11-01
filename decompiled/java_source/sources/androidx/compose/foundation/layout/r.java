package androidx.compose.foundation.layout;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2879d;

    public r(int i11, int i12, int i13, int i14) {
        this.f2876a = i11;
        this.f2877b = i12;
        this.f2878c = i13;
        this.f2879d = i14;
    }

    public final int a() {
        return this.f2879d;
    }

    public final int b() {
        return this.f2876a;
    }

    public final int c() {
        return this.f2878c;
    }

    public final int d() {
        return this.f2877b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f2876a == rVar.f2876a && this.f2877b == rVar.f2877b && this.f2878c == rVar.f2878c && this.f2879d == rVar.f2879d;
    }

    public int hashCode() {
        return (((((this.f2876a * 31) + this.f2877b) * 31) + this.f2878c) * 31) + this.f2879d;
    }

    public String toString() {
        return "InsetsValues(left=" + this.f2876a + ", top=" + this.f2877b + ", right=" + this.f2878c + ", bottom=" + this.f2879d + ')';
    }
}
