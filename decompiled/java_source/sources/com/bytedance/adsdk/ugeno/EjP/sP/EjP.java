package com.bytedance.adsdk.ugeno.EjP.sP;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.EjP.vS;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Sj {
    public EjP(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
        super(tkc, str, sj2);
    }

    private void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (tkc == null) {
            return;
        }
        for (String str : this.vS.keySet()) {
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "id")) {
                tkc.Sj(str, this.vS.get(str));
            }
        }
        tkc.LqL();
        tkc.sP();
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.sP.Sj
    public void Sj() {
        Map<String, String> map = this.vS;
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = this.vS.get("id");
        if (TextUtils.isEmpty(str)) {
            Sj(this.TKC);
            return;
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.TKC;
        com.bytedance.adsdk.ugeno.sP.TKC tkcSP = tkc.sP(tkc);
        if (tkcSP == null) {
            return;
        }
        Sj(tkcSP.TKC(str));
    }
}
