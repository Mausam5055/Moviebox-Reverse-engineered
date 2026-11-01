package com.apm.insight.runtime.a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f19737a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f19738b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19739c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f19740d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f19741e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f19742f = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static volatile b f19743z;
    private int B;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Application f19744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f19745h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f19751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f19752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f19753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f19754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f19755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f19756s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f19757t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f19758u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f19759v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f19760w;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<String> f19746i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Long> f19747j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<String> f19748k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<Long> f19749l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LinkedList<a> f19750m = new LinkedList<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f19761x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f19762y = -1;
    private int A = 50;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f19764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f19765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f19766c;

        a(String str, String str2, long j11) {
            this.f19765b = str2;
            this.f19766c = j11;
            this.f19764a = str;
        }

        public final String toString() {
            return com.apm.insight.l.b.a().format(new Date(this.f19766c)) + " : " + this.f19764a + ' ' + this.f19765b;
        }
    }

    private b(@NonNull Application application) {
        this.f19745h = application;
        this.f19744g = application;
        if (application != null) {
            try {
                this.f19744g.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.apm.insight.runtime.a.b.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        b.this.f19751n = activity.getClass().getName();
                        b.this.f19752o = System.currentTimeMillis();
                        boolean unused = b.f19738b = bundle != null;
                        boolean unused2 = b.f19739c = true;
                        b.this.f19746i.add(b.this.f19751n);
                        b.this.f19747j.add(Long.valueOf(b.this.f19752o));
                        b bVar = b.this;
                        b.a(bVar, bVar.f19751n, b.this.f19752o, "onCreate");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityDestroyed(Activity activity) {
                        String name = activity.getClass().getName();
                        int iIndexOf = b.this.f19746i.indexOf(name);
                        if (iIndexOf >= 0 && iIndexOf < b.this.f19746i.size()) {
                            b.this.f19746i.remove(iIndexOf);
                            b.this.f19747j.remove(iIndexOf);
                        }
                        b.this.f19748k.add(name);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        b.this.f19749l.add(Long.valueOf(jCurrentTimeMillis));
                        b.a(b.this, name, jCurrentTimeMillis, "onDestroy");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                        b.this.f19757t = activity.getClass().getName();
                        b.this.f19758u = System.currentTimeMillis();
                        b.l(b.this);
                        if (b.this.B == 0) {
                            b.this.f19761x = false;
                            boolean unused = b.f19739c = false;
                            b.this.f19762y = SystemClock.uptimeMillis();
                        } else if (b.this.B < 0) {
                            b.n(b.this);
                            b.this.f19761x = false;
                            boolean unused2 = b.f19739c = false;
                            b.this.f19762y = SystemClock.uptimeMillis();
                        }
                        b bVar = b.this;
                        b.a(bVar, bVar.f19757t, b.this.f19758u, "onPause");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                        b.this.f19755r = activity.getClass().getName();
                        b.this.f19756s = System.currentTimeMillis();
                        b.g(b.this);
                        if (!b.this.f19761x) {
                            if (b.f19737a) {
                                b.k();
                                int unused = b.f19740d = 1;
                                long unused2 = b.f19742f = b.this.f19756s;
                            }
                            if (!b.this.f19755r.equals(b.this.f19757t)) {
                                return;
                            }
                            if (b.f19739c && !b.f19738b) {
                                int unused3 = b.f19740d = 4;
                                long unused4 = b.f19742f = b.this.f19756s;
                                return;
                            } else if (!b.f19739c) {
                                int unused5 = b.f19740d = 3;
                                long unused6 = b.f19742f = b.this.f19756s;
                                return;
                            }
                        }
                        b.this.f19761x = true;
                        b bVar = b.this;
                        b.a(bVar, bVar.f19755r, b.this.f19756s, "onResume");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                        b.this.f19753p = activity.getClass().getName();
                        b.this.f19754q = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f19753p, b.this.f19754q, TmcConstants.NAVIGATION_ON_START);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                        b.this.f19759v = activity.getClass().getName();
                        b.this.f19760w = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f19759v, b.this.f19760w, "onStop");
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    private static JSONObject a(String str, long j11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put(EventConstants.KEY_TIME, j11);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void a() {
        f19741e = true;
    }

    static /* synthetic */ void a(b bVar, String str, long j11, String str2) {
        a aVar;
        if (com.apm.insight.e.w()) {
            try {
                if (bVar.f19750m.size() >= bVar.A) {
                    aVar = bVar.f19750m.poll();
                    if (aVar != null) {
                        bVar.f19750m.add(aVar);
                    }
                } else {
                    aVar = null;
                }
                if (aVar == null) {
                    aVar = new a(str, str2, j11);
                    bVar.f19750m.add(aVar);
                }
                aVar.f19765b = str2;
                aVar.f19764a = str;
                aVar.f19766c = j11;
            } catch (Throwable unused) {
            }
        }
    }

    public static int b() {
        int i11 = f19740d;
        if (i11 == 1) {
            return f19741e ? 2 : 1;
        }
        return i11;
    }

    public static long c() {
        return f19742f;
    }

    public static b d() {
        if (f19743z == null) {
            synchronized (b.class) {
                try {
                    if (f19743z == null) {
                        f19743z = new b(com.apm.insight.e.h());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19743z;
    }

    static /* synthetic */ int g(b bVar) {
        int i11 = bVar.B;
        bVar.B = i11 + 1;
        return i11;
    }

    static /* synthetic */ boolean k() {
        f19737a = false;
        return false;
    }

    static /* synthetic */ int l(b bVar) {
        int i11 = bVar.B;
        bVar.B = i11 - 1;
        return i11;
    }

    static /* synthetic */ int n(b bVar) {
        bVar.B = 0;
        return 0;
    }

    private JSONArray n() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f19746i;
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < this.f19746i.size(); i11++) {
                try {
                    jSONArray.put(a(this.f19746i.get(i11), this.f19747j.get(i11).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray o() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f19748k;
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < this.f19748k.size(); i11++) {
                try {
                    jSONArray.put(a(this.f19748k.get(i11), this.f19749l.get(i11).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    public final long e() {
        return SystemClock.uptimeMillis() - this.f19762y;
    }

    public final boolean f() {
        return this.f19761x;
    }

    public final JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        if (com.apm.insight.e.w()) {
            try {
                jSONObject.put("last_create_activity", a(this.f19751n, this.f19752o));
                jSONObject.put("last_start_activity", a(this.f19753p, this.f19754q));
                jSONObject.put("last_resume_activity", a(this.f19755r, this.f19756s));
                jSONObject.put("last_pause_activity", a(this.f19757t, this.f19758u));
                jSONObject.put("last_stop_activity", a(this.f19759v, this.f19760w));
                jSONObject.put("alive_activities", n());
                jSONObject.put("finish_activities", o());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    @NonNull
    public final String h() {
        return String.valueOf(this.f19755r);
    }

    public final JSONArray i() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = new ArrayList(this.f19750m).iterator();
        while (it.hasNext()) {
            jSONArray.put(((a) it.next()).toString());
        }
        return jSONArray;
    }
}
