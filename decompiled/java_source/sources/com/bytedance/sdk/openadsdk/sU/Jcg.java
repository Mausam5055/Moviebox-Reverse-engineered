package com.bytedance.sdk.openadsdk.sU;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg {
    private static Sj Sj;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
    }

    public static void Sj(Sj sj2) {
        Sj = sj2;
    }

    public static void Sj(String str, String str2, Throwable th2) {
        if (Sj != null && th2 == null) {
            new Throwable();
        }
    }

    public static boolean Sj() {
        return Sj != null;
    }
}
