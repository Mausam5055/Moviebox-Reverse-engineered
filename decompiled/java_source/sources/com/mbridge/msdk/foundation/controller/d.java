package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler;
import com.mbridge.msdk.out.MBRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.j;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile d f35036l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f35037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f35038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FastKV f35039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f35040d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f35041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35043g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f35044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f35045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.preload.a f35046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35047k;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f35048a;

        a(Context context) {
            this.f35048a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.h(this.f35048a);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            d.this.g();
            d.this.d();
            Looper.loop();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            dVar.a(dVar.f35041e);
            new h(d.this.f35044h).a();
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.controller.d$d, reason: collision with other inner class name */
    class C0483d implements com.mbridge.msdk.foundation.controller.a.e {
        C0483d() {
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35053a;

        e(String str) {
            this.f35053a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(350L);
            } catch (InterruptedException e11) {
                o0.b("SDKController", e11.getMessage());
            }
            new j().b(d.this.f35044h, this.f35053a, d.this.f35042f);
        }
    }

    private d() {
    }

    public static d a() {
        if (f35036l == null) {
            synchronized (d.class) {
                try {
                    if (f35036l == null) {
                        f35036l = new d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35036l;
    }

    private void a(Context context) {
        String string;
        try {
            if (e() && this.f35039c == null) {
                try {
                    this.f35039c = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
                } catch (Exception unused) {
                    this.f35039c = null;
                }
            }
            FastKV fastKV = this.f35039c;
            String string2 = "";
            if (fastKV != null) {
                String string3 = fastKV.getString(i0.a("H+tU+bfPhM=="), "");
                String string4 = this.f35039c.getString(i0.a("H+tU+Fz8"), "");
                if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                    com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    com.mbridge.msdk.foundation.same.a.f35335g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
                }
                if (!TextUtils.isEmpty(string3) || !TextUtils.isEmpty(string4)) {
                    com.mbridge.msdk.foundation.same.a.V = string3;
                    com.mbridge.msdk.foundation.same.a.f35335g = string4;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
                    return;
                }
                if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                    return;
                }
                this.f35039c.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                this.f35039c.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
                return;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences != null) {
                string2 = sharedPreferences.getString(i0.a("H+tU+bfPhM=="), "");
                string = sharedPreferences.getString(i0.a("H+tU+Fz8"), "");
            } else {
                string = "";
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                com.mbridge.msdk.foundation.same.a.f35335g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (!TextUtils.isEmpty(string2) || !TextUtils.isEmpty(string)) {
                com.mbridge.msdk.foundation.same.a.V = string2;
                com.mbridge.msdk.foundation.same.a.f35335g = string;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
                return;
            }
            if ((TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) || sharedPreferences == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
            editorEdit.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
            editorEdit.apply();
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (com.mbridge.msdk.setting.h.b() == null) {
            return;
        }
        com.mbridge.msdk.setting.h hVarB = com.mbridge.msdk.setting.h.b();
        if (hVarB != null) {
            g gVarD = hVarB.d(str);
            if (gVarD != null) {
                MBridgeConstans.OMID_JS_SERVICE_URL = gVarD.U();
                MBridgeConstans.OMID_JS_H5_URL = gVarD.T();
                if (!TextUtils.isEmpty(gVarD.u())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i = gVarD.u();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().e();
                }
                if (!TextUtils.isEmpty(gVarD.v())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m = gVarD.v();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f();
                }
            } else {
                MBridgeConstans.OMID_JS_SERVICE_URL = com.mbridge.msdk.setting.net.b.f37338b;
                MBridgeConstans.OMID_JS_H5_URL = com.mbridge.msdk.setting.net.b.f37337a;
            }
        }
        if (com.mbridge.msdk.setting.h.b().f(str) && com.mbridge.msdk.setting.h.b().a(str, 1, (String) null)) {
            if (com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("is_first_init", 0) != 0) {
                new j().b(this.f35044h, str, this.f35042f);
                return;
            }
            try {
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().b("is_first_init", 1);
                if (TextUtils.isEmpty(f.d())) {
                    com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(str));
                } else {
                    new j().b(this.f35044h, str, this.f35042f);
                }
            } catch (Throwable unused) {
                new j().b(this.f35044h, str, this.f35042f);
            }
        }
    }

    private void c() {
        com.mbridge.msdk.foundation.controller.c.m().b(this.f35044h);
        com.mbridge.msdk.foundation.controller.c.m().e(this.f35041e);
        com.mbridge.msdk.foundation.controller.c.m().f(this.f35042f);
        com.mbridge.msdk.foundation.controller.c.m().d(this.f35047k);
        com.mbridge.msdk.foundation.controller.c.m().b(this.f35043g);
        com.mbridge.msdk.foundation.controller.c.m().c(new C0483d());
        try {
            com.mbridge.msdk.foundation.same.net.utils.d.h().j();
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        List<com.mbridge.msdk.foundation.entity.a> listG;
        Object objNewInstance;
        Object objNewInstance2;
        try {
            g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null || (listG = gVarD.g()) == null || listG.size() <= 0) {
                return;
            }
            for (com.mbridge.msdk.foundation.entity.a aVar : listG) {
                if (aVar.a() == 287) {
                    if (this.f35044h != null && (objNewInstance = MBInterstitialVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                        MBInterstitialVideoHandler.class.getMethod("loadFormSelfFilling", null).invoke(objNewInstance, null);
                    }
                } else if (aVar.a() == 94 && (objNewInstance2 = MBRewardVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                    MBRewardVideoHandler.class.getMethod("loadFormSelfFilling", null).invoke(objNewInstance2, null);
                }
            }
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            com.mbridge.msdk.timer.b.class.getDeclaredMethod("start", null).invoke(com.mbridge.msdk.timer.b.class.getMethod("getInstance", null).invoke(null, null), null);
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage(), th2);
        }
    }

    public void a(Map<String, Object> map, int i11) {
        if (MBridgeSDKFactory.getMBridgeSDK().getStatus() != MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            o0.b("SDKController", "preloaad failed,sdk do not inited");
            return;
        }
        this.f35038b = map;
        this.f35037a = i11;
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        if (map != null) {
            b(strB);
        }
    }

    public void a(Map map, Context context) {
        Object obj;
        if (context != null) {
            if (!TextUtils.isEmpty(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE)) {
                com.mbridge.msdk.foundation.controller.c.m().c(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE);
            } else if (map.containsKey(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME) && (obj = map.get(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME)) != null) {
                String str = (String) obj;
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.controller.c.m().c(str);
                }
            }
            if (map != null) {
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPID)) {
                    this.f35041e = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPKEY)) {
                    this.f35042f = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPKEY);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_WX_APPID)) {
                    this.f35047k = (String) map.get(MBridgeConstans.ID_MBRIDGE_WX_APPID);
                }
                if (map.containsKey(MBridgeConstans.PACKAGE_NAME_MANIFEST)) {
                    this.f35043g = (String) map.get(MBridgeConstans.PACKAGE_NAME_MANIFEST);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH)) {
                    this.f35045i = (String) map.get(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH);
                }
            }
            this.f35044h = context.getApplicationContext();
            c();
            if (this.f35040d) {
                return;
            }
            b();
            k0.l(context);
            long jX0 = com.mbridge.msdk.setting.h.b().b(this.f35041e).x0();
            if (jX0 != 1300) {
                new Handler(Looper.getMainLooper()).postDelayed(new a(context), jX0);
            }
        }
    }

    public void b() {
        a(this.f35044h.getApplicationContext());
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new b());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            com.mbridge.msdk.foundation.same.report.j.b();
        } catch (Exception unused) {
            o0.b("SDKController", "get app setting failed");
        }
        this.f35040d = true;
    }

    public void b(String str) {
        if (this.f35046j == null) {
            this.f35046j = new com.mbridge.msdk.preload.a();
        }
        try {
            Map<String, Object> map = this.f35038b;
            if (map == null || map.size() <= 0 || !this.f35038b.containsKey(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)) {
                return;
            }
            int iIntValue = ((Integer) this.f35038b.get(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)).intValue();
            if (iIntValue == 0) {
                this.f35046j.a(this.f35038b, this.f35037a);
                return;
            }
            if (1 == iIntValue) {
                this.f35046j.a(this.f35038b);
            } else if (2 == iIntValue) {
                this.f35046j.b(this.f35038b);
            } else {
                o0.b("SDKController", "unknow layout type in preload");
            }
        } catch (Exception e11) {
            o0.b("SDKController", e11.getMessage());
        }
    }

    public boolean e() {
        return true;
    }

    public void f() {
    }
}
