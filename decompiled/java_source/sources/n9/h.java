package n9;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import g9.c0;

/* JADX INFO: loaded from: classes4.dex */
final class h implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f70281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f70282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f70283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f70284d;

    private h(long[] jArr, long[] jArr2, long j11, long j12) {
        this.f70281a = jArr;
        this.f70282b = jArr2;
        this.f70283c = j11;
        this.f70284d = j12;
    }

    public static h b(long j11, long j12, b0.a aVar, d0 d0Var) {
        int iD;
        d0Var.Q(10);
        int iN = d0Var.n();
        if (iN <= 0) {
            return null;
        }
        int i11 = aVar.f24624d;
        long jN0 = p0.N0(iN, ((long) (i11 >= 32000 ? 1152 : 576)) * 1000000, i11);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        int iJ3 = d0Var.J();
        d0Var.Q(2);
        long j13 = j12 + ((long) aVar.f24623c);
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        int i12 = 0;
        long j14 = j12;
        while (i12 < iJ) {
            int i13 = iJ2;
            long j15 = j13;
            jArr[i12] = (((long) i12) * jN0) / ((long) iJ);
            jArr2[i12] = Math.max(j14, j15);
            if (iJ3 == 1) {
                iD = d0Var.D();
            } else if (iJ3 == 2) {
                iD = d0Var.J();
            } else if (iJ3 == 3) {
                iD = d0Var.G();
            } else {
                if (iJ3 != 4) {
                    return null;
                }
                iD = d0Var.H();
            }
            j14 += ((long) iD) * ((long) i13);
            i12++;
            jArr = jArr;
            iJ2 = i13;
            j13 = j15;
        }
        long[] jArr3 = jArr;
        if (j11 != -1 && j11 != j14) {
            s.i("VbriSeeker", "VBRI data size mismatch: " + j11 + ", " + j14);
        }
        return new h(jArr3, jArr2, jN0, j14);
    }

    @Override // n9.g
    public long a() {
        return this.f70284d;
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f70283c;
    }

    @Override // g9.b0
    public g9.b0.a getSeekPoints(long j11) {
        int i11 = p0.i(this.f70281a, j11, true, true);
        c0 c0Var = new c0(this.f70281a[i11], this.f70282b[i11]);
        if (c0Var.f63375a >= j11 || i11 == this.f70281a.length - 1) {
            return new g9.b0.a(c0Var);
        }
        int i12 = i11 + 1;
        return new g9.b0.a(c0Var, new c0(this.f70281a[i12], this.f70282b[i12]));
    }

    @Override // n9.g
    public long getTimeUs(long j11) {
        return this.f70281a[p0.i(this.f70282b, j11, true, true)];
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }
}
