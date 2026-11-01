package com.mbridge.msdk.video.bt.component;

import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f38805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f38806c;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static c f38807a = new c();
    }

    private c() {
        this.f38804a = "handlerNativeResult";
        this.f38805b = 0;
        this.f38806c = 1;
    }

    public static c a() {
        return b.f38807a;
    }

    public void a(int i11, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e11) {
            o0.a("HandlerH5MessageManager", e11.getMessage());
        } catch (Throwable th2) {
            o0.a("HandlerH5MessageManager", th2.getMessage());
        }
    }

    public void a(Object obj, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (!TextUtils.isEmpty(jSONObject.toString())) {
                    String strOptString = jSONObject.optString("uniqueIdentifier");
                    String strOptString2 = jSONObject.optString("name");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("parameters");
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("result");
                        int iOptInt = 0;
                        if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(jSONObjectOptJSONObject.toString())) {
                            iOptInt = jSONObjectOptJSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0);
                        }
                        a(this.f38805b, "receivedMessage", obj);
                        if (strOptString.equalsIgnoreCase("reporter")) {
                            com.mbridge.msdk.mbsignalcommon.Report.a.a().a(obj, strOptString2, jSONArrayOptJSONArray, iOptInt);
                            return;
                        } else {
                            if (strOptString.equalsIgnoreCase("MediaPlayer")) {
                                com.mbridge.msdk.video.bt.component.b.a().a(obj, strOptString2, jSONArrayOptJSONArray, iOptInt);
                                return;
                            }
                            return;
                        }
                    }
                    a(this.f38806c, "module or method is null", obj);
                    return;
                }
            } catch (Exception e11) {
                o0.a("HandlerH5MessageManager", e11.getMessage());
                a(this.f38806c, e11.getMessage(), obj);
                return;
            } catch (Throwable th2) {
                o0.a("HandlerH5MessageManager", th2.getMessage());
                a(this.f38806c, th2.getMessage(), obj);
                return;
            }
        }
        a(this.f38806c, "params is null", obj);
    }
}
