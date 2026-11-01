package ti;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f76254a = new e();

    private e() {
    }

    public final boolean a(Context context, String str) {
        PackageManager packageManager;
        if (str == null || str.length() == 0 || context == null || (packageManager = context.getPackageManager()) == null) {
            return false;
        }
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(0L));
            } else {
                packageManager.getPackageInfo(str, 0);
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public final boolean b(Context context, String str) {
        Intent launchIntentForPackage;
        PackageManager packageManager;
        if (context == null || (packageManager = context.getPackageManager()) == null) {
            launchIntentForPackage = null;
        } else {
            if (str == null) {
                str = "";
            }
            launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        }
        if (launchIntentForPackage == null) {
            return false;
        }
        context.startActivity(launchIntentForPackage);
        return true;
    }
}
