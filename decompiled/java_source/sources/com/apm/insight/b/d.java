package com.apm.insight.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.l.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f19359a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f19360b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static FileObserver f19362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ActivityManager.ProcessErrorStateInfo f19363e;

    static String a(Context context) {
        if (SystemClock.uptimeMillis() - f19360b < 5000) {
            return null;
        }
        try {
            ActivityManager.ProcessErrorStateInfo processErrorStateInfoA = com.apm.insight.l.a.a(context);
            if (processErrorStateInfoA != null && Process.myPid() == processErrorStateInfoA.pid) {
                ActivityManager.ProcessErrorStateInfo processErrorStateInfo = f19363e;
                if (processErrorStateInfo != null && String.valueOf(processErrorStateInfo.condition).equals(String.valueOf(processErrorStateInfoA.condition)) && String.valueOf(processErrorStateInfo.processName).equals(String.valueOf(processErrorStateInfoA.processName)) && String.valueOf(processErrorStateInfo.pid).equals(String.valueOf(processErrorStateInfoA.pid)) && String.valueOf(processErrorStateInfo.uid).equals(String.valueOf(processErrorStateInfoA.uid)) && String.valueOf(processErrorStateInfo.tag).equals(String.valueOf(processErrorStateInfoA.tag)) && String.valueOf(processErrorStateInfo.shortMsg).equals(String.valueOf(processErrorStateInfoA.shortMsg)) && String.valueOf(processErrorStateInfo.longMsg).equals(String.valueOf(processErrorStateInfoA.longMsg))) {
                    return null;
                }
                f19363e = processErrorStateInfoA;
                f19359a = null;
                f19360b = SystemClock.uptimeMillis();
                f19361c = false;
                if (!com.apm.insight.e.t()) {
                    return "|------------- processErrorStateInfo--------------|\ndisable anr info\n\"-----------------------end----------------------------\"";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("|------------- processErrorStateInfo--------------|\n");
                sb2.append("condition: " + processErrorStateInfoA.condition + "\n");
                sb2.append("processName: " + processErrorStateInfoA.processName + "\n");
                sb2.append("pid: " + processErrorStateInfoA.pid + "\n");
                sb2.append("uid: " + processErrorStateInfoA.uid + "\n");
                sb2.append("tag: " + processErrorStateInfoA.tag + "\n");
                sb2.append("shortMsg : " + processErrorStateInfoA.shortMsg + "\n");
                sb2.append("longMsg : " + processErrorStateInfoA.longMsg + "\n");
                sb2.append("-----------------------end----------------------------");
                return sb2.toString();
            }
        } catch (Throwable unused) {
        }
        String str = f19359a;
        if (str == null) {
            return null;
        }
        f19361c = true;
        f19359a = null;
        f19360b = SystemClock.uptimeMillis();
        return str;
    }

    public static JSONObject a() throws JSONException {
        try {
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("thread_number", 1);
            jSONObject.put("mainStackFromTrace", m.a(stackTrace));
            return jSONObject;
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            return null;
        }
    }

    public static void a(final String str, final h.a aVar) {
        FileObserver fileObserver = f19362d;
        if (fileObserver != null) {
            fileObserver.stopWatching();
        }
        FileObserver fileObserver2 = new FileObserver(str) { // from class: com.apm.insight.b.d.1
            @Override // android.os.FileObserver
            public final void onEvent(int i11, @Nullable String str2) {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    String unused = d.f19359a = aVar.a();
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        };
        f19362d = fileObserver2;
        fileObserver2.startWatching();
    }

    public static boolean b() {
        return f19361c;
    }

    public static void c() {
        f19363e = null;
    }
}
