package com.apm.insight.entity;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.e;
import com.apm.insight.l.m;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f19486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Header f19487b;

    public a() {
        JSONObject jSONObject = new JSONObject();
        this.f19486a = jSONObject;
        try {
            jSONObject.put("apm_id", "20000001");
        } catch (JSONException unused) {
        }
    }

    public a(JSONObject jSONObject) {
        this.f19486a = jSONObject;
    }

    public static a a(long j11, Context context, @NonNull Throwable th2) {
        if (j11 == 0) {
            j11 = System.currentTimeMillis();
        }
        a aVar = new a();
        aVar.a("isJava", (Object) 1);
        aVar.a("data", (Object) m.a(th2));
        aVar.a("crash_time", Long.valueOf(j11));
        aVar.a("process_name", (Object) com.apm.insight.l.a.b());
        if (!com.apm.insight.l.a.b(context)) {
            aVar.a("remote_process", (Object) 1);
        }
        return aVar;
    }

    private a a(String str, JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject = this.f19486a.optJSONObject("custom_long");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            a("custom_long", jSONObjectOptJSONObject);
        }
        try {
            jSONObjectOptJSONObject.put(str, jSONArray);
        } catch (JSONException unused) {
        }
        return this;
    }

    public static void a(JSONObject jSONObject, String str, String str2, String str3) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            try {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObject.put(str, jSONObjectOptJSONObject);
            } catch (Throwable unused) {
                return;
            }
        }
        jSONObjectOptJSONObject.put(str2, str3);
    }

    public static void a(JSONObject jSONObject, Throwable th2) {
        if (jSONObject.opt("npth_err_info") == null) {
            try {
                jSONObject.put("npth_err_info", m.a(th2));
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        for (int i11 = 0; i11 < 5; i11++) {
            if (jSONObject.opt("npth_err_info" + i11) == null) {
                try {
                    jSONObject.put("npth_err_info" + i11, m.a(th2));
                    return;
                } catch (Throwable unused2) {
                    return;
                }
            }
        }
    }

    public static void a(JSONObject jSONObject, Map<? extends String, ? extends String> map) {
        if (map != null) {
            try {
                for (Map.Entry<? extends String, ? extends String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        String str2;
        try {
            jSONObject.put(PlaceTypes.STORAGE, jSONObject2);
        } catch (Throwable unused) {
        }
        long jOptLong = jSONObject2.optLong("inner_free");
        long jOptLong2 = jSONObject2.optLong("sdcard_free");
        long jOptLong3 = jSONObject2.optLong("inner_free_real");
        String str3 = "64M - ";
        if (jOptLong <= 1024) {
            str = "0 - 1K";
        } else if (jOptLong <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            str = "1K - 64K";
        } else if (jOptLong <= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
            str = "64K - 512K";
        } else if (jOptLong <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            str = "512K - 1M";
        } else {
            str = jOptLong <= 67108864 ? "1M - 64M" : "64M - ";
        }
        if (jOptLong3 <= 1024) {
            str2 = "0 - 1K";
        } else if (jOptLong3 <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            str2 = "1K - 64K";
        } else if (jOptLong3 <= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
            str2 = "64K - 512K";
        } else if (jOptLong3 <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            str2 = "512K - 1M";
        } else {
            str2 = jOptLong3 <= 67108864 ? "1M - 64M" : "64M - ";
        }
        if (jOptLong2 <= 1024) {
            str3 = "0 - 1K";
        } else if (jOptLong2 <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            str3 = "1K - 64K";
        } else if (jOptLong2 <= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
            str3 = "64K - 512K";
        } else if (jOptLong2 <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            str3 = "512K - 1M";
        } else if (jOptLong2 <= 67108864) {
            str3 = "1M - 64M";
        }
        a(jSONObject, "filters", "inner_free", str);
        a(jSONObject, "filters", "inner_free_real", str2);
        a(jSONObject, "filters", "sdcard_free", str3);
    }

    public static boolean a(String str) {
        return ((long) com.apm.insight.nativecrash.b.c(str)) > com.apm.insight.nativecrash.a.g();
    }

    public static void b(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null || jSONObject2.length() <= 0) {
            return;
        }
        try {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object objOpt = jSONObject.opt(next);
                if (objOpt == null) {
                    jSONObject.put(next, jSONObject2.opt(next));
                } else if (objOpt instanceof JSONObject) {
                    b(jSONObject.getJSONObject(next), jSONObject2.getJSONObject(next));
                } else if (objOpt instanceof JSONArray) {
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(next);
                    if (jSONArrayOptJSONArray != null) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        if (jSONArray.length() == 1 && (jSONArray.opt(0) instanceof JSONObject) && (jSONArrayOptJSONArray.opt(0) instanceof JSONObject)) {
                            b(jSONArray.getJSONObject(0), jSONArrayOptJSONArray.getJSONObject(0));
                        } else {
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                                jSONArray.put(jSONArrayOptJSONArray.get(i11));
                            }
                        }
                    }
                } else {
                    jSONObject.put(next, jSONObject2.opt(next));
                }
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public static boolean b(String str) {
        return com.apm.insight.nativecrash.b.a(str) > 960;
    }

    public static boolean c(String str) {
        return com.apm.insight.nativecrash.b.b(str) > 350;
    }

    public final a a(int i11, String str) {
        try {
            this.f19486a.put("miniapp_id", i11);
            this.f19486a.put("miniapp_version", str);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return this;
    }

    public final a a(long j11) {
        try {
            a("app_start_time", Long.valueOf(j11));
            a("app_start_time_readable", (Object) new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j11)));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return this;
    }

    public final a a(Header header) {
        a("header", header.f());
        this.f19487b = header;
        return this;
    }

    public final a a(com.apm.insight.runtime.a.b bVar) {
        a("activity_trace", bVar.g());
        a("activity_track", bVar.i());
        return this;
    }

    public final a a(String str, String str2) {
        Object objOpt = this.f19486a.opt("data");
        if (objOpt instanceof JSONArray) {
            a(((JSONArray) objOpt).optJSONObject(0), "filters", str, str2);
        } else {
            a(this.f19486a, "filters", str, str2);
        }
        return this;
    }

    public final a a(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null || list.isEmpty()) {
            a("patch_info", (Object) jSONArray);
            return this;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        a("patch_info", (Object) jSONArray);
        return this;
    }

    public final a a(Map<String, Integer> map) {
        JSONArray jSONArray = new JSONArray();
        try {
            if (map == null) {
                this.f19486a.put("plugin_info", jSONArray);
                return this;
            }
            for (String str : map.keySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("package_name", str);
                jSONObject.put("version_code", map.get(str));
                jSONArray.put(jSONObject);
            }
            this.f19486a.put("plugin_info", jSONArray);
            return this;
        } catch (Exception unused) {
        }
    }

    public final a a(JSONObject jSONObject) {
        a("header", jSONObject);
        return this;
    }

    public final void a(@NonNull String str, @Nullable Object obj) {
        try {
            this.f19486a.put(str, obj);
        } catch (Exception e11) {
            com.apm.insight.a.b((Throwable) e11);
        }
    }

    public final boolean a() {
        Object objOpt = this.f19486a.opt("data");
        if (objOpt instanceof JSONArray) {
            return !com.apm.insight.a.a(((JSONArray) objOpt).optJSONObject(0), "logcat");
        }
        return !com.apm.insight.a.a(this.f19486a, "logcat");
    }

    public final a b(String str, String str2) {
        Object objOpt = this.f19486a.opt("data");
        if (objOpt instanceof JSONArray) {
            a(((JSONArray) objOpt).optJSONObject(0), "custom", str, str2);
        } else {
            a(this.f19486a, "custom", str, str2);
        }
        return this;
    }

    public final a b(Map<Integer, String> map) {
        if (map != null && map.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            for (Integer num : map.keySet()) {
                try {
                    jSONObject.put(String.valueOf(num), map.get(num));
                } catch (JSONException e11) {
                    com.apm.insight.a.b((Throwable) e11);
                }
            }
            try {
                this.f19486a.put("sdk_info", jSONObject);
            } catch (JSONException e12) {
                e12.printStackTrace();
            }
        }
        return this;
    }

    public final a b(JSONObject jSONObject) {
        a(this.f19486a, jSONObject);
        return this;
    }

    public final void b() {
        a("has_logcat", String.valueOf(a()));
    }

    public final a c(Map<? extends String, ? extends String> map) {
        JSONObject jSONObjectOptJSONObject;
        if (map != null) {
            Object objOpt = this.f19486a.opt("data");
            JSONObject jSONObjectOptJSONObject2 = objOpt instanceof JSONArray ? ((JSONArray) objOpt).optJSONObject(0) : this.f19486a;
            if (jSONObjectOptJSONObject2 == null) {
                jSONObjectOptJSONObject = new JSONObject();
            } else {
                jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("filters");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                    a("filters", jSONObjectOptJSONObject);
                }
            }
            for (Map.Entry<? extends String, ? extends String> entry : map.entrySet()) {
                try {
                    jSONObjectOptJSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException unused) {
                }
            }
            a("filters", jSONObjectOptJSONObject);
        }
        return this;
    }

    public final JSONObject c() {
        return this.f19486a;
    }

    public final void c(@NonNull JSONObject jSONObject) {
        b(this.f19486a, jSONObject);
    }

    public final Header d() {
        if (this.f19487b == null) {
            Header header = new Header(e.g());
            this.f19487b = header;
            a(header);
        }
        return this.f19487b;
    }
}
