package androidx.core.view;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f8382a = new float[20];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f8383b = new long[20];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f8384c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8385d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8386e = 0;

    g0() {
    }

    private void b() {
        this.f8385d = 0;
        this.f8384c = 0.0f;
    }

    private float e() {
        long[] jArr;
        long j11;
        int i11 = this.f8385d;
        if (i11 < 2) {
            return 0.0f;
        }
        int i12 = this.f8386e;
        int i13 = ((i12 + 20) - (i11 - 1)) % 20;
        long j12 = this.f8383b[i12];
        while (true) {
            jArr = this.f8383b;
            j11 = jArr[i13];
            if (j12 - j11 <= 100) {
                break;
            }
            this.f8385d--;
            i13 = (i13 + 1) % 20;
        }
        int i14 = this.f8385d;
        if (i14 < 2) {
            return 0.0f;
        }
        if (i14 == 2) {
            int i15 = (i13 + 1) % 20;
            long j13 = jArr[i15];
            if (j11 == j13) {
                return 0.0f;
            }
            return this.f8382a[i15] / (j13 - j11);
        }
        float fAbs = 0.0f;
        int i16 = 0;
        for (int i17 = 0; i17 < this.f8385d - 1; i17++) {
            int i18 = i17 + i13;
            long[] jArr2 = this.f8383b;
            long j14 = jArr2[i18 % 20];
            int i19 = (i18 + 1) % 20;
            if (jArr2[i19] != j14) {
                i16++;
                float f11 = f(fAbs);
                float f12 = this.f8382a[i19] / (this.f8383b[i19] - j14);
                fAbs += (f12 - f11) * Math.abs(f12);
                if (i16 == 1) {
                    fAbs *= 0.5f;
                }
            }
        }
        return f(fAbs);
    }

    private static float f(float f11) {
        return (f11 < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f11) * 2.0f));
    }

    void a(MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (this.f8385d != 0 && eventTime - this.f8383b[this.f8386e] > 40) {
            b();
        }
        int i11 = (this.f8386e + 1) % 20;
        this.f8386e = i11;
        int i12 = this.f8385d;
        if (i12 != 20) {
            this.f8385d = i12 + 1;
        }
        this.f8382a[i11] = motionEvent.getAxisValue(26);
        this.f8383b[this.f8386e] = eventTime;
    }

    void c(int i11, float f11) {
        float fE = e() * i11;
        this.f8384c = fE;
        if (fE < (-Math.abs(f11))) {
            this.f8384c = -Math.abs(f11);
        } else if (this.f8384c > Math.abs(f11)) {
            this.f8384c = Math.abs(f11);
        }
    }

    float d(int i11) {
        if (i11 != 26) {
            return 0.0f;
        }
        return this.f8384c;
    }
}
