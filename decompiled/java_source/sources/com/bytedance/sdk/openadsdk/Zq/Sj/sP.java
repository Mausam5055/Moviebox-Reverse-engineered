package com.bytedance.sdk.openadsdk.Zq.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private int EjP;
    private boolean HiB;
    private int Jcg;
    private String Sj;
    private String TKC;
    private sU sP;
    private String vS;
    private int Dq = 0;
    private int uA = 0;

    public int Dq() {
        return this.Dq;
    }

    public int EjP() {
        return this.EjP;
    }

    public void EjP(int i11) {
        this.uA = i11;
    }

    public boolean HiB() {
        return this.HiB;
    }

    public int Jcg() {
        return this.Jcg;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.EjP = i11;
    }

    public void Sj(sU sUVar) {
        this.sP = sUVar;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(boolean z10) {
        this.HiB = z10;
    }

    public String TKC() {
        sU sUVar;
        if (TextUtils.isEmpty(this.TKC) && (sUVar = this.sP) != null) {
            this.TKC = Mts.Sj(sUVar);
        }
        return this.TKC;
    }

    public void TKC(int i11) {
        this.Dq = i11;
    }

    public void TKC(String str) {
        this.vS = str;
    }

    public sU sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.Jcg = i11;
    }

    public void sP(String str) {
        this.TKC = str;
    }

    public int uA() {
        return this.uA;
    }

    public String vS() {
        return this.vS;
    }
}
