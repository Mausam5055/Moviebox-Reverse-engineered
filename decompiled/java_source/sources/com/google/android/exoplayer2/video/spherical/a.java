package com.google.android.exoplayer2.video.spherical;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.k0;

/* JADX INFO: loaded from: classes3.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f27939a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f27940b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f27941c = new k0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27942d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f11 = fArr2[10];
        float f12 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f11 * f11) + (f12 * f12));
        float f13 = fArr2[10];
        fArr[0] = f13 / fSqrt;
        float f14 = fArr2[8];
        fArr[2] = f14 / fSqrt;
        fArr[8] = (-f14) / fSqrt;
        fArr[10] = f13 / fSqrt;
    }

    private static void b(float[] fArr, float[] fArr2) {
        float f11 = fArr2[0];
        float f12 = -fArr2[1];
        float f13 = -fArr2[2];
        float length = Matrix.length(f11, f12, f13);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f11 / length, f12 / length, f13 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean c(float[] fArr, long j11) {
        float[] fArr2 = (float[]) this.f27941c.j(j11);
        if (fArr2 == null) {
            return false;
        }
        b(this.f27940b, fArr2);
        if (!this.f27942d) {
            a(this.f27939a, this.f27940b);
            this.f27942d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f27939a, 0, this.f27940b, 0);
        return true;
    }

    public void d() {
        this.f27941c.c();
        this.f27942d = false;
    }

    public void e(long j11, float[] fArr) {
        this.f27941c.a(j11, fArr);
    }
}
