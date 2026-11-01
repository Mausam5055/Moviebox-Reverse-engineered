package com.mbridge.msdk.foundation.download.utils;

/* JADX INFO: loaded from: classes5.dex */
public final class Utils {
    private Utils() {
    }

    public static int getDownloadRate(long j11, long j12) {
        if (j11 == 0 || j12 == 0) {
            return 0;
        }
        if (j11 == j12) {
            return 100;
        }
        return (int) (((j12 * 1.0d) / (j11 * 1.0d)) * 100.0d);
    }
}
