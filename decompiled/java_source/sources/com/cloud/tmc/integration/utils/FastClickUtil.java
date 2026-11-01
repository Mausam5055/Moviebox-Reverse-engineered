package com.cloud.tmc.integration.utils;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public class FastClickUtil {
    private static final long DOUBLE_DEVIATE_TIME = 400;
    private static long mLastChickTime;

    private FastClickUtil() {
    }

    public static boolean isFastDoubleClick() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j11 = jElapsedRealtime - mLastChickTime;
        if (j11 > DOUBLE_DEVIATE_TIME) {
            mLastChickTime = jElapsedRealtime;
            return false;
        }
        if (j11 >= 0) {
            return true;
        }
        mLastChickTime = 0L;
        return false;
    }
}
