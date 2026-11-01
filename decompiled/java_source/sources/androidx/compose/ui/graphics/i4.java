package androidx.compose.ui.graphics;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class i4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4452b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f4453a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ i4(float[] fArr) {
        this.f4453a = fArr;
    }

    public static final /* synthetic */ i4 a(float[] fArr) {
        return new i4(fArr);
    }

    public static float[] b(float[] fArr) {
        return fArr;
    }

    public static /* synthetic */ float[] c(float[] fArr, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i11 & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        }
        return b(fArr);
    }

    public static boolean d(float[] fArr, Object obj) {
        return (obj instanceof i4) && Intrinsics.c(fArr, ((i4) obj).r());
    }

    public static int e(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    public static final long f(float[] fArr, long j11) {
        float fM = y.g.m(j11);
        float fN = y.g.n(j11);
        float f11 = 1 / (((fArr[3] * fM) + (fArr[7] * fN)) + fArr[15]);
        if (Float.isInfinite(f11) || Float.isNaN(f11)) {
            f11 = 0.0f;
        }
        return y.h.a(((fArr[0] * fM) + (fArr[4] * fN) + fArr[12]) * f11, f11 * ((fArr[1] * fM) + (fArr[5] * fN) + fArr[13]));
    }

    public static final void g(float[] fArr, y.e eVar) {
        long jF = f(fArr, y.h.a(eVar.b(), eVar.d()));
        long jF2 = f(fArr, y.h.a(eVar.b(), eVar.a()));
        long jF3 = f(fArr, y.h.a(eVar.c(), eVar.d()));
        long jF4 = f(fArr, y.h.a(eVar.c(), eVar.a()));
        eVar.i(Math.min(Math.min(y.g.m(jF), y.g.m(jF2)), Math.min(y.g.m(jF3), y.g.m(jF4))));
        eVar.k(Math.min(Math.min(y.g.n(jF), y.g.n(jF2)), Math.min(y.g.n(jF3), y.g.n(jF4))));
        eVar.j(Math.max(Math.max(y.g.m(jF), y.g.m(jF2)), Math.max(y.g.m(jF3), y.g.m(jF4))));
        eVar.h(Math.max(Math.max(y.g.n(jF), y.g.n(jF2)), Math.max(y.g.n(jF3), y.g.n(jF4))));
    }

    public static final void h(float[] fArr) {
        int i11 = 0;
        while (i11 < 4) {
            int i12 = 0;
            while (i12 < 4) {
                fArr[(i12 * 4) + i11] = i11 == i12 ? 1.0f : 0.0f;
                i12++;
            }
            i11++;
        }
    }

    public static final void i(float[] fArr, float f11) {
        double d11 = (((double) f11) * 3.141592653589793d) / 180.0d;
        float fCos = (float) Math.cos(d11);
        float fSin = (float) Math.sin(d11);
        float f12 = fArr[1];
        float f13 = fArr[2];
        float f14 = fArr[5];
        float f15 = fArr[6];
        float f16 = fArr[9];
        float f17 = fArr[10];
        float f18 = fArr[13];
        float f19 = fArr[14];
        fArr[1] = (f12 * fCos) - (f13 * fSin);
        fArr[2] = (f12 * fSin) + (f13 * fCos);
        fArr[5] = (f14 * fCos) - (f15 * fSin);
        fArr[6] = (f14 * fSin) + (f15 * fCos);
        fArr[9] = (f16 * fCos) - (f17 * fSin);
        fArr[10] = (f16 * fSin) + (f17 * fCos);
        fArr[13] = (f18 * fCos) - (f19 * fSin);
        fArr[14] = (f18 * fSin) + (f19 * fCos);
    }

    public static final void j(float[] fArr, float f11) {
        double d11 = (((double) f11) * 3.141592653589793d) / 180.0d;
        float fCos = (float) Math.cos(d11);
        float fSin = (float) Math.sin(d11);
        float f12 = fArr[0];
        float f13 = fArr[2];
        float f14 = fArr[4];
        float f15 = fArr[6];
        float f16 = fArr[8];
        float f17 = fArr[10];
        float f18 = fArr[12];
        float f19 = fArr[14];
        fArr[0] = (f12 * fCos) + (f13 * fSin);
        fArr[2] = ((-f12) * fSin) + (f13 * fCos);
        fArr[4] = (f14 * fCos) + (f15 * fSin);
        fArr[6] = ((-f14) * fSin) + (f15 * fCos);
        fArr[8] = (f16 * fCos) + (f17 * fSin);
        fArr[10] = ((-f16) * fSin) + (f17 * fCos);
        fArr[12] = (f18 * fCos) + (f19 * fSin);
        fArr[14] = ((-f18) * fSin) + (f19 * fCos);
    }

    public static final void k(float[] fArr, float f11) {
        double d11 = (((double) f11) * 3.141592653589793d) / 180.0d;
        float fCos = (float) Math.cos(d11);
        float fSin = (float) Math.sin(d11);
        float f12 = fArr[0];
        float f13 = fArr[4];
        float f14 = (fCos * f12) + (fSin * f13);
        float f15 = -fSin;
        float f16 = fArr[1];
        float f17 = fArr[5];
        float f18 = (fCos * f16) + (fSin * f17);
        float f19 = fArr[2];
        float f20 = fArr[6];
        float f21 = (fCos * f19) + (fSin * f20);
        float f22 = fArr[3];
        float f23 = fArr[7];
        fArr[0] = f14;
        fArr[1] = f18;
        fArr[2] = f21;
        fArr[3] = (fCos * f22) + (fSin * f23);
        fArr[4] = (f12 * f15) + (f13 * fCos);
        fArr[5] = (f16 * f15) + (f17 * fCos);
        fArr[6] = (f19 * f15) + (f20 * fCos);
        fArr[7] = (f15 * f22) + (fCos * f23);
    }

    public static final void l(float[] fArr, float f11, float f12, float f13) {
        fArr[0] = fArr[0] * f11;
        fArr[1] = fArr[1] * f11;
        fArr[2] = fArr[2] * f11;
        fArr[3] = fArr[3] * f11;
        fArr[4] = fArr[4] * f12;
        fArr[5] = fArr[5] * f12;
        fArr[6] = fArr[6] * f12;
        fArr[7] = fArr[7] * f12;
        fArr[8] = fArr[8] * f13;
        fArr[9] = fArr[9] * f13;
        fArr[10] = fArr[10] * f13;
        fArr[11] = fArr[11] * f13;
    }

    public static /* synthetic */ void m(float[] fArr, float f11, float f12, float f13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = 1.0f;
        }
        if ((i11 & 2) != 0) {
            f12 = 1.0f;
        }
        if ((i11 & 4) != 0) {
            f13 = 1.0f;
        }
        l(fArr, f11, f12, f13);
    }

    public static final void n(float[] fArr, float[] fArr2) {
        float fB = j4.b(fArr, 0, fArr2, 0);
        float fB2 = j4.b(fArr, 0, fArr2, 1);
        float fB3 = j4.b(fArr, 0, fArr2, 2);
        float fB4 = j4.b(fArr, 0, fArr2, 3);
        float fB5 = j4.b(fArr, 1, fArr2, 0);
        float fB6 = j4.b(fArr, 1, fArr2, 1);
        float fB7 = j4.b(fArr, 1, fArr2, 2);
        float fB8 = j4.b(fArr, 1, fArr2, 3);
        float fB9 = j4.b(fArr, 2, fArr2, 0);
        float fB10 = j4.b(fArr, 2, fArr2, 1);
        float fB11 = j4.b(fArr, 2, fArr2, 2);
        float fB12 = j4.b(fArr, 2, fArr2, 3);
        float fB13 = j4.b(fArr, 3, fArr2, 0);
        float fB14 = j4.b(fArr, 3, fArr2, 1);
        float fB15 = j4.b(fArr, 3, fArr2, 2);
        float fB16 = j4.b(fArr, 3, fArr2, 3);
        fArr[0] = fB;
        fArr[1] = fB2;
        fArr[2] = fB3;
        fArr[3] = fB4;
        fArr[4] = fB5;
        fArr[5] = fB6;
        fArr[6] = fB7;
        fArr[7] = fB8;
        fArr[8] = fB9;
        fArr[9] = fB10;
        fArr[10] = fB11;
        fArr[11] = fB12;
        fArr[12] = fB13;
        fArr[13] = fB14;
        fArr[14] = fB15;
        fArr[15] = fB16;
    }

    public static String o(float[] fArr) {
        return StringsKt.n("\n            |" + fArr[0] + ' ' + fArr[1] + ' ' + fArr[2] + ' ' + fArr[3] + "|\n            |" + fArr[4] + ' ' + fArr[5] + ' ' + fArr[6] + ' ' + fArr[7] + "|\n            |" + fArr[8] + ' ' + fArr[9] + ' ' + fArr[10] + ' ' + fArr[11] + "|\n            |" + fArr[12] + ' ' + fArr[13] + ' ' + fArr[14] + ' ' + fArr[15] + "|\n        ");
    }

    public static final void p(float[] fArr, float f11, float f12, float f13) {
        float f14 = (fArr[0] * f11) + (fArr[4] * f12) + (fArr[8] * f13) + fArr[12];
        float f15 = (fArr[1] * f11) + (fArr[5] * f12) + (fArr[9] * f13) + fArr[13];
        float f16 = (fArr[2] * f11) + (fArr[6] * f12) + (fArr[10] * f13) + fArr[14];
        float f17 = (fArr[3] * f11) + (fArr[7] * f12) + (fArr[11] * f13) + fArr[15];
        fArr[12] = f14;
        fArr[13] = f15;
        fArr[14] = f16;
        fArr[15] = f17;
    }

    public static /* synthetic */ void q(float[] fArr, float f11, float f12, float f13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = 0.0f;
        }
        if ((i11 & 2) != 0) {
            f12 = 0.0f;
        }
        if ((i11 & 4) != 0) {
            f13 = 0.0f;
        }
        p(fArr, f11, f12, f13);
    }

    public boolean equals(Object obj) {
        return d(this.f4453a, obj);
    }

    public int hashCode() {
        return e(this.f4453a);
    }

    public final /* synthetic */ float[] r() {
        return this.f4453a;
    }

    public String toString() {
        return o(this.f4453a);
    }
}
