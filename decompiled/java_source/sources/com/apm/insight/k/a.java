package com.apm.insight.k;

import android.util.Log;
import androidx.annotation.Nullable;
import com.apm.insight.runtime.m;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Runnable f19572a = new Runnable() { // from class: com.apm.insight.k.a.1
        @Override // java.lang.Runnable
        public final void run() {
            if (com.apm.insight.l.k.b(com.apm.insight.e.g())) {
                a.i();
            }
            if (a.f19573b > 0) {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    m.a().a(a.f19572a, MBInterstitialActivity.WEB_LOAD_TIME);
                } else {
                    m.a().a(a.f19572a, 60000L);
                }
            }
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f19573b = 0;

    public static void a() {
        f19573b = 40;
        m.a().a(f19572a);
    }

    public static void b() {
        if (!j.b()) {
            j.c();
        }
        if (com.apm.insight.l.k.b(com.apm.insight.e.g()) && j.g()) {
            i();
        }
    }

    public static boolean c() {
        return false;
    }

    public static void d() {
    }

    @Nullable
    private static byte[] h() {
        try {
            return e.a(com.apm.insight.e.i().getConfigUrl(), com.apm.insight.entity.b.a().toString().getBytes());
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void i() {
        try {
            int i11 = f19573b;
            if (i11 > 0) {
                f19573b = i11 - 1;
            }
            com.apm.insight.a.a((Object) "try fetchApmConfig");
            if (!com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                j.c();
                if (j.a()) {
                    f19573b = 0;
                }
                return;
            }
            JSONArray jSONArrayOptJSONArray = null;
            try {
                byte[] bArrH = h();
                if (bArrH != null) {
                    jSONArrayOptJSONArray = new JSONObject(new String(bArrH)).optJSONArray("data");
                }
            } catch (Throwable th2) {
                if (com.apm.insight.e.i().isDebugMode()) {
                    Log.e("npth", "npth NPTH Catch Error", th2);
                }
            }
            com.apm.insight.a.a((Object) "after fetchApmConfig net ".concat(String.valueOf(jSONArrayOptJSONArray)));
            if (jSONArrayOptJSONArray == null) {
                f19573b -= 10;
            } else {
                com.apm.insight.runtime.a.a(jSONArrayOptJSONArray, true);
                f19573b = 0;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
