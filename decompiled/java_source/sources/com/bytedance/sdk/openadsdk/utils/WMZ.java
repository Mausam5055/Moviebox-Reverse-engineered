package com.bytedance.sdk.openadsdk.utils;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public class WMZ {
    public long Sj;
    private long sP;

    private WMZ(boolean z10) {
        if (z10) {
            HiB();
        }
    }

    public static WMZ TKC() {
        return new WMZ(false);
    }

    public static WMZ sP() {
        return new WMZ(true);
    }

    public long EjP() {
        return SystemClock.elapsedRealtime() - this.sP;
    }

    public void HiB() {
        this.Sj = System.currentTimeMillis();
        this.sP = SystemClock.elapsedRealtime();
    }

    public long Sj() {
        return this.sP;
    }

    public long Sj(WMZ wmz) {
        return Math.abs(wmz.sP - this.sP);
    }

    public String toString() {
        return String.valueOf(this.Sj);
    }

    public boolean vS() {
        return this.sP > 0;
    }
}
