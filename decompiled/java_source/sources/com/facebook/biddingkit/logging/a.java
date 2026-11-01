package com.facebook.biddingkit.logging;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference f24121a = new AtomicReference();

    protected static JSONObject a() {
        Map map = (Map) f24121a.get();
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        } catch (JSONException e11) {
            b.d("BiddingStaticEnvironmentData", "Failed to create json data", e11);
        }
        return jSONObject;
    }

    protected static void b(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("bundle", context.getPackageName());
        map.put("idfa", str);
        map.put("device_make", Build.MANUFACTURER);
        map.put("device_model", Build.MODEL);
        map.put("os", "Android");
        map.put("os_version", Build.VERSION.RELEASE);
        map.put("bidding_kit_version", str2);
        f24121a.set(map);
    }
}
