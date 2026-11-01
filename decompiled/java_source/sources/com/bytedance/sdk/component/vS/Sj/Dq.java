package com.bytedance.sdk.component.vS.Sj;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private static Dq Fmk;
    private static volatile com.bytedance.sdk.component.vS.Sj.HiB.Sj TEQ;
    private volatile boolean Dq;
    private volatile com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
    private volatile com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj HiB;
    private volatile com.bytedance.sdk.component.vS.Sj.Sj.HiB Jcg;
    private volatile Context Sj;
    private volatile com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;
    private volatile com.bytedance.sdk.component.vS.Sj.sP.TKC Ym;
    private long Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private volatile Map<Integer, com.bytedance.sdk.component.vS.Sj.sP.TKC> f20915aa;
    private volatile com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sP;
    private final AtomicBoolean sef = new AtomicBoolean(false);
    private volatile HiB uA;
    private volatile com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj vS;

    private Dq() {
    }

    public static com.bytedance.sdk.component.vS.Sj.HiB.Sj HiB() {
        if (TEQ == null) {
            synchronized (Dq.class) {
                try {
                    if (TEQ == null) {
                        TEQ = new com.bytedance.sdk.component.vS.Sj.HiB.sP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return TEQ;
    }

    public static synchronized Dq Jcg() {
        try {
            if (Fmk == null) {
                Fmk = new Dq();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return Fmk;
    }

    public com.bytedance.sdk.component.vS.Sj.sP.TKC Dq() {
        return this.Ym;
    }

    public com.bytedance.sdk.component.vS.Sj.Sj.HiB EjP() {
        return this.Jcg;
    }

    public void EjP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        this.EjP = sj2;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Fmk() {
        return this.TKC;
    }

    public void HiB(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        this.HiB = sj2;
    }

    public void Sj(long j11) {
        this.Zq = j11;
    }

    public void Sj(Context context) {
        this.Sj = context;
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        if (sj2 == null) {
            return;
        }
        sj2.Sj(System.currentTimeMillis());
        com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.Sj(sj2, sj2.EjP());
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        this.vS = sj2;
    }

    public void Sj(HiB hiB) {
        this.uA = hiB;
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.Sj.HiB hiB) {
        this.Jcg = hiB;
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.sP.TKC tkc) {
        this.Ym = tkc;
    }

    public void Sj(String str, List<String> list, boolean z10, Map<String, String> map, int i11, String str2) {
        com.bytedance.sdk.component.vS.Sj.vS.Sj.Sj().Sj(str, list, z10, map, i11, str2);
    }

    public void Sj(String str, boolean z10) {
        com.bytedance.sdk.component.vS.Sj.vS.Sj.Sj().Sj(str, z10);
    }

    public void Sj(boolean z10) {
        this.sef.set(z10);
    }

    public boolean Sj() {
        return this.sef.get();
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TEQ() {
        return this.vS;
    }

    public Map<Integer, com.bytedance.sdk.component.vS.Sj.sP.TKC> TKC() {
        return this.f20915aa;
    }

    public void TKC(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        this.TKC = sj2;
    }

    public void Ym() {
        com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.TKC();
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Zq() {
        return this.HiB;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj aa() {
        return this.sP;
    }

    public long dNu() {
        return this.Zq * 86400000;
    }

    public void sP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        this.sP = sj2;
    }

    public void sP(boolean z10) {
        this.Dq = z10;
    }

    public boolean sP() {
        return this.Dq;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sef() {
        return this.EjP;
    }

    public void uA() {
        com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.sP();
    }

    public HiB uvD() {
        return this.uA;
    }

    public Context vS() {
        return this.Sj;
    }
}
