package com.bytedance.sdk.component.HiB.EjP.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.RiZ;

/* JADX INFO: loaded from: classes2.dex */
public class Sj<T> implements vS {
    private boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc) {
        int iAa = tkc.aa();
        return iAa == 1 || iAa == 2;
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public String Sj() {
        return "bitmap_cache";
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, RiZ riZ, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        Bitmap bitmapSj;
        String strTEQ = tkc.TEQ();
        tkc.Sj();
        com.bytedance.sdk.component.HiB.sP sPVarTzV = tkc.TzV();
        com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVarDNu = tkc.dNu();
        if (sPVarTzV == null || vSVarDNu == null || !sPVarTzV.HiB() || !Sj(tkc) || (bitmapSj = vSVarDNu.Sj(sPVarTzV).Sj(strTEQ)) == null) {
            return true;
        }
        tkc.Sj();
        sj2.Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.EjP().Sj(tkc, bitmapSj, null, false));
        return false;
    }
}
