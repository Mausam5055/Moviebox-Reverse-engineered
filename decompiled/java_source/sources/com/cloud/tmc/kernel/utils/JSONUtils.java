package com.cloud.tmc.kernel.utils;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import java.math.BigDecimal;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class JSONUtils {
    public static JsonArray getJsonArray(JsonObject jsonObject, String str, JsonArray jsonArray) {
        if (jsonObject != null && jsonObject.size() != 0) {
            try {
                return jsonObject.get(str).getAsJsonArray();
            } catch (Exception unused) {
            }
        }
        return jsonArray;
    }

    public static JsonObject getJsonObject(JsonObject jsonObject, String str, JsonObject jsonObject2) {
        if (jsonObject == null || jsonObject.size() != 0 || !jsonObject.has(str)) {
            return jsonObject2;
        }
        try {
            return jsonObject.get(str).getAsJsonObject();
        } catch (Exception unused) {
            return jsonObject2;
        }
    }

    public static String getString(JsonObject jsonObject, String str) {
        return getString(jsonObject, str, "");
    }

    public static String getString(JsonObject jsonObject, String str, String str2) {
        if (jsonObject == null || jsonObject.size() == 0 || !jsonObject.has(str)) {
            return str2;
        }
        try {
            String asString = jsonObject.get(str).getAsString();
            return asString != null ? asString : str2;
        } catch (Exception e11) {
            TmcLogger.e(TmcConstants.TAG, "getString exception!", e11);
            return str2;
        }
    }

    public static HashMap<String, Object> jsonToMap(JsonObject jsonObject) {
        HashMap<String, Object> map = new HashMap<>();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                map.put(key, null);
            } else if (value instanceof JsonPrimitive) {
                if (value instanceof Boolean) {
                    map.put(key, (Boolean) value);
                } else if (value instanceof Float) {
                    map.put(key, (Float) value);
                } else if (value instanceof Double) {
                    map.put(key, (Double) value);
                } else if (value instanceof BigDecimal) {
                    map.put(key, Double.valueOf(((BigDecimal) value).doubleValue()));
                } else if (value instanceof Integer) {
                    map.put(key, (Integer) value);
                } else if (value instanceof Long) {
                    map.put(key, Double.valueOf(((Long) value).doubleValue()));
                } else if (value instanceof String) {
                    map.put(key, (String) value);
                } else if (value instanceof ByteBuffer) {
                    map.put(key, (ByteBuffer) value);
                } else if (value instanceof byte[]) {
                    map.put(key, (byte[]) value);
                }
            } else if (value instanceof JsonObject) {
                map.put(key, jsonToMap((JsonObject) value));
            } else {
                map.put(key, value);
            }
        }
        return map;
    }

    public static JsonObject parseObject(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return JsonParser.parseString(str).getAsJsonObject();
        } catch (Exception e11) {
            TmcLogger.e("parseObject error!", e11);
            return null;
        }
    }

    @Nullable
    public static List<String> toStringArray(JsonArray jsonArray) {
        if (jsonArray == null) {
            return null;
        }
        try {
            int size = jsonArray.size();
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(jsonArray.get(i11).getAsString());
            }
            return arrayList;
        } catch (Exception e11) {
            TmcLogger.e("toStringArray error!", e11);
            return null;
        }
    }
}
