package androidx.appcompat.app;

/* JADX INFO: loaded from: classes.dex */
class b0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b0 f1113d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1116c;

    b0() {
    }

    static b0 b() {
        if (f1113d == null) {
            f1113d = new b0();
        }
        return f1113d;
    }

    public void a(long j11, double d11, double d12) {
        float f11 = (j11 - 946728000000L) / 8.64E7f;
        float f12 = (0.01720197f * f11) + 6.24006f;
        double d13 = f12;
        double dSin = (Math.sin(d13) * 0.03341960161924362d) + d13 + (Math.sin(2.0f * f12) * 3.4906598739326E-4d) + (Math.sin(f12 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d14 = (-d12) / 360.0d;
        double dRound = ((double) (Math.round(((double) (f11 - 9.0E-4f)) - d14) + 9.0E-4f)) + d14 + (Math.sin(d13) * 0.0053d) + (Math.sin(2.0d * dSin) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin) * Math.sin(0.4092797040939331d));
        double d15 = 0.01745329238474369d * d11;
        double dSin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d15) * Math.sin(dAsin))) / (Math.cos(d15) * Math.cos(dAsin));
        if (dSin2 >= 1.0d) {
            this.f1116c = 1;
            this.f1114a = -1L;
            this.f1115b = -1L;
        } else {
            if (dSin2 <= -1.0d) {
                this.f1116c = 0;
                this.f1114a = -1L;
                this.f1115b = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin2) / 6.283185307179586d);
            this.f1114a = Math.round((dRound + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dRound - dAcos) * 8.64E7d) + 946728000000L;
            this.f1115b = jRound;
            if (jRound >= j11 || this.f1114a <= j11) {
                this.f1116c = 1;
            } else {
                this.f1116c = 0;
            }
        }
    }
}
