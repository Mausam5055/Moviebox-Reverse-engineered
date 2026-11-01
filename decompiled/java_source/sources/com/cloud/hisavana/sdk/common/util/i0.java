package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i0 {
    public static boolean a(AdsDTO adsDTO) {
        if (adsDTO != null && adsDTO.getExt() != null) {
            return adsDTO.getExt().getStoreFlag().intValue() == 1;
        }
        e4.b().d("StoreUtil", "canShowPsMark ads、context、adx.ext is null");
        return false;
    }

    public static PackageInfo b(String str, Context context) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static PackageInfo c(Context context) {
        return b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
    }

    private static long d(Context context) {
        PackageInfo packageInfoB = b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
        if (packageInfoB == null) {
            return -1L;
        }
        return Build.VERSION.SDK_INT >= 28 ? packageInfoB.getLongVersionCode() : packageInfoB.versionCode;
    }

    public static void e(Context context) {
        PackageInfo packageInfoC;
        PackageManager packageManager;
        e0 e0Var = e0.f22156a;
        if (e0Var.b() || (packageInfoC = c(context)) == null) {
            return;
        }
        try {
            if (packageInfoC.applicationInfo == null || (packageManager = context.getPackageManager()) == null) {
                return;
            }
            String string = packageInfoC.applicationInfo.loadLabel(packageManager).toString();
            e0Var.c(string);
            e4.b().d("StoreUtil", "get psAppName from PackageManager:->" + string);
        } catch (Throwable th2) {
            e4.b().e("StoreUtil", "initPsAppCache error: " + th2.getMessage());
        }
    }

    public static boolean f(Context context) {
        PackageInfo packageInfoB = b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
        if (packageInfoB == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return packageInfoB.getLongVersionCode() >= 8403100;
        }
        return packageInfoB.versionCode >= 8403100;
    }

    public static boolean g(Context context) {
        return d(context) >= 9207201;
    }

    public static boolean h(Context context) {
        return d(context) >= 8403100;
    }
}
