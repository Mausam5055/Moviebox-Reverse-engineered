package com.bytedance.sdk.component.uA.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static volatile Sj sP;
    private volatile sP Sj;

    private Sj() {
    }

    public static Sj Sj() {
        if (sP == null) {
            synchronized (Sj.class) {
                try {
                    if (sP == null) {
                        sP = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public void Sj(sP sPVar) {
        this.Sj = sPVar;
    }

    public sP sP() {
        return this.Sj;
    }
}
