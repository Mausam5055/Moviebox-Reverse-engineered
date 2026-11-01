package com.apm.insight.d;

import android.content.Context;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.b.h;
import com.apm.insight.e;
import com.apm.insight.k.d;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.m;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f19446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f19447b;

    public static void a(String str) {
        a(str, null, null, null);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable h.a aVar) {
        a(str, map, map2, null, aVar);
    }

    public static void a(final String str, @Nullable final Map<? extends String, ? extends String> map, @Nullable final Map<String, String> map2, @Nullable final Map<String, String> map3, @Nullable final h.a aVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.d.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Context contextG = e.g();
                        long j11 = jCurrentTimeMillis;
                        String str2 = str;
                        com.apm.insight.entity.a aVar2 = new com.apm.insight.entity.a();
                        aVar2.a("is_dart", (Object) 1);
                        aVar2.a("crash_time", Long.valueOf(j11));
                        aVar2.a("process_name", (Object) com.apm.insight.l.a.b());
                        aVar2.a("data", (Object) str2);
                        com.apm.insight.l.a.a(contextG, aVar2.c());
                        com.apm.insight.entity.a aVarA = f.a().a(CrashType.DART, aVar2);
                        if (map != null) {
                            JSONObject jSONObjectOptJSONObject = aVarA.c().optJSONObject("custom");
                            if (jSONObjectOptJSONObject == null) {
                                jSONObjectOptJSONObject = new JSONObject();
                            }
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject, (Map<? extends String, ? extends String>) map);
                            aVarA.a("custom", jSONObjectOptJSONObject);
                        }
                        if (map2 != null) {
                            JSONObject jSONObjectOptJSONObject2 = aVarA.c().optJSONObject("custom_long");
                            if (jSONObjectOptJSONObject2 == null) {
                                jSONObjectOptJSONObject2 = new JSONObject();
                            }
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, (Map<? extends String, ? extends String>) map2);
                            aVarA.a("custom_long", jSONObjectOptJSONObject2);
                        }
                        if (map3 != null) {
                            JSONObject jSONObjectOptJSONObject3 = aVarA.c().optJSONObject("filters");
                            if (jSONObjectOptJSONObject3 == null) {
                                jSONObjectOptJSONObject3 = new JSONObject();
                                aVarA.a("filters", jSONObjectOptJSONObject3);
                            }
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject3, (Map<? extends String, ? extends String>) map3);
                        }
                        d.a().a(aVarA.c());
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static a b(String str) {
        a aVar = new a();
        aVar.f19446a = str;
        aVar.f19447b = System.currentTimeMillis();
        return aVar;
    }
}
