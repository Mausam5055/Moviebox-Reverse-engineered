package mc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.b;
import fc.c;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f69508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f69509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f69510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f69511d;

    public a(Context context, String str, c cVar) {
        Context contextA = a(context);
        this.f69508a = contextA;
        this.f69509b = contextA.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f69510c = cVar;
        this.f69511d = c();
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : b.createDeviceProtectedStorageContext(context);
    }

    private boolean c() {
        return this.f69509b.contains("firebase_data_collection_default_enabled") ? this.f69509b.getBoolean("firebase_data_collection_default_enabled", true) : d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f69508a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f69508a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean b() {
        return this.f69511d;
    }
}
