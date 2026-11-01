package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.firebase.crashlytics.internal.common.x;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ub.b f31735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ob.g f31736c;

    public b(String str, ub.b bVar) {
        this(str, bVar, ob.g.f());
    }

    b(String str, ub.b bVar, ob.g gVar) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f31736c = gVar;
        this.f31735b = bVar;
        this.f31734a = str;
    }

    private ub.a b(ub.a aVar, h hVar) {
        c(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", hVar.f31763a);
        c(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        c(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", x.q());
        c(aVar, "Accept", "application/json");
        c(aVar, "X-CRASHLYTICS-DEVICE-MODEL", hVar.f31764b);
        c(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", hVar.f31765c);
        c(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", hVar.f31766d);
        c(aVar, "X-CRASHLYTICS-INSTALLATION-ID", hVar.f31767e.a().c());
        return aVar;
    }

    private void c(ub.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e11) {
            this.f31736c.l("Failed to parse settings JSON from " + this.f31734a, e11);
            this.f31736c.k("Settings response " + str);
            return null;
        }
    }

    private Map f(h hVar) {
        HashMap map = new HashMap();
        map.put("build_version", hVar.f31770h);
        map.put("display_version", hVar.f31769g);
        map.put(EventConstants.KEY_SOURCE, Integer.toString(hVar.f31771i));
        String str = hVar.f31768f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.i
    public JSONObject a(h hVar, boolean z10) {
        CrashlyticsWorkers.d();
        if (!z10) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map mapF = f(hVar);
            ub.a aVarB = b(d(mapF), hVar);
            this.f31736c.b("Requesting settings from " + this.f31734a);
            this.f31736c.i("Settings query params were: " + mapF);
            return g(aVarB.c());
        } catch (IOException e11) {
            this.f31736c.e("Settings request failed.", e11);
            return null;
        }
    }

    protected ub.a d(Map map) {
        return this.f31735b.a(this.f31734a, map).d("User-Agent", "Crashlytics Android SDK/" + x.q()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(ub.c cVar) {
        int iB = cVar.b();
        this.f31736c.i("Settings response code was: " + iB);
        if (h(iB)) {
            return e(cVar.a());
        }
        this.f31736c.d("Settings request failed; (status: " + iB + ") from " + this.f31734a);
        return null;
    }

    boolean h(int i11) {
        return i11 == 200 || i11 == 201 || i11 == 202 || i11 == 203;
    }
}
