package com.cloud.tmc.offline.download.utils;

import android.text.TextUtils;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/Utils;", "", "()V", "mcc", "", "getAppVersionFromOfflinePkgCache", "offlinePkgCachePath", "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;", "getMcc", "isNumeric", "", "str", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Utils {
    public static final Utils INSTANCE = new Utils();
    private static String mcc;

    private Utils() {
    }

    public final String getAppVersionFromOfflinePkgCache(OfflinePkgCachePath offlinePkgCachePath) {
        AppInfoModel appInfo;
        String deployVersion = null;
        if (offlinePkgCachePath != null) {
            try {
                List<ZipFileInfo> zipFileInfo = offlinePkgCachePath.getZipFileInfo();
                if (zipFileInfo != null && !zipFileInfo.isEmpty()) {
                    OffPkgConfig manifest = offlinePkgCachePath.getZipFileInfo().get(0).getManifest();
                    if (manifest != null && (appInfo = manifest.getAppInfo()) != null) {
                        deployVersion = appInfo.getDeployVersion();
                    }
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getAppVersionFromOfflinePkgCache:appVersion:" + deployVersion);
                }
            } catch (Throwable unused) {
            }
        }
        return deployVersion;
    }

    public final String getMcc() {
        String str = mcc;
        if (str != null) {
            return str;
        }
        String deviceOperator = DeviceInfo.f();
        if (!TextUtils.isEmpty(deviceOperator) && deviceOperator.length() >= 3) {
            Intrinsics.g(deviceOperator, "deviceOperator");
            String strSubstring = deviceOperator.substring(0, 3);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            mcc = strSubstring;
        }
        return mcc;
    }

    public final boolean isNumeric(String str) {
        Intrinsics.h(str, "str");
        return new Regex("\\d+").matches(str);
    }
}
