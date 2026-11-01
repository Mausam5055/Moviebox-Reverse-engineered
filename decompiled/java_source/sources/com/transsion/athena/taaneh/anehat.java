package com.transsion.athena.taaneh;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.transsion.sdk.oneid.OneID;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import k4.a;
import k4.b;

/* JADX INFO: loaded from: classes5.dex */
public class anehat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f42799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f42800b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f42801c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f42802d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f42803e = 0;

    public static int a(long j11) {
        if (j11 > 999) {
            return Integer.parseInt(String.valueOf(j11).substring(0, 4));
        }
        return 0;
    }

    @NonNull
    public static String a() {
        return f42799a == null ? "" : f42799a;
    }

    public static String a(int i11) {
        StringBuilder sb2;
        String str;
        if (i11 > 10) {
            sb2 = new StringBuilder();
            str = "";
        } else {
            sb2 = new StringBuilder();
            str = "0";
        }
        sb2.append(str);
        sb2.append(i11);
        return sb2.toString();
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f42799a)) {
            try {
                f42799a = athena.a(context).a();
                if (!TextUtils.isEmpty(f42799a)) {
                    a aVarA = a.a(context);
                    if (!TextUtils.equals(f42799a, aVarA.i("athena_id"))) {
                        aVarA.g("athena_id", f42799a);
                    }
                }
            } catch (Exception e11) {
                aethna.b(e11.getMessage());
            }
            if (TextUtils.isEmpty(f42799a)) {
                f42799a = a.a(context).i("athena_id");
            }
        }
        return f42799a;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Log.e("Athena", "------------------------------------------------------------");
        Log.e("Athena", "");
        Log.e("Athena", str);
        Log.e("Athena", "");
        Log.e("Athena", "------------------------------------------------------------");
    }

    public static boolean a(Context context, String str) {
        if ("android.permission.ACCESS_FINE_LOCATION".equals(str)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
                String[] strArr = packageInfo.requestedPermissions;
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo != null && applicationInfo.uid == 1000 && strArr != null) {
                    for (String str2 : strArr) {
                        if (TextUtils.equals(str2, str)) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Exception e11) {
                aethna.b(e11.getMessage());
            }
        }
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (Exception e12) {
            aethna.b(e12.getMessage());
            return false;
        }
    }

    public static String b(Context context, String str) {
        Map<String, String> map = f42800b;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        try {
            if (!OneID.f()) {
                return "";
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j11 = f42802d;
            if (j11 != 0 && jElapsedRealtime - j11 < 600000) {
                return "";
            }
            String strA = b.b(context).a(str);
            if (TextUtils.isEmpty(strA)) {
                f42802d = jElapsedRealtime;
                return "";
            }
            map.put(str, strA);
            f42802d = 0L;
            return strA;
        } catch (Exception e11) {
            aethna.b(e11.getMessage());
            return "";
        }
    }

    public static void b(String str) {
        f42799a = str;
    }

    public static boolean b() {
        return com.transsion.athena.config.data.model.ehanat.q() || com.transsion.athena.config.data.model.ehanat.v();
    }

    public static boolean b(long j11) {
        return j11 > 999 && j11 <= 9999;
    }

    public static boolean b(Context context) {
        try {
            if (f42801c) {
                if (TextUtils.isEmpty(a.a(context).i("first_launch"))) {
                    if (new File(context.getFilesDir() + File.separator + com.transsion.athena.config.data.model.ehanat.f42609j, "global.cfg").exists()) {
                        f42801c = false;
                    }
                } else {
                    f42801c = false;
                }
            }
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
        return f42801c;
    }

    public static boolean c(Context context) {
        try {
            ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo("com.hoffnung", 8).providers;
            if (providerInfoArr != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if ("com.transsion.dataservice.provider".equals(providerInfo.authority)) {
                        return true;
                    }
                }
            }
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
        return false;
    }
}
