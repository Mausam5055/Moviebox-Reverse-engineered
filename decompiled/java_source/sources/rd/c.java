package rd;

import com.google.zxing.k;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f74319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k[] f74320c;

    public c(int i11, int[] iArr, int i12, int i13, int i14) {
        this.f74318a = i11;
        this.f74319b = iArr;
        float f11 = i12;
        float f12 = i14;
        this.f74320c = new k[]{new k(f11, f12), new k(i13, f12)};
    }

    public k[] a() {
        return this.f74320c;
    }

    public int[] b() {
        return this.f74319b;
    }

    public int c() {
        return this.f74318a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof c) && this.f74318a == ((c) obj).f74318a;
    }

    public int hashCode() {
        return this.f74318a;
    }
}
