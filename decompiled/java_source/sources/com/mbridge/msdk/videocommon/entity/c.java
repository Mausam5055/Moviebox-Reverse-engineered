package com.mbridge.msdk.videocommon.entity;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39960b;

    public c(String str, int i11) {
        this.f39959a = str;
        this.f39960b = i11;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[Catch: Exception -> 0x0015, TRY_LEAVE, TryCatch #0 {Exception -> 0x0015, blocks: (B:3:0x0001, B:5:0x000f, B:14:0x002c, B:10:0x0019, B:12:0x001f), top: B:18:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public static c a(String str) {
        c cVarB;
        c cVar = null;
        try {
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (!TextUtils.isEmpty(str)) {
                if (aVarC != null && aVarC.g() != null) {
                    cVarB = aVarC.g().get(str);
                }
                if (cVar == null) {
                    return b();
                }
                return cVar;
            }
            cVarB = b();
            cVar = cVarB;
            if (cVar == null) {
                return b();
            }
            return cVar;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static c a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String strOptString = jSONObject.optString("name");
            int iOptInt = jSONObject.optInt(RewardPlus.AMOUNT);
            jSONObject.optString("id");
            return new c(strOptString, iOptInt);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Map<String, c> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                map.put(jSONObjectOptJSONObject.optString("id"), new c(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.optInt(RewardPlus.AMOUNT)));
            }
            return map;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static c b() {
        return new c("Virtual Item", 1);
    }

    public int a() {
        return this.f39960b;
    }

    public void a(int i11) {
        this.f39960b = i11;
    }

    public void b(String str) {
        this.f39959a = str;
    }

    public String c() {
        return this.f39959a;
    }

    public String toString() {
        return "Reward{name='" + this.f39959a + "', amount=" + this.f39960b + '}';
    }
}
