package com.bytedance.sdk.openadsdk.kF.Sj;

import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    public static boolean Sj = false;
    public static String TKC = "engaged_view";
    public static int sP = 6;

    public static void Sj(sU sUVar) {
        sP sPVarTKC = TKC(sUVar);
        if (sPVarTKC == null) {
            return;
        }
        sPVarTKC.Sj();
    }

    public static void Sj(sU sUVar, int i11) {
        sP sPVarTKC = TKC(sUVar);
        if (sPVarTKC == null || sPVarTKC.TKC()) {
            return;
        }
        sPVarTKC.Sj(i11);
    }

    public static void Sj(sU sUVar, boolean z10) {
        sP sPVarTKC = TKC(sUVar);
        if (sPVarTKC == null || sPVarTKC.TKC()) {
            return;
        }
        sPVarTKC.Sj(z10);
        sPVarTKC.Sj(z10 ? 4 : 8);
    }

    private static sP TKC(sU sUVar) {
        if (sUVar == null || !sUVar.VnJ()) {
            return null;
        }
        return sUVar.YLl();
    }

    public static void sP(sU sUVar) {
        sP sPVarTKC = TKC(sUVar);
        if (sPVarTKC == null) {
            return;
        }
        sPVarTKC.sP();
    }
}
