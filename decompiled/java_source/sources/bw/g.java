package bw;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f16939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f16940b;

    public static void a(String msg) {
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        c();
        boolean z10 = yv.f.f79067o.a().f79072d;
    }

    public static void b(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        c();
        boolean z10 = yv.f.f79067o.a().f79072d;
    }

    public static boolean c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z10 = f16939a;
        if (z10 || jCurrentTimeMillis - f16940b < 5000) {
            return z10;
        }
        f16940b = jCurrentTimeMillis;
        if (Log.isLoggable("upgradeSdkLog", 3)) {
            f16939a = true;
        }
        return f16939a;
    }
}
