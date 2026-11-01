package org.mvel2.util;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    public static int a(char c11, int i11, int i12, char[] cArr) {
        int i13 = i12 + i11;
        while (i11 < i13) {
            if (cArr[i11] == c11) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int b(char c11, int i11, int i12, char[] cArr) {
        for (int i13 = (i11 + i12) - 1; i13 >= 0; i13--) {
            if (cArr[i13] == c11) {
                return i13;
            }
        }
        return -1;
    }
}
