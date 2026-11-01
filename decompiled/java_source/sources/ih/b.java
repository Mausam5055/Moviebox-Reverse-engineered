package ih;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import java.util.Locale;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f65241a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f65242b = LazyKt.b(new Function0() { // from class: ih.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.p();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f65243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f65244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f65245e;

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV p() {
        return MMKV.I("vshow");
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        if (context instanceof Application) {
            String string = m().getString("apkgaid", "");
            if (TextUtils.isEmpty(string)) {
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                jh.b.f66017c.a(context, intent);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("gid has get gid ");
                sb2.append(string);
            }
        }
    }

    public final String c() {
        if (TextUtils.isEmpty(f65243c)) {
            f65243c = m().getString("apkandroidid", "");
        }
        String string = f65243c;
        if (TextUtils.isEmpty(string)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Application applicationA = Utils.a();
                string = Settings.System.getString(applicationA != null ? applicationA.getContentResolver() : null, "android_id");
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        return string == null ? "" : string;
    }

    public final String d() {
        String BRAND = Build.BRAND;
        Intrinsics.g(BRAND, "BRAND");
        return BRAND;
    }

    public final String e() {
        return StringsKt.Q(StringsKt.Q(ArraysKt.e(Build.SUPPORTED_ABIS), "[", "", false, 4, null), "]", "", false, 4, null);
    }

    public final String f() {
        String country = Locale.getDefault().getCountry();
        Intrinsics.g(country, "getCountry(...)");
        return country;
    }

    public final String g() {
        Application applicationA = Utils.a();
        Object systemService = applicationA != null ? applicationA.getSystemService("phone") : null;
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        String simCountryIso = telephonyManager != null ? telephonyManager.getSimCountryIso() : null;
        if (simCountryIso == null || simCountryIso.length() == 0) {
            if (telephonyManager != null) {
                return telephonyManager.getNetworkCountryIso();
            }
            return null;
        }
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso();
        }
        return null;
    }

    public final String h() {
        String string;
        if (TextUtils.isEmpty(f65245e)) {
            f65245e = m().getString("apkdeviceid", "");
        }
        String strValueOf = String.valueOf(f65245e);
        if (TextUtils.isEmpty(f65243c)) {
            f65243c = m().getString("apkandroidid", "");
        }
        String strValueOf2 = String.valueOf(f65243c);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        if (!TextUtils.isEmpty(strValueOf2)) {
            String strD = lh.a.f68842a.d(strValueOf2);
            r(strD);
            return strD;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Application applicationA = Utils.a();
            string = Settings.System.getString(applicationA != null ? applicationA.getContentResolver() : null, "android_id");
            Intrinsics.g(string, "getString(...)");
            try {
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                strValueOf2 = string;
                th = th2;
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th));
                string = strValueOf2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        if (!TextUtils.isEmpty(string) && !Intrinsics.c(string, "9774d56d682e549c")) {
            String strD2 = lh.a.f68842a.d(string);
            r(strD2);
            q(string);
            return strD2;
        }
        String string2 = UUID.randomUUID().toString();
        Intrinsics.g(string2, "toString(...)");
        String strD3 = lh.a.f68842a.d(string2);
        r(strD3);
        return strD3;
    }

    public final String i() {
        if (TextUtils.isEmpty(f65244d)) {
            f65244d = m().getString("apkgaid", "");
        }
        String strValueOf = String.valueOf(f65244d);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        String strC = c();
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String j() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.e(language);
        return language;
    }

    public final ActivityManager.MemoryInfo k(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public final String l() {
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        return MODEL;
    }

    public final MMKV m() {
        return (MMKV) f65242b.getValue();
    }

    public final String n() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.g(RELEASE, "RELEASE");
        return RELEASE;
    }

    public final String o() {
        Object systemService = Utils.a().getSystemService("phone");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simOperator = ((TelephonyManager) systemService).getSimOperator();
        Intrinsics.g(simOperator, "getSimOperator(...)");
        return simOperator;
    }

    public final void q(String androidId) {
        Intrinsics.h(androidId, "androidId");
        m().putString("apkandroidid", androidId);
    }

    public final void r(String deviceId) {
        Intrinsics.h(deviceId, "deviceId");
        m().putString("apkdeviceid", deviceId);
    }

    public final void s(String gid) {
        Intrinsics.h(gid, "gid");
        m().putString("apkgaid", gid);
    }
}
