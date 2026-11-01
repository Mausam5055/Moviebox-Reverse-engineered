package i7;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.BuildConfig;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f64999a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f65000b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f65001c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f65002d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f65003e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f65004f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f65005g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f65006h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f65007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f65008j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f65009k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f65010l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f65011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static int f65012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f65013o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f65014p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f65015q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final AtomicInteger f65016r = new AtomicInteger(0);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final AtomicInteger f65017s = new AtomicInteger(0);

    public static String a() {
        if (TextUtils.isEmpty(f65009k)) {
            f65009k = Build.BRAND;
        }
        return f65009k;
    }

    public static String b() {
        if (TextUtils.isEmpty(f65015q)) {
            f65015q = DeviceUtil.c();
        }
        return f65015q;
    }

    public static String c() {
        if (TextUtils.isEmpty(f65003e)) {
            f65003e = Build.MANUFACTURER;
        }
        return f65003e;
    }

    public static String d() {
        if (DeviceUtil.b(f65007i, f65016r, 1)) {
            String strL = DeviceUtil.l();
            if (!TextUtils.isEmpty(strL) && strL.length() >= 3) {
                f65007i = strL.substring(0, 3);
            }
        }
        return f65007i;
    }

    public static String e() {
        if (DeviceUtil.b(f65008j, f65017s, 1)) {
            String strL = DeviceUtil.l();
            if (!TextUtils.isEmpty(strL) && strL.length() >= 3) {
                f65008j = strL.substring(3);
            }
        }
        return f65008j;
    }

    public static String f() {
        if (TextUtils.isEmpty(f65010l)) {
            f65010l = Build.MODEL;
        }
        return f65010l;
    }

    public static int g() {
        if (f65012n == 0) {
            f65012n = DeviceUtil.k();
        }
        return f65012n;
    }

    public static String h() {
        if (TextUtils.isEmpty(f65011m)) {
            f65011m = DeviceUtil.m();
        }
        return f65011m;
    }

    public static int i() {
        if (f65006h == -1) {
            f65006h = (int) h.b();
        }
        return f65006h;
    }

    public static int j() {
        if (f65005g == -1) {
            try {
                f65005g = h.f();
            } catch (Throwable unused) {
            }
        }
        return f65005g;
    }

    public static int k() {
        if (f65004f == -1) {
            try {
                f65004f = h.g();
            } catch (Throwable unused) {
            }
        }
        return f65004f;
    }

    public static String l() {
        if (TextUtils.isEmpty(f65000b)) {
            f65000b = BuildConfig.VERSION_NAME;
        }
        return f65000b;
    }

    public static int m() {
        if (f65001c == 0) {
            f65001c = 360200;
        }
        return f65001c;
    }

    public static String n() {
        if (TextUtils.isEmpty(f64999a)) {
            f64999a = DeviceUtil.o();
        }
        return f64999a;
    }

    public static int o() {
        if (f65002d == -1) {
            f65002d = DeviceUtil.q() ? 2 : 1;
        }
        return f65002d;
    }

    public static String p() {
        if (TextUtils.isEmpty(f65014p)) {
            f65014p = String.valueOf(com.cloud.sdk.commonutil.util.e.e());
        }
        return f65014p;
    }

    public static String q() {
        if (TextUtils.isEmpty(f65013o)) {
            f65013o = String.valueOf(com.cloud.sdk.commonutil.util.e.f());
        }
        return f65013o;
    }
}
