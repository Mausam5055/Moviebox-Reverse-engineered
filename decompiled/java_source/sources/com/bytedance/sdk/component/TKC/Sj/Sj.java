package com.bytedance.sdk.component.TKC.Sj;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    long Dq;
    long EjP;
    long HiB;
    long Jcg;
    long Sj = SystemClock.elapsedRealtime();
    long TKC;
    long sP;
    long vS;

    public long Dq() {
        return this.EjP;
    }

    public long EjP() {
        return this.Sj;
    }

    public void Fmk() {
        this.Dq = SystemClock.elapsedRealtime();
    }

    public void HiB() {
        this.vS = SystemClock.elapsedRealtime();
    }

    public long Jcg() {
        return this.TKC;
    }

    public void Sj() {
        this.TKC = SystemClock.elapsedRealtime();
    }

    public long TEQ() {
        return this.Jcg;
    }

    public void TKC() {
        this.HiB = SystemClock.elapsedRealtime();
    }

    public void Ym() {
        this.Jcg = SystemClock.elapsedRealtime();
    }

    public void Zq() {
        this.sP = SystemClock.elapsedRealtime();
    }

    public long aa() {
        return this.Dq;
    }

    public void sP() {
        this.EjP = SystemClock.elapsedRealtime();
    }

    public long sef() {
        return this.sP;
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.Sj + ", asyncCallExecTs=" + this.sP + ", requestStartExecTs=" + this.TKC + ", requestConnectStartTs=" + this.EjP + ", requestConnectFinishTs=" + this.HiB + ", reqCallServerStartTs=" + this.Jcg + ", reqCallServerFinishTs=" + this.Dq + '}';
    }

    public long uA() {
        return this.HiB;
    }

    public long vS() {
        return this.vS;
    }
}
