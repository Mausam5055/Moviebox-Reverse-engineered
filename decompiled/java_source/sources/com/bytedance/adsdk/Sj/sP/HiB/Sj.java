package com.bytedance.adsdk.Sj.sP.HiB;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static boolean EjP(char c11) {
        return '+' == c11 || '-' == c11 || '*' == c11 || '/' == c11 || '%' == c11 || '=' == c11 || '>' == c11 || '<' == c11 || '!' == c11 || '&' == c11 || '|' == c11 || '?' == c11 || ':' == c11;
    }

    public static boolean Sj(char c11) {
        return c11 == ' ';
    }

    public static boolean TKC(char c11) {
        return c11 >= '0' && c11 <= '9';
    }

    public static boolean sP(char c11) {
        if (c11 < 'A' || c11 > 'Z') {
            return c11 >= 'a' && c11 <= 'z';
        }
        return true;
    }
}
