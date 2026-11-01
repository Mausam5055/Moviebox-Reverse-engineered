package androidx.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o0;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f13245a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f13246b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o0 f13247c = new o0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13248d;

    public static void a(float[] fArr, float[] fArr2) {
        GlUtil.k(fArr);
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
            GlUtil.k(fArr);
        }
    }

    public boolean c(float[] fArr, long j11) {
        float[] fArr2 = (float[]) this.f13247c.j(j11);
        if (fArr2 == null) {
            return false;
        }
        b(this.f13246b, fArr2);
        if (!this.f13248d) {
            a(this.f13245a, this.f13246b);
            this.f13248d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f13245a, 0, this.f13246b, 0);
        return true;
    }

    public void d() {
        this.f13247c.c();
        this.f13248d = false;
    }

    public void e(long j11, float[] fArr) {
        this.f13247c.a(j11, fArr);
    }
}
