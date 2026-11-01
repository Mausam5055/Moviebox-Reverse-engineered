package com.bytedance.adsdk.ugeno.core.sP;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bytedance.adsdk.ugeno.Jcg.uA;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements uA.Sj {
    private Context EjP;
    private TEQ HiB;
    private Handler Jcg = new uA(Looper.getMainLooper(), this);
    private boolean Sj;
    private aa TKC;
    private int sP;
    private com.bytedance.adsdk.ugeno.sP.TKC vS;

    public HiB(Context context, TEQ teq, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.EjP = context;
        this.HiB = teq;
        this.vS = tkc;
    }

    public void Sj() {
        TEQ teq = this.HiB;
        if (teq == null) {
            return;
        }
        JSONObject jSONObjectTKC = teq.TKC();
        try {
            this.sP = Integer.parseInt(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectTKC.optString("interval", "8000"), this.vS.aa()));
            this.Sj = jSONObjectTKC.optBoolean("repeat");
            this.Jcg.sendEmptyMessageDelayed(1001, this.sP);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Jcg.uA.Sj
    public void Sj(Message message) {
        if (message.what != 1001) {
            return;
        }
        aa aaVar = this.TKC;
        if (aaVar != null) {
            TEQ teq = this.HiB;
            com.bytedance.adsdk.ugeno.sP.TKC tkc = this.vS;
            aaVar.Sj(teq, tkc, tkc);
        }
        if (this.Sj) {
            this.Jcg.sendEmptyMessageDelayed(1001, this.sP);
        } else {
            this.Jcg.removeMessages(1001);
        }
    }

    public void Sj(aa aaVar) {
        this.TKC = aaVar;
    }
}
