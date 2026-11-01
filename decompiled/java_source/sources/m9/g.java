package m9;

import g9.m;

/* JADX INFO: loaded from: classes4.dex */
final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long[] f69421d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f69422a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f69423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f69424c;

    public static long a(byte[] bArr, int i11, boolean z10) {
        long j11 = ((long) bArr[0]) & 255;
        if (z10) {
            j11 &= ~f69421d[i11 - 1];
        }
        for (int i12 = 1; i12 < i11; i12++) {
            j11 = (j11 << 8) | (((long) bArr[i12]) & 255);
        }
        return j11;
    }

    public static int c(int i11) {
        int i12 = 0;
        while (true) {
            long[] jArr = f69421d;
            if (i12 >= jArr.length) {
                return -1;
            }
            if ((jArr[i12] & ((long) i11)) != 0) {
                return i12 + 1;
            }
            i12++;
        }
    }

    public int b() {
        return this.f69424c;
    }

    public long d(m mVar, boolean z10, boolean z11, int i11) {
        if (this.f69423b == 0) {
            if (!mVar.readFully(this.f69422a, 0, 1, z10)) {
                return -1L;
            }
            int iC = c(this.f69422a[0] & 255);
            this.f69424c = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f69423b = 1;
        }
        int i12 = this.f69424c;
        if (i12 > i11) {
            this.f69423b = 0;
            return -2L;
        }
        if (i12 != 1) {
            mVar.readFully(this.f69422a, 1, i12 - 1);
        }
        this.f69423b = 0;
        return a(this.f69422a, this.f69424c, z11);
    }

    public void e() {
        this.f69423b = 0;
        this.f69424c = 0;
    }
}
