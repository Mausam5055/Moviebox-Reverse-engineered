package com.bytedance.sdk.component.Sj;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj {
    protected String HiB;
    Jcg Jcg;
    protected Context Sj;
    protected Dq TKC;
    protected Fmk sP;
    protected Handler EjP = new Handler(Looper.getMainLooper());
    protected volatile boolean vS = false;
    private final Map<String, Jcg> Dq = new HashMap();

    protected Sj() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public uvD Sj(JSONObject jSONObject) {
        String strOptString;
        if (this.vS) {
            return null;
        }
        String strOptString2 = jSONObject.optString("__callback_id");
        String strOptString3 = jSONObject.optString("func");
        if (Sj() == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String strValueOf = "";
            try {
                Object objOpt = jSONObject.opt("params");
                if (objOpt == null) {
                    strOptString = strValueOf;
                } else if (objOpt instanceof JSONObject) {
                    strOptString = String.valueOf((JSONObject) objOpt);
                } else {
                    strValueOf = objOpt instanceof String ? (String) objOpt : String.valueOf(objOpt);
                    strOptString = strValueOf;
                }
            } catch (Throwable unused) {
                strOptString = jSONObject.optString("params");
            }
            String string2 = jSONObject.getString("JSSDK");
            return uvD.Sj().Sj(string2).sP(string).TKC(strOptString3).EjP(strOptString).HiB(strOptString2).vS(jSONObject.optString("namespace")).Jcg(jSONObject.optString("__iframe_url")).Sj();
        } catch (JSONException unused2) {
            return uvD.Sj(strOptString2, -1);
        }
    }

    private Jcg sP(String str) {
        return (TextUtils.equals(str, this.HiB) || TextUtils.isEmpty(str)) ? this.Jcg : this.Dq.get(str);
    }

    protected abstract Context Sj(TEQ teq);

    protected abstract String Sj();

    final void Sj(TEQ teq, dx dxVar) {
        this.Sj = Sj(teq);
        this.TKC = teq.EjP;
        this.sP = teq.uA;
        this.Jcg = new Jcg(teq, this, dxVar);
        this.HiB = teq.Ym;
        sP(teq);
    }

    protected final void Sj(uvD uvd) {
        String strSj;
        if (this.vS || (strSj = Sj()) == null) {
            return;
        }
        Jcg jcgSP = sP(uvd.Jcg);
        if (jcgSP == null) {
            uvd.toString();
            if (this.sP != null) {
                Sj();
            }
            sP(kF.Sj(new TzV(-4, "Namespace " + uvd.Jcg + " unknown.")), uvd);
            return;
        }
        vS vSVar = new vS();
        vSVar.sP = strSj;
        vSVar.Sj = this.Sj;
        vSVar.TKC = jcgSP;
        try {
            Jcg.Sj Sj = jcgSP.Sj(uvd, vSVar);
            if (Sj != null) {
                if (Sj.Sj) {
                    sP(Sj.sP, uvd);
                }
                if (this.sP != null) {
                    Sj();
                    return;
                }
                return;
            }
            uvd.toString();
            if (this.sP != null) {
                Sj();
            }
            sP(kF.Sj(new TzV(-2, "Function " + uvd.EjP + " is not registered.")), uvd);
        } catch (Exception e11) {
            uvd.toString();
            sP(kF.Sj(e11), uvd);
        }
    }

    protected abstract void Sj(String str);

    protected void Sj(String str, uvD uvd) {
        Sj(str);
    }

    protected void invokeMethod(final String str) {
        if (this.vS) {
            return;
        }
        this.EjP.post(new Runnable() { // from class: com.bytedance.sdk.component.Sj.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                uvD uvdSj;
                if (Sj.this.vS) {
                    return;
                }
                try {
                    uvdSj = Sj.this.Sj(new JSONObject(str));
                } catch (Exception unused) {
                    uvdSj = null;
                }
                if (!uvD.Sj(uvdSj)) {
                    Sj.this.Sj(uvdSj);
                    return;
                }
                Objects.toString(uvdSj);
                if (uvdSj != null) {
                    Sj.this.sP(kF.Sj(new TzV(uvdSj.Sj, "Failed to parse invocation.")), uvdSj);
                }
            }
        });
    }

    protected void sP() {
        this.Jcg.Sj();
        Iterator<Jcg> it = this.Dq.values().iterator();
        while (it.hasNext()) {
            it.next().Sj();
        }
        this.EjP.removeCallbacksAndMessages(null);
        this.vS = true;
    }

    protected abstract void sP(TEQ teq);

    final void sP(String str, uvD uvd) {
        JSONObject jSONObject;
        if (this.vS || TextUtils.isEmpty(uvd.vS)) {
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            uA.Sj(new IllegalArgumentException("Illegal callback data: ".concat(str)));
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        Sj(Zq.Sj().Sj("__msg_type", "callback").Sj("__callback_id", uvd.vS).Sj("__params", jSONObject).sP(), uvd);
    }
}
