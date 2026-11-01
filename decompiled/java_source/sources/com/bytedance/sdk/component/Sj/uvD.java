package com.bytedance.sdk.component.Sj;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class uvD {
    public final String Dq;
    public final String EjP;
    public final String HiB;
    public final String Jcg;
    public final int Sj;
    public final String TKC;
    public final String sP;
    public final String vS;

    public static final class Sj {
        private String EjP;
        private String HiB;
        private String Jcg;
        private String Sj;
        private String TKC;
        private String sP;
        private String vS;

        private Sj() {
        }

        public Sj EjP(String str) {
            this.EjP = str;
            return this;
        }

        public Sj HiB(String str) {
            this.HiB = str;
            return this;
        }

        public Sj Jcg(String str) {
            this.Jcg = str;
            return this;
        }

        public Sj Sj(String str) {
            this.Sj = str;
            return this;
        }

        public uvD Sj() {
            return new uvD(this);
        }

        public Sj TKC(String str) {
            this.TKC = str;
            return this;
        }

        public Sj sP(String str) {
            this.sP = str;
            return this;
        }

        public Sj vS(String str) {
            this.vS = str;
            return this;
        }
    }

    private uvD(Sj sj2) {
        this.sP = sj2.Sj;
        this.TKC = sj2.sP;
        this.EjP = sj2.TKC;
        this.HiB = sj2.EjP;
        this.vS = sj2.HiB;
        this.Jcg = sj2.vS;
        this.Sj = 1;
        this.Dq = sj2.Jcg;
    }

    private uvD(String str, int i11) {
        this.sP = null;
        this.TKC = null;
        this.EjP = null;
        this.HiB = null;
        this.vS = str;
        this.Jcg = null;
        this.Sj = i11;
        this.Dq = null;
    }

    public static Sj Sj() {
        return new Sj();
    }

    public static uvD Sj(String str, int i11) {
        return new uvD(str, i11);
    }

    public static boolean Sj(uvD uvd) {
        return uvd == null || uvd.Sj != 1 || TextUtils.isEmpty(uvd.EjP) || TextUtils.isEmpty(uvd.HiB);
    }

    public String toString() {
        return "methodName: " + this.EjP + ", params: " + this.HiB + ", callbackId: " + this.vS + ", type: " + this.TKC + ", version: " + this.sP + ", ";
    }
}
