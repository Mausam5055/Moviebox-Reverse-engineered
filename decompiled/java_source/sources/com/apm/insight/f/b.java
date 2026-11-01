package com.apm.insight.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.c;
import com.apm.insight.k.g;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.m;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f19493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f19494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f19495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f19496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f19497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f19498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f19499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<String> f19500h;

    public static void a(final Object obj, final Throwable th2, final String str, final String str2, @NonNull final String str3) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.2

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ boolean f19509d = true;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private /* synthetic */ Map f19510e = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(obj, th2, str, this.f19509d, null, str2, str3);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Object obj, Throwable th2, String str, boolean z10, Map<String, String> map, String str2, @NonNull String str3) {
        if (th2 == null) {
            return;
        }
        try {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[0];
            if (stackTraceElement == null) {
                return;
            }
            String strA = com.apm.insight.l.m.a(th2);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            c cVarA = c.a(stackTraceElement, strA, str, Thread.currentThread().getName(), z10, str2, str3);
            if (obj != null) {
                cVarA.a("exception_line_num", (Object) com.apm.insight.entity.b.a(obj, th2, stackTrace));
            }
            a(null, cVarA);
            f.a().a(CrashType.ENSURE, cVarA);
            g.a(obj, cVarA);
            com.apm.insight.a.b((Object) "[reportException] ".concat(String.valueOf(str)));
        } catch (Throwable th3) {
            com.apm.insight.a.b(th3);
        }
    }

    public static void a(final Throwable th2, final String str, @NonNull final String str2) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.1

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private /* synthetic */ boolean f19503c = true;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ Map f19504d = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(null, th2, str, this.f19503c, null, "EnsureNotReachHere", str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static void a(Map<String, String> map, c cVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
                cVar.a("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void a(StackTraceElement[] stackTraceElementArr, int i11, String str, String str2, String str3, Map map) {
        StackTraceElement stackTraceElement;
        String string;
        if (stackTraceElementArr != null) {
            try {
                if (stackTraceElementArr.length > i11 + 1 && (stackTraceElement = stackTraceElementArr[i11]) != null) {
                    if (stackTraceElementArr.length <= 0) {
                        string = null;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        while (i11 < stackTraceElementArr.length) {
                            com.apm.insight.l.m.a(stackTraceElementArr[i11], sb2);
                            i11++;
                        }
                        string = sb2.toString();
                    }
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    c cVarA = c.a(stackTraceElement, string, str, Thread.currentThread().getName(), true, str2, str3);
                    a(null, cVarA);
                    f.a().a(CrashType.ENSURE, cVarA);
                    g.a(cVarA);
                    com.apm.insight.a.b((Object) "[report] ".concat(String.valueOf(str)));
                }
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
    }

    public static void a(final StackTraceElement[] stackTraceElementArr, @Nullable final String str, final String str2) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private /* synthetic */ int f19514b = 5;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private /* synthetic */ Map f19517e = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(stackTraceElementArr, this.f19514b, str, str2, "core_exception_monitor", (Map) null);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final String a() {
        return this.f19493a;
    }

    public final void a(String str) {
        this.f19493a = str;
    }

    public final void a(List<String> list) {
        this.f19500h = list;
    }

    public final void a(JSONObject jSONObject) {
        this.f19494b = jSONObject;
    }

    public final void a(boolean z10) {
        this.f19496d = z10;
    }

    public final JSONObject b() {
        return this.f19494b;
    }

    public final void b(String str) {
        this.f19495c = str;
    }

    public final String c() {
        return this.f19495c;
    }

    public final void c(String str) {
        this.f19497e = str;
    }

    public final String d() {
        return this.f19497e;
    }

    public final void d(String str) {
        this.f19498f = str;
    }

    public final String e() {
        return this.f19498f;
    }

    public final void e(String str) {
        this.f19499g = str;
    }

    public final String f() {
        return this.f19499g;
    }

    public final List<String> g() {
        return this.f19500h;
    }
}
