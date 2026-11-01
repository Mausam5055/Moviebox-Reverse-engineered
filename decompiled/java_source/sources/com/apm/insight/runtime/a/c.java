package com.apm.insight.runtime.a;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.ICommonParams;
import com.apm.insight.l.m;
import com.apm.insight.l.n;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected CrashType f19767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f19768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ICommonParams f19769c = com.apm.insight.e.a().c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f19770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f19771e;

    public interface a {
        com.apm.insight.entity.a a(int i11, com.apm.insight.entity.a aVar);

        com.apm.insight.entity.a b(int i11, com.apm.insight.entity.a aVar);
    }

    c(CrashType crashType, Context context, b bVar, d dVar) {
        this.f19767a = crashType;
        this.f19768b = context;
        this.f19770d = bVar;
        this.f19771e = dVar;
    }

    private com.apm.insight.entity.a b(com.apm.insight.entity.a aVar) {
        aVar.a(com.apm.insight.e.q(), com.apm.insight.e.r());
        if (com.apm.insight.e.n()) {
            aVar.a("is_mp", (Object) 1);
        }
        try {
            aVar.a(this.f19769c.getPluginInfo());
        } catch (Throwable th2) {
            try {
                HashMap map = new HashMap();
                map.put("Data fetch failed since source misstake:\n" + m.a(th2), 0);
                aVar.a(map);
            } catch (Throwable unused) {
            }
        }
        aVar.b(com.apm.insight.e.p());
        com.apm.insight.e.g();
        aVar.a("process_name", com.apm.insight.l.a.b());
        return aVar;
    }

    private com.apm.insight.entity.a c(com.apm.insight.entity.a aVar) {
        b bVar;
        if (!com.apm.insight.l.a.b(com.apm.insight.e.g())) {
            aVar.a("remote_process", (Object) 1);
        }
        aVar.a("pid", Integer.valueOf(Process.myPid()));
        aVar.a(com.apm.insight.e.j());
        if (b() && (bVar = this.f19770d) != null) {
            aVar.a(bVar);
        }
        try {
            aVar.a(this.f19769c.getPatchInfo());
        } catch (Throwable th2) {
            try {
                aVar.a(Arrays.asList("Data fetch failed since source misstake:\n" + m.a(th2)));
            } catch (Throwable unused) {
            }
        }
        String strK = com.apm.insight.e.k();
        if (strK != null) {
            aVar.a("business", (Object) strK);
        }
        aVar.a("is_background", Boolean.valueOf(!com.apm.insight.l.a.a()));
        return aVar;
    }

    public int a() {
        return 6;
    }

    public com.apm.insight.entity.a a(int i11, com.apm.insight.entity.a aVar) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        if (i11 != 0) {
            if (i11 == 1) {
                c(aVar);
                List<AttachUserData> listA = com.apm.insight.e.b().a(this.f19767a);
                HashMap map = new HashMap();
                JSONObject jSONObjectOptJSONObject = aVar.c().optJSONObject("custom");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                    aVar.a("custom", jSONObjectOptJSONObject);
                }
                if (listA != null) {
                    for (int i12 = 0; i12 < listA.size(); i12++) {
                        try {
                            AttachUserData attachUserData = listA.get(i12);
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject, attachUserData.getUserData(this.f19767a));
                            map.put("custom_cost_" + attachUserData.getClass().getName() + "_" + map.size(), Long.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
                        } catch (Throwable th2) {
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject, th2);
                        }
                    }
                }
                try {
                    jSONObjectOptJSONObject.put("fd_count", com.apm.insight.a.f());
                } catch (Throwable unused) {
                }
                List<AttachUserData> listB = com.apm.insight.e.b().b(this.f19767a);
                if (listB != null) {
                    JSONObject jSONObjectOptJSONObject2 = aVar.c().optJSONObject("custom_long");
                    if (jSONObjectOptJSONObject2 == null) {
                        jSONObjectOptJSONObject2 = new JSONObject();
                        aVar.a("custom_long", jSONObjectOptJSONObject2);
                    }
                    for (int i13 = 0; i13 < listB.size(); i13++) {
                        try {
                            AttachUserData attachUserData2 = listB.get(i13);
                            long jUptimeMillis2 = SystemClock.uptimeMillis();
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, attachUserData2.getUserData(this.f19767a));
                            map.put("custom_cost_" + attachUserData2.getClass().getName() + "_" + map.size(), Long.valueOf(SystemClock.uptimeMillis() - jUptimeMillis2));
                        } catch (Throwable th3) {
                            com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, th3);
                        }
                    }
                }
                for (Map.Entry entry : map.entrySet()) {
                    jSONObjectOptJSONObject.put((String) entry.getKey(), entry.getValue());
                }
            } else if (i11 == 2) {
                d dVar = this.f19771e;
                aVar.a("battery", Integer.valueOf(dVar != null ? dVar.a() : 0));
                aVar.c(com.apm.insight.e.b().a());
            } else if (i11 == 5 && c()) {
                aVar.b(n.a());
            }
        } else {
            b(aVar);
        }
        return aVar;
    }

    public com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        return aVar;
    }

    public final com.apm.insight.entity.a a(@Nullable com.apm.insight.entity.a aVar, @Nullable a aVar2, boolean z10) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        com.apm.insight.entity.a aVar3 = aVar;
        for (int i11 = 0; i11 < a(); i11++) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (aVar2 != null) {
                try {
                    aVar3 = aVar2.a(i11, aVar3);
                } catch (Throwable unused) {
                }
            }
            try {
                aVar3 = a(i11, aVar3);
            } catch (Throwable unused2) {
            }
            if (aVar2 != null) {
                try {
                    a();
                    aVar3 = aVar2.b(i11, aVar3);
                } catch (Throwable unused3) {
                }
                if (z10) {
                    if (i11 != 0) {
                        aVar.c(aVar3.c());
                    } else {
                        aVar = aVar3;
                    }
                    aVar3 = new com.apm.insight.entity.a();
                }
            }
            aVar.b("step_cost_".concat(String.valueOf(i11)), String.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
        }
        return a(aVar);
    }

    protected boolean b() {
        return true;
    }

    protected boolean c() {
        return true;
    }
}
