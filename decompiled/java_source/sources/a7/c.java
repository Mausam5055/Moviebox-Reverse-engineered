package a7;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import bi.k;
import com.cloud.hisavana.net.CommonOkHttpClient;
import com.cloud.hisavana.sdk.Z;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.common.util.k0;
import com.cloud.hisavana.sdk.d0;
import com.cloud.hisavana.sdk.database.HisavanaContentProvider;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.s0;
import com.cloud.hisavana.sdk.v1;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.m;
import com.cloud.sdk.commonutil.util.o;
import com.cloud.tmc.miniapp.ad.AdManager;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f364a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f365b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f366c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicLong f367d = new AtomicLong(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f368e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f369f = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f370g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f371h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f372i = true;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f373a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f375c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f376d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f377e;

        public a(b bVar) {
            this.f375c = false;
            this.f377e = false;
            this.f373a = bVar.f378a;
            this.f374b = bVar.f379b;
            this.f375c = bVar.f380c;
            this.f376d = bVar.f381d;
            this.f377e = bVar.f382e;
            HSScopeHelper.f23168b = bVar.f383f;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f380c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f378a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f379b = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f381d = 200;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f382e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f383f = false;

        public a c() {
            return new a(this);
        }

        public b h(String str) {
            c.f365b = str;
            return this;
        }

        public b i(boolean z10) {
            this.f378a = z10;
            this.f379b = z10;
            e.j(z10);
            e4.b().setLogSwitch(this.f378a);
            com.cloud.sdk.commonutil.util.c.NET_LOG.m().q(this.f378a);
            return this;
        }

        public b j(int i11) {
            this.f381d = i11;
            return this;
        }

        public b k(boolean z10) {
            boolean unused = c.f372i = z10;
            return this;
        }

        public b l(boolean z10) {
            boolean unused = c.f371h = z10;
            return this;
        }

        public b m(long j11) {
            c.f367d.set(j11);
            return this;
        }

        public b n(boolean z10) {
            boolean unused = c.f370g = z10;
            return this;
        }

        public b o(boolean z10) {
            this.f382e = z10;
            return this;
        }

        public b p(boolean z10) {
            this.f380c = z10;
            return this;
        }
    }

    private static void d(a aVar) {
        if (f364a != null || aVar == null) {
            return;
        }
        if (!aVar.f373a) {
            com.cloud.sdk.commonutil.util.c.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        k0.b(aVar.f374b);
        if (!aVar.f373a) {
            aVar.f373a = Log.isLoggable("TA_SDK", 3) || Log.isLoggable("ADSDK", 3);
        }
        f364a = aVar;
        d0.f22327a.c(f364a.f376d);
        DeviceUtil.e();
        AthenaTracker.o(f364a.f373a, e.a());
        NetStateManager.registerMonitorBroadcast();
        e4.b().setLogSwitch(f364a.f373a);
        AthenaTracker.R();
        f();
        l7.c.e();
        HSScopeHelper hSScopeHelper = HSScopeHelper.f23167a;
        hSScopeHelper.i(new Runnable() { // from class: a7.a
            @Override // java.lang.Runnable
            public final void run() {
                c.h();
            }
        });
        hSScopeHelper.g(new Runnable() { // from class: a7.b
            @Override // java.lang.Runnable
            public final void run() {
                c.m();
            }
        });
        s0.b(e.a());
        Z.f21541a.k(f367d.get());
        y.f23090a.O();
        v1.f23023a.d();
    }

    private static void f() {
        try {
            if (e.a().getApplicationContext() instanceof Application) {
                k.c((Application) e.a().getApplicationContext(), false);
                CommonOkHttpClient.f21318a = p();
            }
        } catch (Exception unused) {
            e4.b().e("init NetworkMonitor failure!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h() {
        k1.o().n(1);
        o.n();
        i7.a.s0();
    }

    public static boolean j() {
        return f370g;
    }

    public static boolean k() {
        return f372i;
    }

    public static boolean l() {
        return f371h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m() {
        i0.e(e.a());
    }

    public static int n() {
        return f368e;
    }

    public static void o(Context context, a aVar) {
        if (TextUtils.isEmpty(f365b)) {
            e4.b().e(AdManager.TAG, "AppId is empty, please check your config.");
            return;
        }
        m.j((Application) context.getApplicationContext());
        e.g(context);
        HisavanaContentProvider.h();
        d(aVar);
    }

    public static boolean p() {
        a aVar = f364a;
        if (aVar != null) {
            return aVar.f373a;
        }
        return false;
    }

    public static boolean q() {
        a aVar = f364a;
        if (aVar != null) {
            return aVar.f375c;
        }
        return false;
    }

    public static boolean r() {
        return f366c;
    }

    public static void s(Context context, String str, boolean z10) {
        f365b = str;
        e.g(context);
        HisavanaContentProvider.h();
        DeviceUtil.e();
        AthenaTracker.o(z10, e.a());
        NetStateManager.registerMonitorBroadcast();
        l7.c.e();
    }

    public static void t(int i11) {
        if (i11 < 1 || i11 > 100) {
            return;
        }
        f369f = i11;
    }

    public static void u(boolean z10) {
        f366c = z10;
    }

    public static boolean v() {
        a aVar = f364a;
        if (aVar != null) {
            return aVar.f377e;
        }
        return false;
    }
}
