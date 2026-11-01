package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Date f32500h = new Date(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f32501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f32502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Date f32503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONArray f32504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f32505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f32506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONArray f32507g;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONObject f32508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Date f32509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JSONArray f32510c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private JSONObject f32511d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f32512e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private JSONArray f32513f;

        private b() {
            this.f32508a = new JSONObject();
            this.f32509b = f.f32500h;
            this.f32510c = new JSONArray();
            this.f32511d = new JSONObject();
            this.f32512e = 0L;
            this.f32513f = new JSONArray();
        }

        public f a() {
            return new f(this.f32508a, this.f32509b, this.f32510c, this.f32511d, this.f32512e, this.f32513f);
        }

        public b b(JSONObject jSONObject) {
            try {
                this.f32508a = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b c(JSONArray jSONArray) {
            try {
                this.f32510c = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b d(Date date) {
            this.f32509b = date;
            return this;
        }

        public b e(JSONObject jSONObject) {
            try {
                this.f32511d = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b f(JSONArray jSONArray) {
            try {
                this.f32513f = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b g(long j11) {
            this.f32512e = j11;
            return this;
        }
    }

    private f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2, long j11, JSONArray jSONArray2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        jSONObject3.put("template_version_number_key", j11);
        jSONObject3.put("rollout_metadata_key", jSONArray2);
        this.f32502b = jSONObject;
        this.f32503c = date;
        this.f32504d = jSONArray;
        this.f32505e = jSONObject2;
        this.f32506f = j11;
        this.f32507g = jSONArray2;
        this.f32501a = jSONObject3;
    }

    static f b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rollout_metadata_key");
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        return new f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2, jSONObject.optLong("template_version_number_key"), jSONArrayOptJSONArray);
    }

    private Map c() throws JSONException {
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < j().length(); i11++) {
            JSONObject jSONObject = j().getJSONObject(i11);
            String string = jSONObject.getString("rolloutId");
            String string2 = jSONObject.getString("variantId");
            JSONArray jSONArray = jSONObject.getJSONArray("affectedParameterKeys");
            for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                String string3 = jSONArray.getString(i12);
                if (!map.containsKey(string3)) {
                    map.put(string3, new HashMap());
                }
                Map map2 = (Map) map.get(string3);
                if (map2 != null) {
                    map2.put(string, string2);
                }
            }
        }
        return map;
    }

    private static f d(JSONObject jSONObject) {
        return b(new JSONObject(jSONObject.toString()));
    }

    public static b l() {
        return new b();
    }

    public JSONArray e() {
        return this.f32504d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return this.f32501a.toString().equals(((f) obj).toString());
        }
        return false;
    }

    public Set f(f fVar) throws JSONException {
        JSONObject jSONObjectG = d(fVar.f32501a).g();
        Map mapC = c();
        Map mapC2 = fVar.c();
        HashSet hashSet = new HashSet();
        Iterator<String> itKeys = g().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!fVar.g().has(next)) {
                hashSet.add(next);
            } else if (!g().get(next).equals(fVar.g().get(next))) {
                hashSet.add(next);
            } else if ((i().has(next) && !fVar.i().has(next)) || (!i().has(next) && fVar.i().has(next))) {
                hashSet.add(next);
            } else if (i().has(next) && fVar.i().has(next) && !i().getJSONObject(next).toString().equals(fVar.i().getJSONObject(next).toString())) {
                hashSet.add(next);
            } else if (mapC.containsKey(next) != mapC2.containsKey(next)) {
                hashSet.add(next);
            } else if (mapC.containsKey(next) && mapC2.containsKey(next) && !((Map) mapC.get(next)).equals(mapC2.get(next))) {
                hashSet.add(next);
            } else {
                jSONObjectG.remove(next);
            }
        }
        Iterator<String> itKeys2 = jSONObjectG.keys();
        while (itKeys2.hasNext()) {
            hashSet.add(itKeys2.next());
        }
        return hashSet;
    }

    public JSONObject g() {
        return this.f32502b;
    }

    public Date h() {
        return this.f32503c;
    }

    public int hashCode() {
        return this.f32501a.hashCode();
    }

    public JSONObject i() {
        return this.f32505e;
    }

    public JSONArray j() {
        return this.f32507g;
    }

    public long k() {
        return this.f32506f;
    }

    public String toString() {
        return this.f32501a.toString();
    }
}
