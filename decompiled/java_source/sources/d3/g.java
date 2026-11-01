package d3;

import l2.s;

/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long[] f61223d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f61224a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f61225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f61226c;

    public static long a(byte[] bArr, int i11, boolean z10) {
        long j11 = ((long) bArr[0]) & 255;
        if (z10) {
            j11 &= ~f61223d[i11 - 1];
        }
        for (int i12 = 1; i12 < i11; i12++) {
            j11 = (j11 << 8) | (((long) bArr[i12]) & 255);
        }
        return j11;
    }

    public static int c(int i11) {
        int i12 = 0;
        while (true) {
            long[] jArr = f61223d;
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
        return this.f61226c;
    }

    public long d(s sVar, boolean z10, boolean z11, int i11) {
        if (this.f61225b == 0) {
            if (!sVar.readFully(this.f61224a, 0, 1, z10)) {
                return -1L;
            }
            int iC = c(this.f61224a[0] & 255);
            this.f61226c = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f61225b = 1;
        }
        int i12 = this.f61226c;
        if (i12 > i11) {
            this.f61225b = 0;
            return -2L;
        }
        if (i12 != 1) {
            sVar.readFully(this.f61224a, 1, i12 - 1);
        }
        this.f61225b = 0;
        return a(this.f61224a, this.f61226c, z11);
    }

    public void e() {
        this.f61225b = 0;
        this.f61226c = 0;
    }
}
