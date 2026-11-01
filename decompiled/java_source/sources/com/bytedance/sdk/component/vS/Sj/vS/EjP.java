package com.bytedance.sdk.component.vS.Sj.vS;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private String Dq;
    private final int HiB;
    private String Jcg;
    private final String Sj;
    private final boolean TKC;
    private boolean Ym;
    private final String sP;
    private final String vS;
    private int EjP = -1;
    private int uA = 0;
    private String TEQ = null;

    EjP(String str, String str2, boolean z10, int i11, String str3) {
        this.Sj = str;
        this.sP = str2;
        this.TKC = z10;
        this.HiB = i11;
        this.vS = str3;
    }

    public int Dq() {
        return this.uA;
    }

    public int EjP() {
        return this.EjP;
    }

    public int HiB() {
        return this.HiB;
    }

    public String Jcg() {
        return this.Jcg;
    }

    public Runnable Sj(String str, Map<String, String> map) {
        return Sj.Sj().Sj(this, str, map);
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.EjP = i11;
    }

    public void Sj(String str) {
        this.Jcg = str;
    }

    public void Sj(boolean z10) {
        this.Ym = z10;
    }

    public boolean TEQ() {
        return this.Ym;
    }

    public void TKC(String str) {
        this.TEQ = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(this.Dq)) {
            this.Dq = String.valueOf(this.TEQ);
            return;
        }
        this.Dq += "," + this.TEQ;
    }

    public boolean TKC() {
        return this.TKC;
    }

    public boolean Ym() {
        return this.EjP == -1;
    }

    public String sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.uA = i11;
        if (i11 == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.Jcg)) {
            this.Jcg = String.valueOf(this.uA);
            return;
        }
        this.Jcg += "," + this.uA;
    }

    public void sP(String str) {
        this.Dq = str;
    }

    public String uA() {
        return this.Dq;
    }

    public String vS() {
        return this.vS;
    }
}
