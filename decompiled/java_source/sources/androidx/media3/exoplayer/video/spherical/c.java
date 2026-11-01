package androidx.media3.exoplayer.video.spherical;

/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f13256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f13257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f13259d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b[] f13260a;

        public a(b... bVarArr) {
            this.f13260a = bVarArr;
        }

        public b a(int i11) {
            return this.f13260a[i11];
        }

        public int b() {
            return this.f13260a.length;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f13263c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float[] f13264d;

        public b(int i11, float[] fArr, float[] fArr2, int i12) {
            this.f13261a = i11;
            androidx.media3.common.util.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f13263c = fArr;
            this.f13264d = fArr2;
            this.f13262b = i12;
        }

        public int a() {
            return this.f13263c.length / 3;
        }
    }

    public c(a aVar, int i11) {
        this(aVar, aVar, i11);
    }

    public c(a aVar, a aVar2, int i11) {
        this.f13256a = aVar;
        this.f13257b = aVar2;
        this.f13258c = i11;
        this.f13259d = aVar == aVar2;
    }

    public static c a(float f11, int i11, int i12, float f12, float f13, int i13) {
        float f14;
        float f15;
        int i14;
        int i15;
        float[] fArr;
        int i16 = i11;
        int i17 = 1;
        androidx.media3.common.util.a.a(f11 > 0.0f);
        androidx.media3.common.util.a.a(i16 >= 1);
        androidx.media3.common.util.a.a(i12 >= 1);
        androidx.media3.common.util.a.a(f12 > 0.0f && f12 <= 180.0f);
        androidx.media3.common.util.a.a(f13 > 0.0f && f13 <= 360.0f);
        float radians = (float) Math.toRadians(f12);
        float radians2 = (float) Math.toRadians(f13);
        float f16 = radians / i16;
        float f17 = radians2 / i12;
        int i18 = i12 + 1;
        int i19 = ((i18 * 2) + 2) * i16;
        float[] fArr2 = new float[i19 * 3];
        float[] fArr3 = new float[i19 * 2];
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i20 < i16) {
            float f18 = radians / 2.0f;
            float f19 = (i20 * f16) - f18;
            int i23 = i20 + 1;
            float f20 = (i23 * f16) - f18;
            int i24 = 0;
            while (i24 < i18) {
                int i25 = i23;
                float f21 = f19;
                int i26 = i22;
                int i27 = 0;
                int i28 = 2;
                while (i27 < i28) {
                    if (i27 == 0) {
                        f14 = f21;
                        f15 = f20;
                    } else {
                        f14 = f20;
                        f15 = f14;
                    }
                    float f22 = i24 * f17;
                    float f23 = f17;
                    float f24 = radians;
                    double d11 = f11;
                    int i29 = i24;
                    float f25 = f16;
                    double d12 = (f22 + 3.1415927f) - (radians2 / 2.0f);
                    double d13 = f14;
                    int i30 = i18;
                    float[] fArr4 = fArr3;
                    fArr2[i21] = -((float) (Math.sin(d12) * d11 * Math.cos(d13)));
                    float f26 = radians2;
                    int i31 = i27;
                    fArr2[i21 + 1] = (float) (d11 * Math.sin(d13));
                    int i32 = i21 + 3;
                    fArr2[i21 + 2] = (float) (d11 * Math.cos(d12) * Math.cos(d13));
                    fArr4[i26] = f22 / f26;
                    int i33 = i26 + 2;
                    fArr4[i26 + 1] = ((i20 + i31) * f25) / f24;
                    if (i29 == 0 && i31 == 0) {
                        i15 = i31;
                        i14 = i29;
                    } else {
                        i14 = i29;
                        i15 = i31;
                        if (i14 != i12 || i15 != 1) {
                            fArr = fArr4;
                            i28 = 2;
                            i21 = i32;
                            i26 = i33;
                        }
                        i27 = i15 + 1;
                        fArr3 = fArr;
                        radians2 = f26;
                        f20 = f15;
                        f17 = f23;
                        f16 = f25;
                        i18 = i30;
                        i24 = i14;
                        radians = f24;
                    }
                    System.arraycopy(fArr2, i21, fArr2, i32, 3);
                    i21 += 6;
                    fArr = fArr4;
                    i28 = 2;
                    System.arraycopy(fArr, i26, fArr, i33, 2);
                    i26 += 4;
                    i27 = i15 + 1;
                    fArr3 = fArr;
                    radians2 = f26;
                    f20 = f15;
                    f17 = f23;
                    f16 = f25;
                    i18 = i30;
                    i24 = i14;
                    radians = f24;
                }
                i24++;
                i23 = i25;
                f19 = f21;
                i22 = i26;
                radians2 = radians2;
                f17 = f17;
                radians = radians;
                i18 = i18;
            }
            i16 = i11;
            i20 = i23;
            i17 = 1;
        }
        int i34 = i17;
        b[] bVarArr = new b[i34];
        bVarArr[0] = new b(0, fArr2, fArr3, i34);
        return new c(new a(bVarArr), i13);
    }

    public static c b(int i11) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i11);
    }
}
