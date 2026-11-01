package com.bytedance.sdk.openadsdk.core.Ym.Sj;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.Ym.sP.TKC;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sP {
    protected double EjP;
    public int HiB;
    public int Sj;
    protected int TKC;
    protected final Context sP;
    public Sj vS;

    public static class Sj {
        public int Sj;
        public boolean TKC;
        public int sP;
    }

    public sP(Context context, int i11, int i12) {
        this.TKC = 0;
        this.EjP = 0.0d;
        if (i12 > 0 && i11 > 0) {
            this.EjP = ((double) i11) / ((double) i12);
        }
        float fJcg = FPG.Jcg(context);
        if (fJcg != 0.0f && i11 > 0) {
            this.TKC = (int) (i11 / fJcg);
        }
        this.sP = context.getApplicationContext();
    }

    public abstract com.bytedance.sdk.openadsdk.core.Ym.Sj Sj(String str, List<TKC> list);

    protected void Sj(Exception exc, int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", exc.getMessage());
            jSONObject.put("error_code", i11);
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj("load_vast", jSONObject);
        } catch (Exception unused) {
        }
    }

    protected boolean Sj(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException unused) {
            return true;
        }
    }

    protected String sP(String str, List<TKC> list) {
        String strEjP;
        int i11 = this.Sj;
        if (i11 >= 5) {
            return null;
        }
        this.Sj = i11 + 1;
        if (str == null) {
            return null;
        }
        try {
            com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
            sPVarTKC.sP(str);
            com.bytedance.sdk.component.Jcg.sP sPVarSj = sPVarTKC.Sj();
            strEjP = sPVarSj.EjP();
            try {
                sPVarSj.Sj();
            } catch (Exception e11) {
                e = e11;
                Sj(e, 0);
                if (!list.isEmpty()) {
                    TKC.sP(list, com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.WRAPPER_TIMEOUT, -1L, null);
                }
            }
        } catch (Exception e12) {
            e = e12;
            strEjP = null;
        }
        return strEjP;
    }
}
