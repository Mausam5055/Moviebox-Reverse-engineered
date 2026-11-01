package com.squareup.okhttp.internal.http;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static int a(String str, int i11) {
        try {
            long j11 = Long.parseLong(str);
            if (j11 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j11 < 0) {
                return 0;
            }
            return (int) j11;
        } catch (NumberFormatException unused) {
            return i11;
        }
    }

    public static int b(String str, int i11, String str2) {
        while (i11 < str.length() && str2.indexOf(str.charAt(i11)) == -1) {
            i11++;
        }
        return i11;
    }

    public static int c(String str, int i11) {
        char cCharAt;
        while (i11 < str.length() && ((cCharAt = str.charAt(i11)) == ' ' || cCharAt == '\t')) {
            i11++;
        }
        return i11;
    }
}
