package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f32917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f32918b;

    public k(float f11, float f12) {
        this.f32917a = f11;
        this.f32918b = f12;
    }

    private static float a(k kVar, k kVar2, k kVar3) {
        float f11 = kVar2.f32917a;
        float f12 = kVar2.f32918b;
        return ((kVar3.f32917a - f11) * (kVar.f32918b - f12)) - ((kVar3.f32918b - f12) * (kVar.f32917a - f11));
    }

    public static float b(k kVar, k kVar2) {
        return jd.a.a(kVar.f32917a, kVar.f32918b, kVar2.f32917a, kVar2.f32918b);
    }

    public static void e(k[] kVarArr) {
        k kVar;
        k kVar2;
        k kVar3;
        float fB = b(kVarArr[0], kVarArr[1]);
        float fB2 = b(kVarArr[1], kVarArr[2]);
        float fB3 = b(kVarArr[0], kVarArr[2]);
        if (fB2 >= fB && fB2 >= fB3) {
            kVar = kVarArr[0];
            kVar2 = kVarArr[1];
            kVar3 = kVarArr[2];
        } else if (fB3 < fB2 || fB3 < fB) {
            kVar = kVarArr[2];
            kVar2 = kVarArr[0];
            kVar3 = kVarArr[1];
        } else {
            kVar = kVarArr[1];
            kVar2 = kVarArr[0];
            kVar3 = kVarArr[2];
        }
        if (a(kVar2, kVar, kVar3) < 0.0f) {
            k kVar4 = kVar3;
            kVar3 = kVar2;
            kVar2 = kVar4;
        }
        kVarArr[0] = kVar2;
        kVarArr[1] = kVar;
        kVarArr[2] = kVar3;
    }

    public final float c() {
        return this.f32917a;
    }

    public final float d() {
        return this.f32918b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f32917a == kVar.f32917a && this.f32918b == kVar.f32918b;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f32917a) * 31) + Float.floatToIntBits(this.f32918b);
    }

    public final String toString() {
        return "(" + this.f32917a + ',' + this.f32918b + ')';
    }
}
