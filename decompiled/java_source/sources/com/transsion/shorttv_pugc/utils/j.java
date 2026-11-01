package com.transsion.shorttv_pugc.utils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j {
    public static final String a(int i11) {
        Object objValueOf;
        Object objValueOf2;
        int i12 = i11 / 1000;
        int i13 = i12 % 60;
        int i14 = (i12 / 60) % 60;
        int i15 = i12 / 3600;
        if (i15 <= 0) {
            Object objValueOf3 = i14 > 0 ? Integer.valueOf(i14) : "0";
            if (i13 < 10) {
                objValueOf = "0" + i13;
            } else {
                objValueOf = Integer.valueOf(i13);
            }
            return objValueOf3 + ":" + objValueOf;
        }
        if (i13 < 10) {
            objValueOf2 = "0" + i13;
        } else {
            objValueOf2 = Integer.valueOf(i13);
        }
        return i15 + ":" + i14 + ":" + objValueOf2;
    }
}
