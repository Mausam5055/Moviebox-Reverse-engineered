package com.bytedance.sdk.openadsdk.core.TEQ.EjP;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.EjP.vS;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.adsdk.ugeno.core.uA;
import com.bytedance.adsdk.ugeno.sP.TKC;
import com.bytedance.sdk.openadsdk.core.TEQ.vS.EjP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj implements Fmk, aa {
    private Fmk EjP;
    private final Context Sj;
    private InterfaceC0257Sj TKC;
    private TKC<View> sP;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj$Sj, reason: collision with other inner class name */
    interface InterfaceC0257Sj {
        void Sj(TEQ teq);
    }

    public Sj(Context context) {
        this.Sj = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(JSONObject jSONObject, JSONObject jSONObject2, EjP ejP) {
        try {
            uA uAVar = new uA(this.Sj);
            TKC<View> tkcSj = uAVar.Sj(jSONObject);
            this.sP = tkcSj;
            if (tkcSj == null) {
                if (ejP != null) {
                    ejP.Sj(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "ugen render fail");
                    return;
                }
                return;
            }
            View viewYm = tkcSj.Ym();
            if (viewYm != null) {
                viewYm.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
            uAVar.Sj((aa) this);
            uAVar.Sj((Fmk) this);
            if (jSONObject2 != null) {
                try {
                    jSONObject2.put(TmcConstants.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.aa.sP());
                    jSONObject2.put("os", "Android");
                } catch (JSONException unused) {
                }
            }
            uAVar.sP(jSONObject2);
            if (ejP != null) {
                ejP.Sj(this.sP);
            }
        } catch (Exception e11) {
            if (ejP != null) {
                ejP.Sj(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "ugen render fail exception is" + e11.getMessage());
            }
        }
    }

    public void Sj(Fmk fmk) {
        this.EjP = fmk;
    }

    @Override // com.bytedance.adsdk.ugeno.core.aa
    public void Sj(TEQ teq, aa.sP sPVar, aa.Sj sj2) {
        InterfaceC0257Sj interfaceC0257Sj;
        if (teq == null) {
            return;
        }
        if ((teq.sP() == 1 || teq.sP() == 4) && (interfaceC0257Sj = this.TKC) != null) {
            interfaceC0257Sj.Sj(teq);
        }
        if (sPVar == null || teq.EjP() == null) {
            return;
        }
        sPVar.Sj(teq.EjP());
    }

    @Override // com.bytedance.adsdk.ugeno.core.Fmk
    public void Sj(TKC tkc, MotionEvent motionEvent) {
        Fmk fmk = this.EjP;
        if (fmk != null) {
            fmk.Sj(tkc, motionEvent);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.aa
    public void Sj(TKC tkc, String str, vS.Sj sj2) {
    }

    public void Sj(InterfaceC0257Sj interfaceC0257Sj) {
        this.TKC = interfaceC0257Sj;
    }

    public void Sj(final JSONObject jSONObject, final JSONObject jSONObject2, final EjP ejP) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            sP(jSONObject, jSONObject2, ejP);
        } else {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj.this.sP(jSONObject, jSONObject2, ejP);
                }
            });
        }
    }
}
