package com.bytedance.sdk.component.Sj;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class Dq {
    private aa Sj;

    private Dq(aa aaVar) {
        this.Sj = aaVar;
    }

    static Dq Sj(aa aaVar) {
        return new Dq(aaVar);
    }

    private static void Sj(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        uA.Sj(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }

    <T> T Sj(String str, Type type) throws JSONException {
        Sj(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.Sj.Sj(str, type);
    }

    <T> String Sj(T t11) {
        if (t11 == null) {
            return "{}";
        }
        String string = ((t11 instanceof JSONObject) || (t11 instanceof JSONArray)) ? t11.toString() : this.Sj.Sj(t11);
        Sj(string);
        return string;
    }
}
