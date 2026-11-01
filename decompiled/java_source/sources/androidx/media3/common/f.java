package androidx.media3.common;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9968b;

    public f(int i11, float f11) {
        this.f9967a = i11;
        this.f9968b = f11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return this.f9967a == fVar.f9967a && Float.compare(fVar.f9968b, this.f9968b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f9967a) * 31) + Float.floatToIntBits(this.f9968b);
    }
}
