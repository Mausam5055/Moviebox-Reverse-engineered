package androidx.compose.animation;

import androidx.compose.animation.core.w;
import androidx.compose.animation.core.y;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(float[] fArr, float[] fArr2, int i11) {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19 = 0.0f;
        float f20 = 0.0f;
        for (int i12 = 0; i12 < i11; i12++) {
            float f21 = i12 / i11;
            float f22 = 1.0f;
            while (true) {
                f11 = ((f22 - f19) / 2.0f) + f19;
                f12 = 1.0f - f11;
                f13 = f11 * 3.0f * f12;
                f14 = f11 * f11 * f11;
                float f23 = (((f12 * 0.175f) + (f11 * 0.35000002f)) * f13) + f14;
                if (Math.abs(f23 - f21) < 1.0E-5d) {
                    break;
                } else if (f23 > f21) {
                    f22 = f11;
                } else {
                    f19 = f11;
                }
            }
            float f24 = 0.5f;
            fArr[i12] = (f13 * ((f12 * 0.5f) + f11)) + f14;
            float f25 = 1.0f;
            while (true) {
                f15 = ((f25 - f20) / 2.0f) + f20;
                f16 = 1.0f - f15;
                f17 = f15 * 3.0f * f16;
                f18 = f15 * f15 * f15;
                float f26 = (((f16 * f24) + f15) * f17) + f18;
                if (Math.abs(f26 - f21) >= 1.0E-5d) {
                    if (f26 > f21) {
                        f25 = f15;
                    } else {
                        f20 = f15;
                    }
                    f24 = 0.5f;
                }
            }
            fArr2[i12] = (f17 * ((f16 * 0.175f) + (f15 * 0.35000002f))) + f18;
        }
        fArr2[i11] = 1.0f;
        fArr[i11] = 1.0f;
    }

    public static final w c(o0.e eVar) {
        return y.a(new g(eVar));
    }
}
