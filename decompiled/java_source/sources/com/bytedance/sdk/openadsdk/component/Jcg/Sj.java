package com.bytedance.sdk.openadsdk.component.Jcg;

import android.content.Context;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.component.vS;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.multipro.sP;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static int Sj(sU sUVar, int i11) {
        return i11 - sUVar.WxP();
    }

    public static File Sj(Context context, String str, String str2) {
        return Jcg.Sj(context, sP.TKC(), str, str2);
    }

    public static File Sj(String str) {
        return new File(CacheDirFactory.getICacheDir(0).sP() + File.separator + str);
    }

    public static String Sj() {
        return aa.Sj();
    }

    public static void Sj(Context context) {
        try {
            vS.Sj(context).Sj();
        } catch (Throwable unused) {
        }
    }

    public static void Sj(File file) {
        if (file == null) {
            return;
        }
        try {
            Jcg.sP(file);
        } catch (Throwable unused) {
        }
    }

    public static void Sj(JSONObject jSONObject, int i11, boolean z10) {
        try {
            String strDq = uA.sP().Dq();
            int iUA = uA.sP().uA();
            JSONObject jSONObject2 = jSONObject.getJSONObject("creative");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("app_name", strDq);
            if (!z10) {
                jSONObject3.put("app_icon_id", "@".concat(String.valueOf(iUA)));
            } else if (uA.sP().uA() != 0) {
                jSONObject3.put("app_icon_id", "local://pag_open_icon_id");
            }
            jSONObject2.put("open_app_info", jSONObject3);
            if (jSONObject2.optJSONObject("video") == null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("video_duration", dNu.EjP().ib(String.valueOf(i11)));
                jSONObject2.put("video", jSONObject4);
            }
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenUtils", e11.getMessage());
        }
    }

    public static File sP(String str) {
        return Sj(dNu.Sj(), vS.Sj(dNu.Sj()).sP(), str);
    }

    public static String sP() {
        return Jcg.Sj(dNu.Sj(), sP.TKC(), vS.Sj(dNu.Sj()).sP()).getAbsolutePath();
    }
}
