package e0;

import androidx.compose.ui.input.pointer.e;
import androidx.compose.ui.input.pointer.p;
import androidx.compose.ui.input.pointer.w;
import java.util.List;
import kotlin.collections.ArraysKt;
import y.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f61467a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f61468b;

    public static final void c(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (f61467a) {
            e(aVar, wVar);
        } else {
            d(aVar, wVar);
        }
    }

    private static final void d(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (p.b(wVar)) {
            aVar.f(wVar.h());
            aVar.e();
        }
        long jK = wVar.k();
        List listE = wVar.e();
        int size = listE.size();
        int i11 = 0;
        while (i11 < size) {
            e eVar = (e) listE.get(i11);
            long jQ = g.q(eVar.b(), jK);
            long jB = eVar.b();
            aVar.f(g.r(aVar.c(), jQ));
            aVar.a(eVar.c(), aVar.c());
            i11++;
            jK = jB;
        }
        aVar.f(g.r(aVar.c(), g.q(wVar.h(), jK)));
        aVar.a(wVar.o(), aVar.c());
    }

    private static final void e(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (p.b(wVar)) {
            aVar.e();
        }
        if (!p.d(wVar)) {
            List listE = wVar.e();
            int size = listE.size();
            for (int i11 = 0; i11 < size; i11++) {
                e eVar = (e) listE.get(i11);
                aVar.a(eVar.c(), eVar.a());
            }
            aVar.a(wVar.o(), wVar.g());
        }
        if (p.d(wVar) && wVar.o() - aVar.d() > 40) {
            aVar.e();
        }
        aVar.g(wVar.o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(float[] fArr, float[] fArr2, int i11, boolean z10) {
        int i12 = i11 - 1;
        float f11 = fArr2[i12];
        float fSignum = 0.0f;
        int i13 = i12;
        while (i13 > 0) {
            int i14 = i13 - 1;
            float f12 = fArr2[i14];
            if (f11 != f12) {
                float f13 = (z10 ? -fArr[i14] : fArr[i13] - fArr[i14]) / (f11 - f12);
                fSignum += (f13 - (Math.signum(fSignum) * ((float) Math.sqrt(2 * Math.abs(fSignum))))) * Math.abs(f13);
                if (i13 == i12) {
                    fSignum *= 0.5f;
                }
            }
            i13--;
            f11 = f12;
        }
        return Math.signum(fSignum) * ((float) Math.sqrt(2 * Math.abs(fSignum)));
    }

    private static final float g(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f11 = 0.0f;
        for (int i11 = 0; i11 < length; i11++) {
            f11 += fArr[i11] * fArr2[i11];
        }
        return f11;
    }

    public static final boolean h() {
        return f61468b;
    }

    public static final float[] i(float[] fArr, float[] fArr2, int i11, int i12, float[] fArr3) {
        int i13 = i12;
        if (i13 < 1) {
            g0.a.a("The degree must be at positive integer");
        }
        if (i11 == 0) {
            g0.a.a("At least one point must be provided");
        }
        if (i13 >= i11) {
            i13 = i11 - 1;
        }
        int i14 = i13 + 1;
        float[][] fArr4 = new float[i14][];
        for (int i15 = 0; i15 < i14; i15++) {
            fArr4[i15] = new float[i11];
        }
        for (int i16 = 0; i16 < i11; i16++) {
            fArr4[0][i16] = 1.0f;
            for (int i17 = 1; i17 < i14; i17++) {
                fArr4[i17][i16] = fArr4[i17 - 1][i16] * fArr[i16];
            }
        }
        float[][] fArr5 = new float[i14][];
        for (int i18 = 0; i18 < i14; i18++) {
            fArr5[i18] = new float[i11];
        }
        float[][] fArr6 = new float[i14][];
        for (int i19 = 0; i19 < i14; i19++) {
            fArr6[i19] = new float[i14];
        }
        int i20 = 0;
        while (i20 < i14) {
            float[] fArr7 = fArr5[i20];
            ArraysKt.k(fArr4[i20], fArr7, 0, 0, i11);
            for (int i21 = 0; i21 < i20; i21++) {
                float[] fArr8 = fArr5[i21];
                float fG = g(fArr7, fArr8);
                for (int i22 = 0; i22 < i11; i22++) {
                    fArr7[i22] = fArr7[i22] - (fArr8[i22] * fG);
                }
            }
            float fSqrt = (float) Math.sqrt(g(fArr7, fArr7));
            if (fSqrt < 1.0E-6f) {
                fSqrt = 1.0E-6f;
            }
            float f11 = 1.0f / fSqrt;
            for (int i23 = 0; i23 < i11; i23++) {
                fArr7[i23] = fArr7[i23] * f11;
            }
            float[] fArr9 = fArr6[i20];
            int i24 = 0;
            while (i24 < i14) {
                fArr9[i24] = i24 < i20 ? 0.0f : g(fArr7, fArr4[i24]);
                i24++;
            }
            i20++;
        }
        for (int i25 = i13; -1 < i25; i25--) {
            float fG2 = g(fArr5[i25], fArr2);
            float[] fArr10 = fArr6[i25];
            int i26 = i25 + 1;
            if (i26 <= i13) {
                int i27 = i13;
                while (true) {
                    fG2 -= fArr10[i27] * fArr3[i27];
                    if (i27 != i26) {
                        i27--;
                    }
                }
            }
            fArr3[i25] = fG2 / fArr10[i25];
        }
        return fArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(a[] aVarArr, int i11, long j11, float f11) {
        a aVar = aVarArr[i11];
        if (aVar == null) {
            aVarArr[i11] = new a(j11, f11);
        } else {
            aVar.d(j11);
            aVar.c(f11);
        }
    }
}
