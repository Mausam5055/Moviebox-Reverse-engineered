package com.mbridge.msdk.foundation.same.report.crashreport;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile e f35537d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35538a = "CrashHandlerUtil";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f35539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<Context> f35540c;

    private e(Context context) {
        this.f35540c = new WeakReference<>(context);
    }

    public static e a(Context context) {
        if (f35537d == null) {
            synchronized (e.class) {
                try {
                    if (f35537d == null) {
                        f35537d = new e(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35537d;
    }

    private void a(Thread thread, Throwable th2) {
        try {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f35539b;
            if (uncaughtExceptionHandler == null) {
                Process.killProcess(Process.myPid());
                System.exit(1);
            } else if (!(uncaughtExceptionHandler instanceof e)) {
                uncaughtExceptionHandler.uncaughtException(thread, th2);
            }
        } catch (Throwable th3) {
            o0.b("CrashHandlerUtil", th3.getMessage());
        }
    }

    private boolean a(List<String> list, String str) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (str.contains(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void b(Thread thread, Throwable th2) {
        try {
            List<String> listA = b.a();
            StackTraceElement[] stackTrace = th2.getStackTrace();
            StringBuilder sb2 = new StringBuilder();
            String str = th2.getClass() + ": " + th2.getMessage();
            sb2.append(str);
            sb2.append("\n");
            boolean zA = a(listA, str);
            int i11 = 0;
            for (int i12 = 0; i12 < stackTrace.length; i12++) {
                String string = stackTrace[i12].toString();
                if (a(listA, string)) {
                    zA = true;
                    if (i12 == 0) {
                        i11 = 1;
                    }
                }
                sb2.append(string);
                sb2.append("\n");
            }
            if (zA && sb2.length() >= 1) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000052");
                jSONObject.put("crash_first_index_from_mtg", i11);
                JSONObject jSONObjectA = a(String.valueOf(System.currentTimeMillis()));
                jSONObjectA.put("crashinfo", sb2.toString());
                jSONObject.put("exception", jSONObjectA);
                if (jSONObject.length() > 0) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
                try {
                    Thread.sleep(500L);
                    return;
                } catch (InterruptedException e11) {
                    o0.b("CrashHandlerUtil", e11.getMessage());
                    return;
                }
            }
            a(thread, th2);
        } catch (Throwable th3) {
            a(thread, th2);
            o0.b("CrashHandlerUtil", th3.getMessage());
        }
    }

    public JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f35540c.get() == null) {
                return jSONObject;
            }
            float fMaxMemory = (float) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d);
            float f11 = (float) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d);
            float fFreeMemory = (float) ((Runtime.getRuntime().freeMemory() * 1.0d) / 1048576.0d);
            jSONObject.put("max_memory", String.valueOf(fMaxMemory));
            jSONObject.put("memoryby_app", String.valueOf(f11));
            jSONObject.put("remaining_memory", fFreeMemory);
            jSONObject.put("crashtime", str);
            return jSONObject;
        } catch (Throwable th2) {
            o0.b("CrashHandlerUtil", th2.getMessage());
            return jSONObject;
        }
    }

    public void a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        this.f35539b = defaultUncaughtExceptionHandler;
        if (defaultUncaughtExceptionHandler instanceof e) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        if (th2 != null) {
            try {
                b(thread, th2);
            } catch (Throwable th3) {
                o0.b("CrashHandlerUtil", th3.getMessage());
            }
        }
        a(thread, th2);
    }
}
