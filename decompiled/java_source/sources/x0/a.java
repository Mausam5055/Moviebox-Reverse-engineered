package x0;

import android.content.pm.PackageInfo;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: x0.a$a, reason: collision with other inner class name */
    private static class C0958a {
        static long a(PackageInfo packageInfo) {
            return packageInfo.getLongVersionCode();
        }
    }

    public static long a(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? C0958a.a(packageInfo) : packageInfo.versionCode;
    }
}
