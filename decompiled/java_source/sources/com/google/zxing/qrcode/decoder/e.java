package com.google.zxing.qrcode.decoder;

/* JADX INFO: loaded from: classes4.dex */
final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[][] f32990c = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ErrorCorrectionLevel f32991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f32992b;

    private e(int i11) {
        this.f32991a = ErrorCorrectionLevel.forBits((i11 >> 3) & 3);
        this.f32992b = (byte) (i11 & 7);
    }

    static e a(int i11, int i12) {
        e eVarB = b(i11, i12);
        return eVarB != null ? eVarB : b(i11 ^ 21522, i12 ^ 21522);
    }

    private static e b(int i11, int i12) {
        int iE;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        for (int[] iArr : f32990c) {
            int i15 = iArr[0];
            if (i15 == i11 || i15 == i12) {
                return new e(iArr[1]);
            }
            int iE2 = e(i11, i15);
            if (iE2 < i13) {
                i14 = iArr[1];
                i13 = iE2;
            }
            if (i11 != i12 && (iE = e(i12, i15)) < i13) {
                i14 = iArr[1];
                i13 = iE;
            }
        }
        if (i13 <= 3) {
            return new e(i14);
        }
        return null;
    }

    static int e(int i11, int i12) {
        return Integer.bitCount(i11 ^ i12);
    }

    byte c() {
        return this.f32992b;
    }

    ErrorCorrectionLevel d() {
        return this.f32991a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f32991a == eVar.f32991a && this.f32992b == eVar.f32992b;
    }

    public int hashCode() {
        return (this.f32991a.ordinal() << 3) | this.f32992b;
    }
}
