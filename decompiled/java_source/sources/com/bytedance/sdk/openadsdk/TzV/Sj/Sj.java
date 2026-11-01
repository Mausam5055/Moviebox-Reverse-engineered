package com.bytedance.sdk.openadsdk.TzV.Sj;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.HiB.Dq;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.uA.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.TzV.Sj.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0244Sj {
        void Sj(int i11, String str, Throwable th2);

        void Sj(String str, sP sPVar);
    }

    private int Sj(Ym ym2) {
        Object obj;
        Map<String, String> mapEjP = ym2.EjP();
        if (mapEjP == null || (obj = mapEjP.get(CampaignEx.JSON_KEY_IMAGE_SIZE)) == null || !(obj instanceof Integer)) {
            return 0;
        }
        return ((Integer) obj).intValue();
    }

    protected void Sj(int i11, String str, Throwable th2, InterfaceC0244Sj interfaceC0244Sj) {
        if (interfaceC0244Sj != null) {
            interfaceC0244Sj.Sj(i11, str, th2);
        }
    }

    protected void Sj(Ym ym2, InterfaceC0244Sj interfaceC0244Sj) {
        if (interfaceC0244Sj != null) {
            Object objSP = ym2.sP();
            int iSj = Sj(ym2);
            if (objSP instanceof byte[]) {
                interfaceC0244Sj.Sj(ym2.Sj(), new sP((byte[]) objSP, iSj));
                return;
            }
            if (objSP instanceof Bitmap) {
                interfaceC0244Sj.Sj(ym2.Sj(), new sP((Bitmap) objSP, ym2.TKC() instanceof Bitmap ? (Bitmap) ym2.TKC() : null, iSj));
            } else {
                interfaceC0244Sj.Sj(0, "not bitmap or gif result!", null);
            }
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, final InterfaceC0244Sj interfaceC0244Sj, int i11, int i12, ImageView.ScaleType scaleType, String str, final int i13, sU sUVar) {
        EjP.Sj(sj2.Sj).Sj(sj2.sP).Sj(i11).sP(i12).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).sP(str).Sj(Bitmap.Config.RGB_565).Sj(scaleType).Sj(!TextUtils.isEmpty(str)).Sj(new Dq() { // from class: com.bytedance.sdk.openadsdk.TzV.Sj.Sj.2
            @Override // com.bytedance.sdk.component.HiB.Dq
            public Bitmap Sj(Bitmap bitmap) {
                return i13 <= 0 ? bitmap : com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(dNu.Sj(), bitmap, i13);
            }
        }).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, sj2.Sj, new uvD() { // from class: com.bytedance.sdk.openadsdk.TzV.Sj.Sj.1
            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(int i14, String str2, Throwable th2) {
                Sj.this.Sj(i14, str2, th2, interfaceC0244Sj);
            }

            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(Ym ym2) {
                Sj.this.Sj(ym2, interfaceC0244Sj);
            }
        }));
    }
}
