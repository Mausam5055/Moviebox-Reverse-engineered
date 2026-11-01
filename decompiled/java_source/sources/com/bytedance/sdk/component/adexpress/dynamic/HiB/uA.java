package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uA {
    public static String Sj(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectIr = com.bytedance.sdk.component.adexpress.sP.Ir(str);
        if (jSONObjectIr == null || (jSONObjectOptJSONObject = jSONObjectIr.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString("data");
    }

    public static String Sj(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectIr = com.bytedance.sdk.component.adexpress.sP.Ir(str);
        if (jSONObjectIr == null || (jSONObjectOptJSONObject = jSONObjectIr.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString(str2);
    }

    public static JSONObject Sj(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObjectIr = com.bytedance.sdk.component.adexpress.sP.Ir(str);
        if (jSONObjectIr == null) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return Sj(jSONObject2, jSONObjectIr.optJSONObject("themeValues"), jSONObject);
    }

    public static JSONObject Sj(JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONArray == null || jSONArray.length() <= 0 || (jSONObjectOptJSONObject = jSONArray.optJSONObject(0)) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optJSONObject("values");
    }

    public static JSONObject Sj(JSONObject... jSONObjectArr) {
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        jSONObject.put(next, jSONObject2.opt(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void Sj(String str, JSONObject jSONObject) {
        JSONObject jSONObjectIr = com.bytedance.sdk.component.adexpress.sP.Ir(str);
        if (jSONObjectIr == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectIr.optJSONObject("values");
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        Sj(jSONObjectOptJSONObject, jSONObject);
    }

    private static void Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        if (jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject2.has(next)) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static String sP(String str, String str2) {
        if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
            return Sj.Sj(str);
        }
        if (str.indexOf(46) < 0) {
            str = str + ".png";
        }
        return str2 + "static/images/" + str;
    }
}
