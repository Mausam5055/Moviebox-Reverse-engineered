package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.EjP.TEQ;
import com.bytedance.adsdk.ugeno.EjP.Ym;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj {
    protected String Dq;
    protected com.bytedance.adsdk.ugeno.EjP.vS.Sj EjP;
    protected Map<String, String> HiB;
    protected String Jcg;
    protected Ym Sj;
    protected Context TEQ;
    protected com.bytedance.adsdk.ugeno.EjP.vS TKC;
    protected com.bytedance.adsdk.ugeno.sP.TKC sP;
    protected String uA;
    protected String vS;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.EjP.EjP.Sj$Sj, reason: collision with other inner class name */
    public static class C0197Sj {
        public static Sj Sj(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject, JSONObject jSONObject2) {
            com.bytedance.adsdk.ugeno.EjP.vS vSVarSj;
            com.bytedance.adsdk.ugeno.EjP.vS.Sj Sj;
            if (tkc == null || jSONObject == null || (vSVarSj = com.bytedance.adsdk.ugeno.EjP.vS.Sj(jSONObject, jSONObject2)) == null || (Sj = vSVarSj.Sj()) == null) {
                return null;
            }
            String strSj = Sj.Sj();
            if (TextUtils.equals(strSj, "custom")) {
                sP sPVar = new sP(context);
                sPVar.Sj(tkc);
                sPVar.Sj(vSVarSj);
                sPVar.Sj();
                return sPVar;
            }
            com.bytedance.adsdk.ugeno.EjP.Jcg jcgSj = (TextUtils.isEmpty(strSj) || TextUtils.equals(strSj, FrameworkConstants.GLOBAL_KEY_GLOBAL)) ? TEQ.Sj(Sj.sP()) : TEQ.Sj(Sj.HiB());
            if (jcgSj == null) {
                return null;
            }
            Sj Sj2 = jcgSj.Sj(context);
            Sj2.Sj(tkc);
            Sj2.Sj(vSVarSj);
            Sj2.Sj();
            return Sj2;
        }
    }

    public Sj(Context context) {
        this.TEQ = context;
    }

    public void Sj() {
        this.EjP = this.TKC.Sj();
        com.bytedance.adsdk.ugeno.EjP.vS vSVar = this.TKC;
        if (vSVar == null) {
            return;
        }
        com.bytedance.adsdk.ugeno.EjP.vS.Sj Sj = vSVar.Sj();
        this.EjP = Sj;
        if (Sj == null) {
            return;
        }
        this.HiB = Sj.TKC();
        this.vS = this.EjP.sP();
        this.Jcg = this.EjP.Sj();
        this.Dq = this.EjP.EjP();
        this.uA = this.EjP.HiB();
    }

    public void Sj(Ym ym2) {
        this.Sj = ym2;
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP.vS vSVar) {
        this.TKC = vSVar;
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.sP = tkc;
    }

    public abstract boolean Sj(Object... objArr);

    public String TKC() {
        return this.uA;
    }

    public String sP() {
        return this.vS;
    }
}
