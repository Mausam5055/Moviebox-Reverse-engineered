package e3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import l2.i0;
import l2.m0;
import l2.n0;

/* JADX INFO: loaded from: classes2.dex */
final class h implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f61532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f61533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f61534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f61535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f61536e;

    private h(long[] jArr, long[] jArr2, long j11, long j12, int i11) {
        this.f61532a = jArr;
        this.f61533b = jArr2;
        this.f61534c = j11;
        this.f61535d = j12;
        this.f61536e = i11;
    }

    public static h b(long j11, long j12, i0.a aVar, j0 j0Var) {
        int iH;
        j0Var.X(6);
        long jQ = j12 + ((long) aVar.f68608c) + ((long) j0Var.q());
        int iQ = j0Var.q();
        if (iQ <= 0) {
            return null;
        }
        long jD1 = a1.d1((((long) iQ) * ((long) aVar.f68612g)) - 1, aVar.f68609d);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        int iP3 = j0Var.P();
        j0Var.X(2);
        long j13 = j12 + ((long) aVar.f68608c);
        long[] jArr = new long[iP];
        long[] jArr2 = new long[iP];
        int i11 = 0;
        while (i11 < iP) {
            long j14 = jD1;
            jArr[i11] = (((long) i11) * jD1) / ((long) iP);
            jArr2[i11] = j13;
            if (iP3 == 1) {
                iH = j0Var.H();
            } else if (iP3 == 2) {
                iH = j0Var.P();
            } else if (iP3 == 3) {
                iH = j0Var.K();
            } else {
                if (iP3 != 4) {
                    return null;
                }
                iH = j0Var.L();
            }
            j13 += ((long) iH) * ((long) iP2);
            i11++;
            jD1 = j14;
        }
        long j15 = jD1;
        if (j11 != -1 && j11 != jQ) {
            u.h("VbriSeeker", "VBRI data size mismatch: " + j11 + ", " + jQ);
        }
        if (jQ != j13) {
            u.h("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + jQ + ", " + j13 + "\nSeeking will be inaccurate.");
            jQ = Math.max(jQ, j13);
        }
        return new h(jArr, jArr2, j15, jQ, aVar.f68611f);
    }

    @Override // e3.g
    public long a() {
        return this.f61535d;
    }

    @Override // e3.g
    public int g() {
        return this.f61536e;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f61534c;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        int iH = a1.h(this.f61532a, j11, true, true);
        n0 n0Var = new n0(this.f61532a[iH], this.f61533b[iH]);
        if (n0Var.f68650a >= j11 || iH == this.f61532a.length - 1) {
            return new m0.a(n0Var);
        }
        int i11 = iH + 1;
        return new m0.a(n0Var, new n0(this.f61532a[i11], this.f61533b[i11]));
    }

    @Override // e3.g
    public long getTimeUs(long j11) {
        return this.f61532a[a1.h(this.f61533b, j11, true, true)];
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }
}
