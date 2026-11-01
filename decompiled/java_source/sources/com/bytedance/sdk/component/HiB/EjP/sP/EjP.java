package com.bytedance.sdk.component.HiB.EjP.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.utils.Ym;

/* JADX INFO: loaded from: classes2.dex */
public class EjP<T> implements vS {
    private void Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, byte[] bArr, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        try {
            com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVarDNu = tkc.dNu();
            Bitmap bitmapSj = vSVarDNu.Sj(tkc).Sj(bArr);
            if (bitmapSj == null) {
                tkc.TEQ();
                tkc.Sj();
                sj2.Sj(1002, "decode failed bitmap null", new Exception("decode failed bitmap null"));
                return;
            }
            tkc.TEQ();
            tkc.Sj();
            bitmapSj.getWidth();
            bitmapSj.getHeight();
            bitmapSj.getByteCount();
            sj2.Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.EjP().Sj(tkc, bitmapSj, null, false));
            Sj(tkc.TzV(), vSVarDNu, tkc.TEQ(), bitmapSj);
        } catch (Throwable th2) {
            tkc.TEQ();
            tkc.Sj();
            sj2.Sj(1002, "decode failed:" + th2.getMessage(), th2);
        }
    }

    private void Sj(com.bytedance.sdk.component.HiB.sP sPVar, com.bytedance.sdk.component.HiB.EjP.TKC.vS vSVar, String str, Bitmap bitmap) {
        if (sPVar == null || vSVar == null || !sPVar.HiB()) {
            return;
        }
        vSVar.Sj(sPVar).Sj(str, bitmap);
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public String Sj() {
        return "decode";
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, RiZ riZ, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        byte[] bArrSef = tkc.sef();
        if (bArrSef == null) {
            sj2.Sj(2000, "imageData is empty", new Exception("imageData is empty"));
            return false;
        }
        int iAa = tkc.aa();
        tkc.Sj(bArrSef.length);
        if (iAa != 2) {
            if (iAa != 3) {
                boolean zSP = com.bytedance.sdk.component.utils.vS.sP(bArrSef);
                boolean zSj = Ym.Sj(bArrSef, 0);
                if (zSP || zSj) {
                    sj2.Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.EjP().Sj(tkc, bArrSef, null, zSP));
                } else if (com.bytedance.sdk.component.utils.vS.Sj(bArrSef)) {
                    Sj(tkc, bArrSef, sj2);
                } else {
                    sj2.Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.EjP().Sj(tkc, bArrSef, null, false));
                }
            } else {
                sj2.Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.EjP().Sj(tkc, bArrSef, null, com.bytedance.sdk.component.utils.vS.sP(bArrSef)));
            }
        } else if (com.bytedance.sdk.component.utils.vS.Sj(bArrSef)) {
            Sj(tkc, bArrSef, sj2);
        } else {
            sj2.Sj(1001, "result type is bit but data not image", new Exception("not image format"));
        }
        return false;
    }
}
