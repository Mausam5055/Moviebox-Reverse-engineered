package com.mbridge.msdk.playercommon.exoplayer2.upstream.crypto;

/* JADX INFO: loaded from: classes5.dex */
final class CryptoUtil {
    private CryptoUtil() {
    }

    public static long getFNV64Hash(String str) {
        long j11 = 0;
        if (str == null) {
            return 0L;
        }
        for (int i11 = 0; i11 < str.length(); i11++) {
            long jCharAt = j11 ^ ((long) str.charAt(i11));
            j11 = jCharAt + (jCharAt << 1) + (jCharAt << 4) + (jCharAt << 5) + (jCharAt << 7) + (jCharAt << 8) + (jCharAt << 40);
        }
        return j11;
    }
}
