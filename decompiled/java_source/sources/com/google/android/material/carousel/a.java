package com.google.android.material.carousel;

/* JADX INFO: loaded from: classes4.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f28602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f28603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f28604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f28605d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f28606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f28607f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f28608g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f28609h;

    a(int i11, float f11, float f12, float f13, int i12, float f14, int i13, float f15, int i14, float f16) {
        this.f28602a = i11;
        this.f28603b = d1.a.a(f11, f12, f13);
        this.f28604c = i12;
        this.f28606e = f14;
        this.f28605d = i13;
        this.f28607f = f15;
        this.f28608g = i14;
        d(f16, f12, f13, f15);
        this.f28609h = b(f15);
    }

    private float a(float f11, int i11, float f12, int i12, int i13) {
        if (i11 <= 0) {
            f12 = 0.0f;
        }
        float f13 = i12 / 2.0f;
        return (f11 - ((i11 + f13) * f12)) / (i13 + f13);
    }

    private float b(float f11) {
        if (g()) {
            return Math.abs(f11 - this.f28607f) * this.f28602a;
        }
        return Float.MAX_VALUE;
    }

    static a c(float f11, float f12, float f13, float f14, int[] iArr, float f15, int[] iArr2, float f16, int[] iArr3) {
        a aVar = null;
        int i11 = 1;
        for (int i12 : iArr3) {
            int length = iArr2.length;
            int i13 = 0;
            while (i13 < length) {
                int i14 = iArr2[i13];
                int length2 = iArr.length;
                int i15 = 0;
                while (i15 < length2) {
                    int i16 = i15;
                    int i17 = length2;
                    int i18 = i13;
                    int i19 = length;
                    a aVar2 = new a(i11, f12, f13, f14, iArr[i15], f15, i14, f16, i12, f11);
                    if (aVar == null || aVar2.f28609h < aVar.f28609h) {
                        if (aVar2.f28609h == 0.0f) {
                            return aVar2;
                        }
                        aVar = aVar2;
                    }
                    i11++;
                    i15 = i16 + 1;
                    length2 = i17;
                    i13 = i18;
                    length = i19;
                }
                i13++;
            }
        }
        return aVar;
    }

    private void d(float f11, float f12, float f13, float f14) {
        float f15 = f11 - f();
        int i11 = this.f28604c;
        if (i11 > 0 && f15 > 0.0f) {
            float f16 = this.f28603b;
            this.f28603b = f16 + Math.min(f15 / i11, f13 - f16);
        } else if (i11 > 0 && f15 < 0.0f) {
            float f17 = this.f28603b;
            this.f28603b = f17 + Math.max(f15 / i11, f12 - f17);
        }
        int i12 = this.f28604c;
        float f18 = i12 > 0 ? this.f28603b : 0.0f;
        this.f28603b = f18;
        float fA = a(f11, i12, f18, this.f28605d, this.f28608g);
        this.f28607f = fA;
        float f19 = (this.f28603b + fA) / 2.0f;
        this.f28606e = f19;
        int i13 = this.f28605d;
        if (i13 <= 0 || fA == f14) {
            return;
        }
        float f20 = (f14 - fA) * this.f28608g;
        float fMin = Math.min(Math.abs(f20), f19 * 0.1f * i13);
        if (f20 > 0.0f) {
            this.f28606e -= fMin / this.f28605d;
            this.f28607f += fMin / this.f28608g;
        } else {
            this.f28606e += fMin / this.f28605d;
            this.f28607f -= fMin / this.f28608g;
        }
    }

    private float f() {
        return (this.f28607f * this.f28608g) + (this.f28606e * this.f28605d) + (this.f28603b * this.f28604c);
    }

    private boolean g() {
        int i11 = this.f28608g;
        if (i11 <= 0 || this.f28604c <= 0 || this.f28605d <= 0) {
            return i11 <= 0 || this.f28604c <= 0 || this.f28607f > this.f28603b;
        }
        float f11 = this.f28607f;
        float f12 = this.f28606e;
        return f11 > f12 && f12 > this.f28603b;
    }

    int e() {
        return this.f28604c + this.f28605d + this.f28608g;
    }

    public String toString() {
        return "Arrangement [priority=" + this.f28602a + ", smallCount=" + this.f28604c + ", smallSize=" + this.f28603b + ", mediumCount=" + this.f28605d + ", mediumSize=" + this.f28606e + ", largeCount=" + this.f28608g + ", largeSize=" + this.f28607f + ", cost=" + this.f28609h + "]";
    }
}
