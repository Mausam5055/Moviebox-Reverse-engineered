package com.bytedance.sdk.component.HiB.EjP.sP;

import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.HiB.TzV;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements vS {
    private void Sj(com.bytedance.sdk.component.HiB.sP sPVar, com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVar, String str, byte[] bArr) {
        if (sPVar == null || !sPVar.vS()) {
            return;
        }
        vSVar.sP(sPVar).Sj(str, bArr);
    }

    private byte[] Sj(com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVar, com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        com.bytedance.sdk.component.HiB.EjP ejPTKC = vSVar.TKC();
        tkc.Sj(false);
        try {
            com.bytedance.sdk.component.HiB.vS vSVarSj = ejPTKC.Sj(new com.bytedance.sdk.component.HiB.sP.sP(tkc.Sj(), false, false, tkc.RiZ()));
            if (vSVarSj == null) {
                sj2.Sj(1004, "call is empty", new Exception("call is empty"));
                return null;
            }
            int iSP = vSVarSj.sP();
            if (iSP != 200) {
                Object objTKC = vSVarSj.TKC();
                sj2.Sj(iSP, vSVarSj.EjP(), objTKC instanceof Throwable ? (Throwable) objTKC : null);
                return null;
            }
            byte[] bArr = (byte[]) vSVarSj.TKC();
            if (bArr == null) {
                sj2.Sj(iSP, vSVarSj.EjP(), new Exception("net data is empty"));
                return null;
            }
            Sj(tkc.TzV(), vSVar, tkc.uA(), bArr);
            sP(tkc.TzV(), vSVar, tkc.uA(), bArr);
            return bArr;
        } catch (Throwable th2) {
            sj2.Sj(1004, "net request failed!", th2);
            return null;
        }
    }

    private byte[] Sj(com.bytedance.sdk.component.HiB.sP sPVar, com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVar, String str) {
        vSVar.TKC(sPVar);
        Collection<com.bytedance.sdk.component.HiB.TKC> collectionSP = vSVar.sP();
        if (collectionSP == null) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.HiB.TKC> it = collectionSP.iterator();
        while (it.hasNext()) {
            byte[] bArrSj = it.next().Sj(str);
            if (bArrSj != null) {
                return bArrSj;
            }
        }
        return null;
    }

    private void sP(final com.bytedance.sdk.component.HiB.sP sPVar, final com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVar, final String str, final byte[] bArr) {
        if (sPVar == null || !sPVar.Jcg()) {
            return;
        }
        vSVar.vS().submit(new Runnable() { // from class: com.bytedance.sdk.component.HiB.EjP.sP.TKC.1
            @Override // java.lang.Runnable
            public void run() {
                vSVar.TKC(sPVar).Sj(str, bArr);
            }
        });
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public String Sj() {
        return "data_intercept";
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, RiZ riZ, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        com.bytedance.sdk.component.HiB.sP sPVarTzV = tkc.TzV();
        com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVarDNu = tkc.dNu();
        byte[] bArrSj = null;
        if (sPVarTzV != null && vSVarDNu != null) {
            if (sPVarTzV.vS()) {
                if (riZ != null) {
                    riZ.Sj("data_cache", tkc);
                }
                TzV tzVSP = vSVarDNu.sP(sPVarTzV);
                bArrSj = tzVSP != null ? tzVSP.Sj(tkc.uA()) : null;
                if (riZ != null) {
                    riZ.sP("data_cache", tkc);
                }
                tkc.uA();
                tkc.Sj();
            }
            if (sPVarTzV.Jcg() && bArrSj == null) {
                if (riZ != null) {
                    riZ.Sj("disk_cache", tkc);
                }
                byte[] bArrSj2 = Sj(sPVarTzV, vSVarDNu, tkc.uA());
                if (bArrSj2 != null) {
                    Sj(tkc.TzV(), vSVarDNu, tkc.uA(), bArrSj2);
                }
                if (riZ != null) {
                    riZ.sP("disk_cache", tkc);
                }
                tkc.uA();
                tkc.Sj();
                bArrSj = bArrSj2;
            }
        }
        if (vSVarDNu != null && bArrSj == null) {
            if (riZ != null) {
                riZ.Sj("net_request", tkc);
            }
            bArrSj = Sj(vSVarDNu, tkc, sj2);
            tkc.uA();
            tkc.Sj();
            if (riZ != null) {
                riZ.sP("net_request", tkc);
            }
        }
        if (bArrSj != null) {
            tkc.Sj(bArrSj);
            return true;
        }
        tkc.uA();
        tkc.Sj();
        return false;
    }
}
