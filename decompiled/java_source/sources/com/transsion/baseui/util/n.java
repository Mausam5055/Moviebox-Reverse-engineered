package com.transsion.baseui.util;

import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n {
    public static final String a(int i11) {
        return "S" + new DecimalFormat("00").format(Integer.valueOf(i11));
    }

    public static final String b(int i11, int i12, boolean z10) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        if (i12 <= 0) {
            return (z10 ? "EP" : "Ch") + decimalFormat.format(Integer.valueOf(i11));
        }
        return "S" + decimalFormat.format(Integer.valueOf(i12)) + (z10 ? " EP" : " Ch") + decimalFormat.format(Integer.valueOf(i11));
    }

    public static final String c(int i11, boolean z10) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        if (i11 < 100) {
            return (z10 ? "EP" : "Ch") + decimalFormat.format(Integer.valueOf(i11));
        }
        int i12 = i11 / 100;
        int i13 = i11 % 100;
        return "S" + decimalFormat.format(Integer.valueOf(i12)) + (z10 ? " EP" : " Ch") + decimalFormat.format(Integer.valueOf(i13));
    }
}
