package g10;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f63135a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f63136b = 200;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f63137c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f63138d = new int[94];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f63139e = new int[94];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f63140f = new float[94];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f63141g = new float[94];

    public k() {
        f();
    }

    void a() {
        for (int i11 = 0; i11 < 94; i11++) {
            float[] fArr = this.f63140f;
            float f11 = this.f63138d[i11];
            int i12 = this.f63135a;
            fArr[i11] = f11 / i12;
            this.f63141g[i11] = this.f63139e[i11] / i12;
        }
    }

    boolean b() {
        return this.f63135a > this.f63136b;
    }

    float c(float[] fArr, float f11, float[] fArr2, float f12) {
        return (f11 * d(fArr, this.f63140f)) + (f12 * d(fArr2, this.f63141g));
    }

    float d(float[] fArr, float[] fArr2) {
        float f11 = 0.0f;
        for (int i11 = 0; i11 < 94; i11++) {
            float f12 = fArr[i11] - fArr2[i11];
            f11 += f12 * f12;
        }
        return ((float) Math.sqrt(f11)) / 94.0f;
    }

    boolean e() {
        return this.f63135a > 1;
    }

    public void f() {
        this.f63135a = 0;
        this.f63137c = 0;
        for (int i11 = 0; i11 < 94; i11++) {
            int[] iArr = this.f63138d;
            this.f63139e[i11] = 0;
            iArr[i11] = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    boolean g(byte[] bArr, int i11) {
        if (this.f63137c == 1) {
            return false;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = this.f63137c;
            if (1 == i14) {
                break;
            }
            if (i14 == 0) {
                byte b11 = bArr[i13];
                if ((b11 & 128) != 0) {
                    if (255 == (b11 & 255) || 161 > (b11 & 255)) {
                        this.f63137c = 1;
                    } else {
                        this.f63135a++;
                        int[] iArr = this.f63138d;
                        int i15 = (b11 & 255) - 161;
                        iArr[i15] = iArr[i15] + 1;
                        this.f63137c = 2;
                    }
                }
            } else if (i14 != 1) {
                if (i14 != 2) {
                    this.f63137c = 1;
                } else {
                    byte b12 = bArr[i13];
                    if ((b12 & 128) == 0 || 255 == (b12 & 255) || 161 > (b12 & 255)) {
                        this.f63137c = 1;
                    } else {
                        this.f63135a++;
                        int[] iArr2 = this.f63139e;
                        int i16 = (b12 & 255) - 161;
                        iArr2[i16] = iArr2[i16] + 1;
                        this.f63137c = 0;
                    }
                }
            }
            i12++;
            i13++;
        }
        return 1 != this.f63137c;
    }
}
