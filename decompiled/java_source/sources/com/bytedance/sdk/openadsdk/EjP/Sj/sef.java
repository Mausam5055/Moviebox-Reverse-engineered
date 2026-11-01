package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class sef {
    public static sef Sj = new sef();
    private volatile boolean EjP;
    private final Map<String, Sj> TKC = new HashMap();
    private Sj sP;

    public static class Sj {
        private final int Sj;
        private final int sP;

        public Sj(int i11, int i12) {
            this.Sj = (i11 < 0 || i11 > 5) ? 3 : i11;
            this.sP = i12 < 10 ? 30 : i12;
        }

        public int Sj() {
            return this.Sj;
        }

        public int sP() {
            return this.sP;
        }
    }

    private int TKC() {
        Sj sj2 = this.sP;
        if (sj2 != null) {
            return sj2.sP();
        }
        return 30;
    }

    private int sP() {
        Sj sj2 = this.sP;
        if (sj2 != null) {
            return sj2.Sj();
        }
        return 3;
    }

    public int Sj(String str) {
        if (!Sj()) {
            return 4;
        }
        Sj sj2 = this.TKC.get(str);
        return sj2 == null ? sP() : sj2.Sj();
    }

    public void Sj(Sj sj2) {
        this.sP = sj2;
    }

    public void Sj(String str, Sj sj2) {
        if (TextUtils.isEmpty(str) || sj2 == null) {
            return;
        }
        this.TKC.put(str, sj2);
    }

    public void Sj(boolean z10) {
        this.EjP = z10;
    }

    public boolean Sj() {
        return this.EjP;
    }

    public int sP(String str) {
        Sj sj2 = this.TKC.get(str);
        return sj2 == null ? TKC() : sj2.sP();
    }
}
