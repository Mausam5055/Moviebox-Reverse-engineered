package com.bytedance.sdk.component.utils;

/* JADX INFO: loaded from: classes2.dex */
public class Zq {
    private static boolean Sj = false;
    private static String TKC = "";
    private static int sP = 4;

    public static boolean EjP() {
        return Sj;
    }

    public static void Sj(int i11) {
        sP = i11;
    }

    public static void Sj(String str) {
        TKC = str;
    }

    public static boolean Sj() {
        return sP <= 3;
    }

    public static void TKC() {
        Sj = false;
        Sj(7);
    }

    public static void sP() {
        Sj = true;
        Sj(3);
    }
}
