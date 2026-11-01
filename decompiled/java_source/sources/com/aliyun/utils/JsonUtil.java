package com.aliyun.utils;

import com.cicada.player.utils.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JsonUtil {
    private static final int INT_EMPTY_VALUE = 0;
    private static final String STR_EMPTY_VALUE = "";

    public static JSONArray getArray(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return null;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getJSONArray(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json long value for " + str2);
        }
        return null;
    }

    public static boolean getBoolean(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return false;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json boolean value for " + str2);
        }
        return false;
    }

    public static double getDouble(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return 0.0d;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getDouble(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json double value for " + str2);
        }
        return 0.0d;
    }

    public static int getInt(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return 0;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json int value for " + str2);
        }
        return 0;
    }

    public static JSONObject getJSONObject(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return null;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getJSONObject(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json object value for " + str2);
        }
        return null;
    }

    public static JSONObject getJSONObjectAt(JSONArray jSONArray, int i11) {
        if (jSONArray == null) {
            return null;
        }
        try {
            return jSONArray.getJSONObject(i11);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static long getLong(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return 0L;
        }
        for (String str : strArr) {
            try {
                return jSONObject.getLong(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json long value for " + str2);
        }
        return 0L;
    }

    public static String getString(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            return "";
        }
        for (String str : strArr) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException unused) {
            }
        }
        for (String str2 : strArr) {
            Logger.w("JsonUtil", "No json string value for " + str2);
        }
        return "";
    }
}
