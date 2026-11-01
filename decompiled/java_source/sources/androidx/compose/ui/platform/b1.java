package androidx.compose.ui.platform;

/* JADX INFO: loaded from: classes.dex */
public abstract class b1 {
    public static final boolean a(float[] fArr, float[] fArr2) {
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = fArr[2];
        float f14 = fArr[3];
        float f15 = fArr[4];
        float f16 = fArr[5];
        float f17 = fArr[6];
        float f18 = fArr[7];
        float f19 = fArr[8];
        float f20 = fArr[9];
        float f21 = fArr[10];
        float f22 = fArr[11];
        float f23 = fArr[12];
        float f24 = fArr[13];
        float f25 = fArr[14];
        float f26 = fArr[15];
        float f27 = (f11 * f16) - (f12 * f15);
        float f28 = (f11 * f17) - (f13 * f15);
        float f29 = (f11 * f18) - (f14 * f15);
        float f30 = (f12 * f17) - (f13 * f16);
        float f31 = (f12 * f18) - (f14 * f16);
        float f32 = (f13 * f18) - (f14 * f17);
        float f33 = (f19 * f24) - (f20 * f23);
        float f34 = (f19 * f25) - (f21 * f23);
        float f35 = (f19 * f26) - (f22 * f23);
        float f36 = (f20 * f25) - (f21 * f24);
        float f37 = (f20 * f26) - (f22 * f24);
        float f38 = (f21 * f26) - (f22 * f25);
        float f39 = (((((f27 * f38) - (f28 * f37)) + (f29 * f36)) + (f30 * f35)) - (f31 * f34)) + (f32 * f33);
        if (f39 == 0.0f) {
            return false;
        }
        float f40 = 1.0f / f39;
        fArr2[0] = (((f16 * f38) - (f17 * f37)) + (f18 * f36)) * f40;
        fArr2[1] = ((((-f12) * f38) + (f13 * f37)) - (f14 * f36)) * f40;
        fArr2[2] = (((f24 * f32) - (f25 * f31)) + (f26 * f30)) * f40;
        fArr2[3] = ((((-f20) * f32) + (f21 * f31)) - (f22 * f30)) * f40;
        float f41 = -f15;
        fArr2[4] = (((f41 * f38) + (f17 * f35)) - (f18 * f34)) * f40;
        fArr2[5] = (((f38 * f11) - (f13 * f35)) + (f14 * f34)) * f40;
        float f42 = -f23;
        fArr2[6] = (((f42 * f32) + (f25 * f29)) - (f26 * f28)) * f40;
        fArr2[7] = (((f32 * f19) - (f21 * f29)) + (f22 * f28)) * f40;
        fArr2[8] = (((f15 * f37) - (f16 * f35)) + (f18 * f33)) * f40;
        fArr2[9] = ((((-f11) * f37) + (f35 * f12)) - (f14 * f33)) * f40;
        fArr2[10] = (((f23 * f31) - (f24 * f29)) + (f26 * f27)) * f40;
        fArr2[11] = ((((-f19) * f31) + (f29 * f20)) - (f22 * f27)) * f40;
        fArr2[12] = (((f41 * f36) + (f16 * f34)) - (f17 * f33)) * f40;
        fArr2[13] = (((f11 * f36) - (f12 * f34)) + (f13 * f33)) * f40;
        fArr2[14] = (((f42 * f30) + (f24 * f28)) - (f25 * f27)) * f40;
        fArr2[15] = (((f19 * f30) - (f20 * f28)) + (f21 * f27)) * f40;
        return true;
    }
}
