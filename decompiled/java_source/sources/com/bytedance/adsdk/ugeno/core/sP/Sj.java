package com.bytedance.adsdk.ugeno.core.sP;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Jcg.uA;
import com.bytedance.adsdk.ugeno.core.Jcg;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements uA.Sj {
    private TEQ EjP;
    private com.bytedance.adsdk.ugeno.sP.TKC HiB;
    private int Sj;
    private Context TKC;
    private aa sP;
    private Handler vS = new uA(Looper.getMainLooper(), this);

    public Sj(Context context, TEQ teq, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.TKC = context;
        this.EjP = teq;
        this.HiB = tkc;
    }

    public void Sj() {
        TEQ teq = this.EjP;
        if (teq == null) {
            return;
        }
        try {
            int i11 = Integer.parseInt(com.bytedance.adsdk.ugeno.TKC.sP.Sj(teq.TKC().optString("delay"), this.HiB.aa()));
            this.Sj = i11;
            this.vS.sendEmptyMessageDelayed(1001, i11);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Jcg.uA.Sj
    public void Sj(Message message) {
        if (message.what != 1001) {
            return;
        }
        JSONObject jSONObjectTKC = this.EjP.TKC();
        if (TextUtils.equals(jSONObjectTKC.optString(NativeComponentConstants.KEY_COMPONENT_TYPE), "onAnimation")) {
            String strOptString = jSONObjectTKC.optString("nodeId");
            com.bytedance.adsdk.ugeno.sP.TKC tkc = this.HiB;
            com.bytedance.adsdk.ugeno.sP.TKC TKC = tkc.sP(tkc).TKC(strOptString);
            new Jcg(TKC.Ym(), com.bytedance.adsdk.ugeno.core.Sj.Sj(jSONObjectTKC.optJSONObject("animatorSet"), TKC)).Sj();
        } else {
            aa aaVar = this.sP;
            if (aaVar != null) {
                TEQ teq = this.EjP;
                com.bytedance.adsdk.ugeno.sP.TKC tkc2 = this.HiB;
                aaVar.Sj(teq, tkc2, tkc2);
            }
        }
        this.vS.removeMessages(1001);
    }

    public void Sj(aa aaVar) {
        this.sP = aaVar;
    }
}
