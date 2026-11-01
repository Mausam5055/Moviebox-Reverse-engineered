package com.cloud.tmc.integration;

import android.app.Application;
import android.os.Build;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniutils.util.Utils;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;", "", "()V", "getLauncherMultiMMKV", "Lcom/tencent/mmkv/MMKV;", "getGetLauncherMultiMMKV", "()Lcom/tencent/mmkv/MMKV;", "multiMMKV", "getNewsOptionPopShow", "", "getSelectLanguage", "", "putNewsOptionPopShow", "", "showStatus", "putSelectLanguage", "selectLanguage", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LauncherMMkvStorageHelper {
    public static final LauncherMMkvStorageHelper INSTANCE = new LauncherMMkvStorageHelper();
    private static MMKV multiMMKV;

    private LauncherMMkvStorageHelper() {
    }

    public final MMKV getGetLauncherMultiMMKV() {
        if (multiMMKV == null) {
            try {
                Application app = Utils.getApp();
                MMKV mmkvL = MMKV.L("zeroscreen_sp_file_nametrue", 2, null, (Build.VERSION.SDK_INT >= 24 ? app.createDeviceProtectedStorageContext() : app).getFilesDir().getAbsolutePath() + "/files/mmkv/" + app.getPackageName());
                Intrinsics.g(mmkvL, "mmkvWithID(\n            …dir\n                    )");
                multiMMKV = mmkvL;
            } catch (Throwable th2) {
                TmcLogger.e("getLauncherMultiMMKV error", th2);
            }
        }
        MMKV mmkv = multiMMKV;
        if (mmkv != null) {
            return mmkv;
        }
        Intrinsics.z("multiMMKV");
        return null;
    }

    public final boolean getNewsOptionPopShow() {
        try {
            return getGetLauncherMultiMMKV().getBoolean("zs_key_card_news_options_pop_show", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final String getSelectLanguage() {
        try {
            return getGetLauncherMultiMMKV().getString("user_select_language", "");
        } catch (Throwable unused) {
            return "";
        }
    }

    public final void putNewsOptionPopShow(boolean showStatus) {
        try {
            getGetLauncherMultiMMKV().putBoolean("zs_key_card_news_options_pop_show", showStatus);
        } catch (Throwable th2) {
            TmcLogger.e("putSelectLanguage", th2);
        }
    }

    public final void putSelectLanguage(String selectLanguage) {
        Intrinsics.h(selectLanguage, "selectLanguage");
        try {
            getGetLauncherMultiMMKV().putString("user_select_language", selectLanguage);
        } catch (Throwable th2) {
            TmcLogger.e("putSelectLanguage", th2);
        }
    }
}
