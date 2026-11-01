package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Integer> f39969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, com.mbridge.msdk.videocommon.entity.c> f39970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f39971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f39972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f39973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f39974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f39975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f39976h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f39978j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f39977i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f39979k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f39980l = "";

    public static a a(String str) {
        a aVar = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                a aVar2 = new a();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("caplist");
                    aVar2.b(jSONObject.optString("ab_id", ""));
                    aVar2.c(jSONObject.optString("rid", ""));
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                        HashMap map = new HashMap();
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys != null && itKeys.hasNext()) {
                            String next = itKeys.next();
                            int iOptInt = jSONObjectOptJSONObject.optInt(next, 1000);
                            if (!TextUtils.isEmpty(next)) {
                                if (TextUtils.isEmpty(next) || iOptInt != 0) {
                                    map.put(next, Integer.valueOf(iOptInt));
                                } else {
                                    map.put(next, 1000);
                                }
                            }
                        }
                        aVar2.a(map);
                    }
                    aVar2.b(com.mbridge.msdk.videocommon.entity.c.a(jSONObject.optJSONArray("reward")));
                    aVar2.c(jSONObject.optLong("getpf", 43200L));
                    aVar2.e(jSONObject.optLong("ruct", 5400L));
                    aVar2.d(jSONObject.optLong(CampaignEx.JSON_KEY_PLCT, 3600L));
                    aVar2.b(jSONObject.optLong("dlct", 3600L));
                    aVar2.f(jSONObject.optLong("vcct", 5L));
                    aVar2.a(jSONObject.optLong("current_time"));
                    aVar2.d(jSONObject.optString("vtag", ""));
                    return aVar2;
                } catch (Exception e11) {
                    e = e11;
                    aVar = aVar2;
                    e.printStackTrace();
                    return aVar;
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
        return aVar;
    }

    public String a() {
        return this.f39978j;
    }

    public void a(int i11) {
        this.f39977i = i11;
    }

    public void a(long j11) {
        this.f39976h = j11;
    }

    public void a(Map<String, Integer> map) {
        this.f39969a = map;
    }

    public long b() {
        return this.f39976h;
    }

    public void b(long j11) {
        this.f39974f = j11;
    }

    public void b(String str) {
        this.f39978j = str;
    }

    public void b(Map<String, com.mbridge.msdk.videocommon.entity.c> map) {
        this.f39970b = map;
    }

    public long c() {
        return this.f39974f;
    }

    public void c(long j11) {
        this.f39971c = j11;
    }

    public void c(String str) {
        this.f39980l = str;
    }

    public long d() {
        return this.f39971c * 1000;
    }

    public void d(long j11) {
        this.f39973e = j11;
    }

    public void d(String str) {
        this.f39979k = str;
    }

    public long e() {
        return this.f39973e * 1000;
    }

    public void e(long j11) {
        this.f39972d = j11;
    }

    public String f() {
        return this.f39980l;
    }

    public void f(long j11) {
        this.f39975g = j11;
    }

    public Map<String, com.mbridge.msdk.videocommon.entity.c> g() {
        return this.f39970b;
    }

    public long h() {
        return this.f39972d * 1000;
    }

    public long i() {
        return this.f39975g;
    }

    public String j() {
        return this.f39979k;
    }

    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Integer> map = this.f39969a;
            if (map != null && map.size() > 0) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Integer> entry : this.f39969a.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue().intValue());
                    }
                    jSONObject.put("caplist", jSONObject2);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            Map<String, com.mbridge.msdk.videocommon.entity.c> map2 = this.f39970b;
            if (map2 != null && map2.size() > 0) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.entity.c> entry2 : this.f39970b.entrySet()) {
                        JSONObject jSONObject3 = new JSONObject();
                        String key = entry2.getKey();
                        com.mbridge.msdk.videocommon.entity.c value = entry2.getValue();
                        if (value != null) {
                            jSONObject3.put("name", value.c());
                            jSONObject3.put(RewardPlus.AMOUNT, value.a());
                            jSONObject3.put("id", key);
                        }
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("reward", jSONArray);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
            jSONObject.put("getpf", this.f39971c);
            jSONObject.put("ruct", this.f39972d);
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, this.f39973e);
            jSONObject.put("dlct", this.f39974f);
            jSONObject.put("vcct", this.f39975g);
            jSONObject.put("current_time", this.f39976h);
            jSONObject.put("vtag", this.f39979k);
            jSONObject.put("isDefault", this.f39977i);
            return jSONObject;
        } catch (Exception e13) {
            e13.printStackTrace();
            return jSONObject;
        }
    }
}
