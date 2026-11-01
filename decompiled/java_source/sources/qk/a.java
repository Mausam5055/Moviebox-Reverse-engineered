package qk;

import android.content.Context;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.utils.f;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f73635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f73636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f73637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f73638d;

    public static Context a() {
        Context context = f73635a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (d()) {
            return;
        }
        f73638d = true;
        f73635a = context.getApplicationContext();
        DeviceInfo.d();
        f.a(a());
    }

    public static boolean c() {
        return f73636b;
    }

    public static boolean d() {
        return f73638d && f73635a != null;
    }

    public static boolean e() {
        return f73637c;
    }

    public static void f(boolean z10) {
        f73636b = z10;
    }
}
