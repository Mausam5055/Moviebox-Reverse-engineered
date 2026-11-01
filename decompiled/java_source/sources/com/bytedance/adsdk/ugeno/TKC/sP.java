package com.bytedance.adsdk.ugeno.TKC;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.HiB;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static String Sj(String str, JSONObject jSONObject) {
        Sj sjTKC;
        Sj.InterfaceC0202Sj interfaceC0202SjSj;
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                return (!str.startsWith("${") || !str.endsWith("}") || (sjTKC = HiB.Sj().TKC()) == null || (interfaceC0202SjSj = sjTKC.Sj(str.substring(2, str.length() + (-1)))) == null) ? str : (String) interfaceC0202SjSj.Sj(jSONObject);
            } catch (Throwable unused) {
            }
        }
        return str;
    }
}
