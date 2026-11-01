package com.apm.insight.k;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.apm.insight.runtime.m;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static File f19649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f19650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<String, String> f19652d;

    public static void a(String str) {
        if (f19652d == null) {
            f19652d = new HashMap();
        }
        f19652d.put(str, String.valueOf(System.currentTimeMillis()));
    }

    public static void a(JSONArray jSONArray) {
        try {
            com.apm.insight.l.f.a(new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configFile"), jSONArray);
        } catch (IOException unused) {
        }
        try {
            com.apm.insight.l.f.a(h(), f19652d);
        } catch (Throwable unused2) {
        }
    }

    static boolean a() {
        return f19650b;
    }

    static boolean b() {
        return f19651c;
    }

    static void c() {
        if (f19650b) {
            return;
        }
        f19651c = true;
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configFile");
        if (file.exists()) {
            try {
                com.apm.insight.runtime.a.a(new JSONArray(com.apm.insight.l.f.a(file, "\n")), false);
                f19650b = true;
            } catch (Throwable unused) {
                com.apm.insight.runtime.a.a((JSONArray) null, false);
            }
        }
    }

    public static void d() {
        c();
        if (g()) {
            a.a();
        }
    }

    public static void e() {
        m.a().a(new Runnable() { // from class: com.apm.insight.k.j.1
            @Override // java.lang.Runnable
            public final void run() {
                if (j.g()) {
                    a.a();
                }
            }
        });
    }

    public static void f() {
        Map<String, String> map = f19652d;
        if (map != null) {
            map.clear();
        }
    }

    static boolean g() {
        File fileH = h();
        try {
            Map<String, String> mapC = f19652d;
            if (mapC == null) {
                mapC = com.apm.insight.l.f.c(fileH);
            }
            f19652d = mapC;
            if (mapC == null) {
                f19652d = new HashMap();
                return true;
            }
            if (mapC.size() < com.apm.insight.entity.b.c()) {
                return true;
            }
            Iterator<String> it = com.apm.insight.entity.b.d().iterator();
            while (it.hasNext()) {
                if (!f19652d.containsKey(it.next())) {
                    return true;
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z10 = false;
            for (Map.Entry<String, String> entry : f19652d.entrySet()) {
                try {
                    if (jCurrentTimeMillis - Long.decode(entry.getValue()).longValue() > com.apm.insight.runtime.d.d(entry.getKey())) {
                        z10 = true;
                    }
                } catch (Throwable th2) {
                    com.apm.insight.a.a(th2);
                }
            }
            if (z10) {
                com.apm.insight.a.a((Object) "config should be updated");
            } else {
                com.apm.insight.a.a((Object) "config should not be updated");
            }
            return z10;
        } catch (Throwable th3) {
            Log.e("npth", NotificationCompat.CATEGORY_ERROR, th3);
            return true;
        }
    }

    @NonNull
    private static File h() {
        if (f19649a == null) {
            f19649a = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configInvalid");
        }
        return f19649a;
    }
}
