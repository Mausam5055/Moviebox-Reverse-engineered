package com.apm.insight;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.apm.insight.runtime.ConfigManager;
import com.apm.insight.runtime.g;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.meituan.android.walle.ChannelReader;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f19454a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f19455b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f19456c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f19457d = "default";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f19458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static com.apm.insight.nativecrash.b f19459f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile ConcurrentHashMap<Integer, String> f19462i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile String f19467n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConfigManager f19460g = new ConfigManager();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static a f19461h = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static g f19463j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile String f19464k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Object f19465l = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile int f19466m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static int f19468o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f19469p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f19470q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f19471r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f19472s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static boolean f19473t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f19474u = true;

    public static com.apm.insight.nativecrash.b a() {
        if (f19459f == null) {
            f19459f = g.a(f19454a);
        }
        return f19459f;
    }

    public static String a(long j11, CrashType crashType, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j11);
        sb2.append("_");
        sb2.append(crashType.getName());
        sb2.append('_');
        sb2.append(f());
        sb2.append('_');
        sb2.append(z10 ? "oom_" : "normal_");
        sb2.append(f19456c);
        sb2.append('_');
        sb2.append(z11 ? "ignore_" : "normal_");
        sb2.append(Long.toHexString(new Random().nextLong()));
        sb2.append("G");
        return sb2.toString();
    }

    static void a(int i11, String str) {
        if (f19462i == null) {
            synchronized (e.class) {
                try {
                    if (f19462i == null) {
                        f19462i = new ConcurrentHashMap<>();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        f19462i.put(Integer.valueOf(i11), str);
    }

    public static void a(Application application) {
        if (application != null) {
            f19455b = application;
        }
    }

    public static void a(Application application, Context context) {
        if (f19455b == null) {
            f19456c = System.currentTimeMillis();
            f19454a = context;
            f19455b = application;
            f19464k = Long.toHexString(new Random().nextLong()) + "G";
        }
    }

    static void a(Application application, Context context, ICommonParams iCommonParams) {
        a(application, context);
        f19459f = new com.apm.insight.nativecrash.b(f19454a, iCommonParams, a());
    }

    public static void a(com.apm.insight.nativecrash.b bVar) {
        f19459f = bVar;
    }

    static void a(String str) {
        f19457d = str;
    }

    public static void a(boolean z10) {
        f19469p = z10;
    }

    public static a b() {
        return f19461h;
    }

    static void b(int i11, String str) {
        f19466m = i11;
        f19467n = str;
    }

    public static void b(boolean z10) {
        f19470q = z10;
    }

    public static g c() {
        if (f19463j == null) {
            synchronized (e.class) {
                f19463j = new g();
            }
        }
        return f19463j;
    }

    public static void c(boolean z10) {
        f19471r = z10;
    }

    public static void d(boolean z10) {
        f19472s = z10;
    }

    public static boolean d() {
        if (!f19460g.isDebugMode()) {
            return false;
        }
        Object obj = a().a().get(ChannelReader.CHANNEL_KEY);
        return (obj == null ? TmcConstants.ROUTE_UNKNOWN : String.valueOf(obj)).contains("local_test");
    }

    public static String e() {
        return f() + '_' + Long.toHexString(new Random().nextLong()) + "G";
    }

    public static void e(boolean z10) {
        f19474u = z10;
    }

    public static String f() {
        if (f19464k == null) {
            synchronized (f19465l) {
                try {
                    if (f19464k == null) {
                        f19464k = Long.toHexString(new Random().nextLong()) + "U";
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19464k;
    }

    public static void f(boolean z10) {
        f19473t = z10;
    }

    public static Context g() {
        return f19454a;
    }

    public static Application h() {
        return f19455b;
    }

    public static ConfigManager i() {
        return f19460g;
    }

    public static long j() {
        return f19456c;
    }

    public static String k() {
        return f19457d;
    }

    public static void l() {
        f19468o = 1;
    }

    public static int m() {
        return f19468o;
    }

    public static boolean n() {
        return f19458e;
    }

    static void o() {
        f19458e = true;
    }

    public static ConcurrentHashMap<Integer, String> p() {
        return f19462i;
    }

    public static int q() {
        return f19466m;
    }

    public static String r() {
        return f19467n;
    }

    public static boolean s() {
        return f19469p;
    }

    public static boolean t() {
        return f19470q;
    }

    public static boolean u() {
        return f19471r;
    }

    public static boolean v() {
        return f19472s;
    }

    public static boolean w() {
        return f19474u;
    }

    public static boolean x() {
        return f19473t;
    }
}
