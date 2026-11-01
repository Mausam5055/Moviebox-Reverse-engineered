package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ib {
    public static ConcurrentHashMap<Integer, ib> Sj = new ConcurrentHashMap<>();
    private int EjP;
    private int HiB;
    private String vS;
    private String sP = "";
    private String TKC = "";

    public static void TKC(int i11) {
        ib ibVar;
        if (i11 == 0) {
            return;
        }
        if (Sj == null) {
            Sj = new ConcurrentHashMap<>();
        }
        if (!Sj.containsKey(Integer.valueOf(i11)) || (ibVar = Sj.get(Integer.valueOf(i11))) == null) {
            return;
        }
        ibVar.sP(1);
    }

    public static void TKC(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        ib ibVar;
        if (sUVar == null) {
            return;
        }
        int iIf = sUVar.If();
        Integer numValueOf = Integer.valueOf(iIf);
        if (iIf == 0) {
            return;
        }
        if (Sj == null) {
            Sj = new ConcurrentHashMap<>();
        }
        if (!Sj.containsKey(numValueOf) || (ibVar = Sj.get(numValueOf)) == null) {
            return;
        }
        ibVar.Sj(1);
    }

    public static void sP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null || TextUtils.isEmpty(sUVar.mZN())) {
            return;
        }
        int iIf = sUVar.If();
        Integer numValueOf = Integer.valueOf(iIf);
        if (iIf == 0) {
            return;
        }
        if (Sj == null) {
            Sj = new ConcurrentHashMap<>();
        }
        ib ibVar = Sj.containsKey(numValueOf) ? Sj.get(numValueOf) : null;
        if (ibVar == null) {
            ibVar = new ib();
        }
        String strCKW = sUVar.cKW();
        if (TextUtils.isEmpty(strCKW) || !strCKW.equals(ibVar.Sj())) {
            ibVar.vS();
            ibVar.Sj(sUVar);
            Sj.put(numValueOf, ibVar);
        }
    }

    private void vS() {
        this.sP = "";
        this.TKC = "";
        this.EjP = 0;
        this.HiB = 0;
    }

    public int EjP() {
        return this.EjP;
    }

    public int HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.vS;
    }

    public void Sj(int i11) {
        this.EjP = i11;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar != null) {
            String strCKW = sUVar.cKW();
            if (!TextUtils.isEmpty(strCKW)) {
                this.vS = strCKW;
            }
            String strChv = sUVar.Chv();
            if (TextUtils.isEmpty(strChv) && sUVar.Ph()) {
                strChv = sUVar.GMp().uA();
            }
            if (!TextUtils.isEmpty(strChv)) {
                String[] strArrSplit = strChv.split("/");
                if (strArrSplit.length >= 3) {
                    this.sP = strArrSplit[2];
                }
            }
            if (sUVar.tz() == null || TextUtils.isEmpty(sUVar.tz().TKC())) {
                return;
            }
            this.TKC = sUVar.tz().TKC();
        }
    }

    public String TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.HiB = i11;
    }
}
