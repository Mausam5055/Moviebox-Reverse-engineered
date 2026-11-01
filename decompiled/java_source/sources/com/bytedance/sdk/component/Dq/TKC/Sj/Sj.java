package com.bytedance.sdk.component.Dq.TKC.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.Dq.TKC.sP;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private long EjP;
    private long HiB;
    private String Sj;
    private long TKC;
    private int sP = 0;
    private long vS;

    public long EjP() {
        return this.EjP;
    }

    public long HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(sP sPVar) {
        synchronized (this) {
            try {
                if (TextUtils.isEmpty(this.Sj)) {
                    this.Sj = sPVar.sP();
                }
                this.TKC += sPVar.vS();
                this.EjP += sPVar.Jcg();
                this.HiB = Math.max(this.HiB, sPVar.vS());
                this.vS = Math.max(this.vS, sPVar.Jcg());
                this.sP++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        sPVar.vS();
        sPVar.Jcg();
        toString();
    }

    public long TKC() {
        return this.TKC;
    }

    public int sP() {
        return this.sP;
    }

    public String toString() {
        return this.Sj + " times=" + this.sP + ",waitMaxTime=" + this.HiB + ",runMaxTime=" + this.vS + ",runTotalTime=" + this.EjP + ",waitTotalTime=" + this.TKC;
    }

    public long vS() {
        return this.vS;
    }
}
