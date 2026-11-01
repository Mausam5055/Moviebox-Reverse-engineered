package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k {
    public static String a(int i11) {
        String str = "039";
        if (i11 < 28) {
            if (i11 >= 10000) {
                str = "040";
            } else if (i11 < 28) {
                if (i11 >= 26) {
                    str = "038";
                } else {
                    str = i11 >= 24 ? "037" : "035";
                }
            }
        }
        return "dex\n" + str + "\u0000";
    }

    public static int b(byte[] bArr) {
        if (bArr.length == 8 && bArr[0] == 100 && bArr[1] == 101 && bArr[2] == 120 && bArr[3] == 10 && bArr[7] == 0) {
            String str = "" + ((char) bArr[4]) + ((char) bArr[5]) + ((char) bArr[6]);
            if (str.equals("035")) {
                return 13;
            }
            if (str.equals("037")) {
                return 24;
            }
            if (str.equals("038")) {
                return 26;
            }
            if (str.equals("039")) {
                return 28;
            }
            if (str.equals("040")) {
                return 10000;
            }
            if (str.equals("039")) {
                return 28;
            }
        }
        return -1;
    }
}
