package com.bytedance.adsdk.ugeno.EjP;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class aa {
    public static vS.Sj Sj(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        vS.Sj sj2 = new vS.Sj();
        Uri uri = Uri.parse(str);
        if (uri == null) {
            return null;
        }
        sj2.TKC(str);
        if (!TextUtils.isEmpty(uri.getScheme())) {
            sj2.Sj(uri.getScheme());
        }
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            authority = uri.getPath();
        }
        sj2.sP(authority);
        sj2.EjP(sj2.Sj() + "://" + sj2.sP());
        HashMap map = new HashMap();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null && queryParameterNames.size() > 0) {
            for (String str2 : queryParameterNames) {
                map.put(str2, com.bytedance.adsdk.ugeno.TKC.sP.Sj(uri.getQueryParameter(str2), jSONObject));
            }
        }
        sj2.Sj(map);
        return sj2;
    }
}
