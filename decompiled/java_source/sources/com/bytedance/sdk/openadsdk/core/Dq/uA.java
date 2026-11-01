package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends com.bytedance.sdk.openadsdk.core.sP.sP {
    public uA(@NonNull Context context, @NonNull com.bytedance.sdk.openadsdk.core.model.sU sUVar, @NonNull String str, int i11) {
        super(context, sUVar, str, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.sP
    protected com.bytedance.sdk.openadsdk.core.model.TEQ Sj(float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, long j11, long j12, View view, View view2, String str, float f15, int i11, float f16, int i12, JSONObject jSONObject, JSONObject jSONObject2) {
        float f17;
        float f18;
        float f19;
        float fSP;
        int i13;
        int i14;
        int i15;
        long j13;
        long j14;
        char c11;
        int iSP;
        int iSP2;
        int[] iArrSj = FPG.Sj(view);
        int i16 = 0;
        if (iArrSj == null || iArrSj.length != 2) {
            f17 = f11;
            f18 = f12;
            f19 = f13;
            fSP = f14;
            i13 = 0;
            i14 = 0;
        } else {
            i13 = iArrSj[0];
            i14 = iArrSj[1];
            if (this.sU == 0) {
                float fSP2 = (FPG.sP(this.EjP, f11) + i13) - 0.5f;
                float fSP3 = (FPG.sP(this.EjP, f12) + i14) - 0.5f;
                float fSP4 = (FPG.sP(this.EjP, f13) + i13) - 0.5f;
                fSP = (FPG.sP(this.EjP, f14) + i14) - 0.5f;
                f19 = fSP4;
                f17 = fSP2;
                f18 = fSP3;
            } else {
                f17 = f11;
                f18 = f12;
                f19 = f13;
                fSP = f14;
            }
        }
        int[] iArrSj2 = new int[2];
        int[] iArrTKC = new int[2];
        com.bytedance.sdk.openadsdk.core.model.sef sefVar = this.HiB;
        if (sefVar != null) {
            j13 = sefVar.HiB;
            j14 = sefVar.vS;
            if (this.sU == 0) {
                iArrSj2[0] = FPG.sP(this.EjP, sefVar.Jcg) + i13;
                iArrSj2[1] = FPG.sP(this.EjP, this.HiB.Dq) + i14;
                iSP = FPG.sP(this.EjP, this.HiB.uA);
                iSP2 = FPG.sP(this.EjP, this.HiB.TEQ);
                c11 = 0;
                i15 = 1;
            } else {
                c11 = 0;
                iArrSj2[0] = sefVar.Jcg;
                i15 = 1;
                iArrSj2[1] = sefVar.Dq;
                iSP = sefVar.uA;
                iSP2 = sefVar.TEQ;
            }
            iArrTKC[c11] = iSP;
            iArrTKC[i15] = iSP2;
            if (iSP == 0 && iSP2 == 0 && view2 != null) {
                iArrSj2 = FPG.Sj(view2);
                iArrTKC = FPG.TKC(view2);
            }
            i16 = 0;
        } else {
            i15 = 1;
            j13 = j11;
            j14 = j12;
        }
        this.sU = i16;
        return new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().vS(f17).HiB(f18).EjP(f19).TKC(fSP).sP(j13).Sj(j14).sP(iArrSj).Sj(iArrSj2).TKC(FPG.TKC(view)).EjP(iArrTKC).EjP(this.ley).HiB(this.LqL).vS(this.Yf).sP(com.bytedance.sdk.openadsdk.core.uA.sP().Sj() ? i15 : 2).Sj(sparseArray).Sj(str).Sj(i12).Sj(jSONObject).sP(jSONObject2).Sj();
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sef sefVar) {
        this.HiB = sefVar;
    }
}
