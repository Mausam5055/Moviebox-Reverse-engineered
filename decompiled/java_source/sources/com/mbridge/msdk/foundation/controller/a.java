package com.mbridge.msdk.foundation.controller;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f34993q = com.mbridge.msdk.foundation.controller.c.class.getSimpleName();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static HashMap<String, String> f34994r = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f34996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f34997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f34998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<Activity> f34999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f35001g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f35004j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35005k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f35006l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private WeakReference<Context> f35008n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private JSONObject f35009o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f34995a = new q();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JSONObject f35002h = new JSONObject();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35003i = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ConcurrentHashMap<String, String> f35007m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35010p = 0;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.controller.a$a, reason: collision with other inner class name */
    class RunnableC0480a implements Runnable {
        RunnableC0480a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.e.a(a.this.f34997c).a();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.d.c();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a aVar = a.this;
                aVar.f34996b = (String) w0.a(aVar.f34997c, "sp_appId", "");
            } catch (Throwable th2) {
                o0.b(a.f34993q, th2.getMessage());
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a aVar = a.this;
                aVar.f35004j = (String) w0.a(aVar.f34997c, "sp_appKey", "");
            } catch (Throwable th2) {
                o0.b(a.f34993q, th2.getMessage());
            }
        }
    }

    public interface e {
    }

    private void l() {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                Object objA = w0.a(this.f34997c, MBridgeConstans.SP_GA_ID, "");
                Object objA2 = w0.a(this.f34997c, MBridgeConstans.SP_GA_ID_LIMIT, 0);
                if (objA instanceof String) {
                    String str = (String) objA;
                    if (TextUtils.isEmpty(str)) {
                        f.d();
                    } else {
                        f.a(str);
                    }
                    if (objA2 instanceof Integer) {
                        f.a(((Integer) objA2).intValue());
                    }
                }
            }
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public BitmapDrawable a(String str, int i11) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        String str2;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.f35007m) == null || !concurrentHashMap.containsKey(str) || !q0.a().a("w_m_r_l", true)) {
            return null;
        }
        String str3 = this.f35007m.get(str);
        BitmapDrawable bitmapDrawableN = t0.n(str3);
        int i12 = TextUtils.isEmpty(str3) ? 2 : 1;
        if (TextUtils.isEmpty(str3)) {
            str2 = "get watermark failed";
        } else {
            str2 = bitmapDrawableN != null ? "" : "str to bitmap failed";
        }
        j.a(str, i11, i12, str2, bitmapDrawableN == null ? 2 : 1, str3);
        return bitmapDrawableN;
    }

    public WeakReference<Activity> a() {
        return this.f34999e;
    }

    public void a(int i11) {
        this.f35001g = i11;
    }

    public void a(Context context) {
        if (context instanceof Activity) {
            this.f35008n = new WeakReference<>(context);
        }
    }

    protected abstract void a(e eVar);

    public void a(String str) {
        try {
            if (this.f35007m != null && !TextUtils.isEmpty(str) && this.f35007m.containsKey(str)) {
                this.f35007m.remove(str);
            }
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (q0.a().a("w_m_r_l", true)) {
            try {
                if (this.f35002h == null) {
                    this.f35002h = jSONObject;
                } else if (jSONObject != null) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        this.f35002h.put(next, jSONObject.get(next));
                    }
                }
                if (this.f35002h.has(MBridgeConstans.EXTRA_KEY_WM)) {
                    if (this.f35007m == null) {
                        this.f35007m = new ConcurrentHashMap<>();
                    }
                    this.f35007m.put(str, this.f35002h.getString(MBridgeConstans.EXTRA_KEY_WM));
                }
            } catch (Exception e11) {
                o0.b(f34993q, e11.getMessage());
            }
        }
    }

    public void a(WeakReference<Activity> weakReference) {
        this.f34999e = weakReference;
    }

    public void a(JSONObject jSONObject) {
        this.f35009o = jSONObject;
    }

    public String b() {
        try {
            if (!TextUtils.isEmpty(this.f34996b)) {
                return this.f34996b;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            return "";
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
            return "";
        }
    }

    public void b(int i11) {
        this.f35006l = i11;
    }

    public void b(Context context) {
        this.f34997c = context;
    }

    public void b(e eVar) {
        try {
            k0.C(this.f34997c);
            a(eVar);
            h.a(this.f34997c, this.f34996b);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                try {
                    try {
                        k0.d(this.f34997c.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled ? 1 : 2);
                    } catch (Throwable th2) {
                        o0.b(f34993q, th2.getMessage());
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    k0.d(0);
                }
            }
            try {
                g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                q qVarE = com.mbridge.msdk.foundation.controller.c.m().e();
                if (qVarE != null && qVarE.b() && gVarD != null && gVarD.E() == 1) {
                    com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0480a());
                }
                if (qVarE == null || !qVarE.a()) {
                    return;
                }
                com.mbridge.msdk.foundation.same.threadpool.a.c().post(new b());
            } catch (Throwable th3) {
                o0.b(f34993q, th3.getMessage());
            }
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public void b(String str) {
        Context context;
        try {
            this.f35000f = str;
            if (TextUtils.isEmpty(str) || (context = this.f34997c) == null) {
                return;
            }
            w0.b(context, "applicationIds", str);
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public String c() {
        try {
            if (!TextUtils.isEmpty(this.f35004j)) {
                return this.f35004j;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new d());
            return "";
        } catch (Throwable th2) {
            o0.b(f34993q, th2.getMessage());
            return "";
        }
    }

    public void c(int i11) {
        this.f35010p = i11;
    }

    public void c(e eVar) {
        if (this.f35003i) {
            return;
        }
        l();
        try {
            JSONObject jSONObject = new JSONObject();
            this.f35009o = jSONObject;
            jSONObject.put("webgl", 0);
        } catch (JSONException e11) {
            o0.b(f34993q, e11.getMessage());
        }
        b(eVar);
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34998d = str;
    }

    public Context d() {
        return this.f34997c;
    }

    public void d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f35005k = str;
            Context context = this.f34997c;
            if (context != null) {
                w0.b(context, "sp_wx_appKey", str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public q e() {
        return this.f34995a;
    }

    public void e(String str) {
        Context context;
        try {
            this.f34996b = str;
            if (TextUtils.isEmpty(str) || (context = this.f34997c) == null) {
                return;
            }
            w0.b(context, "sp_appId", str);
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public Context f() {
        WeakReference<Context> weakReference = this.f35008n;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void f(String str) {
        Context context;
        try {
            this.f35004j = str;
            if (TextUtils.isEmpty(str) || (context = this.f34997c) == null) {
                return;
            }
            w0.b(context, "sp_appKey", str);
        } catch (Exception e11) {
            o0.b(f34993q, e11.getMessage());
        }
    }

    public int g() {
        return this.f35001g;
    }

    public String h() {
        try {
            if (!TextUtils.isEmpty(this.f34998d)) {
                return this.f34998d;
            }
            Context context = this.f34997c;
            if (context == null) {
                return null;
            }
            String packageName = context.getPackageName();
            this.f34998d = packageName;
            return packageName;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String i() {
        if (!TextUtils.isEmpty(this.f35005k)) {
            return this.f35005k;
        }
        Context context = this.f34997c;
        if (context != null) {
            return (String) w0.a(context, "sp_wx_appKey", "");
        }
        return null;
    }

    public JSONObject j() {
        return this.f35009o;
    }

    public int k() {
        return this.f35010p;
    }
}
