package androidx.compose.ui.graphics.colorspace;

import androidx.collection.e0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final double a(double d11, double d12, double d13, double d14, double d15, double d16) {
        return Math.copySign(o(d11 < 0.0d ? -d11 : d11, d12, d13, d14, d15, d16), d11);
    }

    public static final double b(double d11, double d12, double d13, double d14, double d15, double d16) {
        return Math.copySign(q(d11 < 0.0d ? -d11 : d11, d12, d13, d14, d15, d16), d11);
    }

    public static final c c(c cVar, y yVar, a aVar) {
        if (!b.e(cVar.e(), b.f4344a.b())) {
            return cVar;
        }
        Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        Rgb rgb = (Rgb) cVar;
        if (f(rgb.N(), yVar)) {
            return cVar;
        }
        return new Rgb(rgb, l(e(aVar.b(), rgb.N().c(), yVar.c()), rgb.M()), yVar);
    }

    public static /* synthetic */ c d(c cVar, y yVar, a aVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            aVar = a.f4339b.a();
        }
        return c(cVar, yVar, aVar);
    }

    public static final float[] e(float[] fArr, float[] fArr2, float[] fArr3) {
        float[] fArrN = n(fArr, fArr2);
        float[] fArrN2 = n(fArr, fArr3);
        return l(k(fArr), m(new float[]{fArrN2[0] / fArrN[0], fArrN2[1] / fArrN[1], fArrN2[2] / fArrN[2]}, fArr));
    }

    public static final boolean f(y yVar, y yVar2) {
        if (yVar == yVar2) {
            return true;
        }
        return Math.abs(yVar.a() - yVar2.a()) < 0.001f && Math.abs(yVar.b() - yVar2.b()) < 0.001f;
    }

    public static final boolean g(float[] fArr, float[] fArr2) {
        if (fArr == fArr2) {
            return true;
        }
        int length = fArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (Float.compare(fArr[i11], fArr2[i11]) != 0 && Math.abs(fArr[i11] - fArr2[i11]) > 0.001f) {
                return false;
            }
        }
        return true;
    }

    public static final h h(c cVar, c cVar2, int i11) {
        int iB = cVar.b();
        int iB2 = cVar2.b();
        if ((iB | iB2) < 0) {
            return j(cVar, cVar2, i11);
        }
        e0 e0VarA = i.a();
        int i12 = iB | (iB2 << 6) | (i11 << 12);
        Object objC = e0VarA.c(i12);
        if (objC == null) {
            objC = j(cVar, cVar2, i11);
            e0VarA.t(i12, objC);
        }
        return (h) objC;
    }

    public static /* synthetic */ h i(c cVar, c cVar2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            cVar2 = g.f4353a.w();
        }
        if ((i12 & 2) != 0) {
            i11 = n.f4405a.b();
        }
        return h(cVar, cVar2, i11);
    }

    private static final h j(c cVar, c cVar2, int i11) {
        h hVar;
        if (cVar == cVar2) {
            return h.f4377g.c(cVar);
        }
        long jE = cVar.e();
        b.a aVar = b.f4344a;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (b.e(jE, aVar.b()) && b.e(cVar2.e(), aVar.b())) {
            Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
            Intrinsics.f(cVar2, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
            hVar = new h.b((Rgb) cVar, (Rgb) cVar2, i11, defaultConstructorMarker);
        } else {
            hVar = new h(cVar, cVar2, i11, defaultConstructorMarker);
        }
        return hVar;
    }

    public static final float[] k(float[] fArr) {
        float f11 = fArr[0];
        float f12 = fArr[3];
        float f13 = fArr[6];
        float f14 = fArr[1];
        float f15 = fArr[4];
        float f16 = fArr[7];
        float f17 = fArr[2];
        float f18 = fArr[5];
        float f19 = fArr[8];
        float f20 = (f15 * f19) - (f16 * f18);
        float f21 = (f16 * f17) - (f14 * f19);
        float f22 = (f14 * f18) - (f15 * f17);
        float f23 = (f11 * f20) + (f12 * f21) + (f13 * f22);
        float[] fArr2 = new float[fArr.length];
        fArr2[0] = f20 / f23;
        fArr2[1] = f21 / f23;
        fArr2[2] = f22 / f23;
        fArr2[3] = ((f13 * f18) - (f12 * f19)) / f23;
        fArr2[4] = ((f19 * f11) - (f13 * f17)) / f23;
        fArr2[5] = ((f17 * f12) - (f18 * f11)) / f23;
        fArr2[6] = ((f12 * f16) - (f13 * f15)) / f23;
        fArr2[7] = ((f13 * f14) - (f16 * f11)) / f23;
        fArr2[8] = ((f11 * f15) - (f12 * f14)) / f23;
        return fArr2;
    }

    public static final float[] l(float[] fArr, float[] fArr2) {
        float f11 = fArr[0];
        float f12 = fArr2[0];
        float f13 = fArr[3];
        float f14 = fArr2[1];
        float f15 = fArr[6];
        float f16 = fArr2[2];
        float f17 = (f11 * f12) + (f13 * f14) + (f15 * f16);
        float f18 = fArr[1];
        float f19 = fArr[4];
        float f20 = fArr[7];
        float f21 = (f18 * f12) + (f19 * f14) + (f20 * f16);
        float f22 = fArr[2];
        float f23 = fArr[5];
        float f24 = fArr[8];
        float f25 = (f12 * f22) + (f14 * f23) + (f16 * f24);
        float f26 = fArr2[3];
        float f27 = fArr2[4];
        float f28 = fArr2[5];
        float f29 = (f11 * f26) + (f13 * f27) + (f15 * f28);
        float f30 = (f18 * f26) + (f19 * f27) + (f20 * f28);
        float f31 = (f26 * f22) + (f27 * f23) + (f28 * f24);
        float f32 = fArr2[6];
        float f33 = fArr2[7];
        float f34 = (f11 * f32) + (f13 * f33);
        float f35 = fArr2[8];
        return new float[]{f17, f21, f25, f29, f30, f31, f34 + (f15 * f35), (f18 * f32) + (f19 * f33) + (f20 * f35), (f22 * f32) + (f23 * f33) + (f24 * f35)};
    }

    public static final float[] m(float[] fArr, float[] fArr2) {
        float f11 = fArr[0];
        float f12 = fArr2[0] * f11;
        float f13 = fArr[1];
        float f14 = fArr2[1] * f13;
        float f15 = fArr[2];
        return new float[]{f12, f14, fArr2[2] * f15, fArr2[3] * f11, fArr2[4] * f13, fArr2[5] * f15, f11 * fArr2[6], f13 * fArr2[7], f15 * fArr2[8]};
    }

    public static final float[] n(float[] fArr, float[] fArr2) {
        float f11 = fArr2[0];
        float f12 = fArr2[1];
        float f13 = fArr2[2];
        fArr2[0] = (fArr[0] * f11) + (fArr[3] * f12) + (fArr[6] * f13);
        fArr2[1] = (fArr[1] * f11) + (fArr[4] * f12) + (fArr[7] * f13);
        fArr2[2] = (fArr[2] * f11) + (fArr[5] * f12) + (fArr[8] * f13);
        return fArr2;
    }

    public static final double o(double d11, double d12, double d13, double d14, double d15, double d16) {
        return d11 >= d15 * d14 ? (Math.pow(d11, 1.0d / d16) - d13) / d12 : d11 / d14;
    }

    public static final double p(double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        return d11 >= d15 * d14 ? (Math.pow(d11 - d16, 1.0d / d18) - d13) / d12 : (d11 - d17) / d14;
    }

    public static final double q(double d11, double d12, double d13, double d14, double d15, double d16) {
        return d11 >= d15 ? Math.pow((d12 * d11) + d13, d16) : d11 * d14;
    }

    public static final double r(double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        return d11 >= d15 ? Math.pow((d12 * d11) + d13, d18) + d16 : (d14 * d11) + d17;
    }
}
