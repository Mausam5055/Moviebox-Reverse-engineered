package com.cloud.tmc.integration.utils;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\bJ\u001c\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/utils/FilePathUtils;", "", "()V", "TAG", "", "getAppIdFormVurl", "vurl", "getDowngradeStatus", "", "appId", "getLocalVUrl", "getMMKVDowngradeStatus", "getRealPath", "vUrl", "getTempVUrl", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FilePathUtils {
    public static final FilePathUtils INSTANCE = new FilePathUtils();
    public static final String TAG = "FilePathUtils";

    private FilePathUtils() {
    }

    public final String getAppIdFormVurl(String vurl) {
        MatchGroupCollection matchGroupCollectionC;
        MatchGroup matchGroup;
        String value;
        Intrinsics.h(vurl, "vurl");
        try {
            MatchResult matchResultFind$default = Regex.find$default(new Regex("https://(.*?).miniapp.transsion.com"), vurl, 0, 2, null);
            return (matchResultFind$default == null || (matchGroupCollectionC = matchResultFind$default.c()) == null || (matchGroup = matchGroupCollectionC.get(1)) == null || (value = matchGroup.getValue()) == null) ? "" : value;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return "";
        }
    }

    public final boolean getDowngradeStatus(String appId) {
        if (appId != null) {
            try {
                if (appId.length() != 0) {
                    return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext(), appId, appId + "_scan_downgrade", false);
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
        return true;
    }

    public final String getLocalVUrl(String appId) {
        Intrinsics.h(appId, "appId");
        return "https://" + appId + ".miniapp.transsion.com/local_data";
    }

    public final boolean getMMKVDowngradeStatus() {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_DOWNGRADE_SCAN_FILE, false);
    }

    public final String getRealPath(String appId, String vUrl) {
        if (getDowngradeStatus(appId)) {
            TmcLogger.e(TAG, "appId=" + appId + " downgrade status is true.");
            return null;
        }
        String strDecode = UrlUtils.decode(vUrl);
        if (appId == null || appId.length() == 0 || strDecode == null || strDecode.length() == 0) {
            TmcLogger.e(TAG, "appId=" + appId + " or vUrl=" + strDecode + " is invalid.");
            return null;
        }
        String str = "https://" + appId + ".miniapp.transsion.com/temp_data";
        if (StringsKt.W(strDecode, str, false, 2, null)) {
            String strR = StringsKt.R(strDecode, str, ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(appId) + File.separator + TmcConstants.TEMP_DATA_PATH, true);
            TmcLogger.d(TAG, strDecode + " ======> " + strR);
            return strR;
        }
        String str2 = "https://" + appId + ".miniapp.transsion.com/local_data";
        if (!StringsKt.W(strDecode, str2, false, 2, null)) {
            return null;
        }
        String strR2 = StringsKt.R(strDecode, str2, ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(appId) + File.separator + TmcConstants.LOCAL_DATA_PATH, true);
        TmcLogger.d(TAG, strDecode + " ======> " + strR2);
        return strR2;
    }

    public final String getTempVUrl(String appId) {
        Intrinsics.h(appId, "appId");
        return "https://" + appId + ".miniapp.transsion.com/temp_data";
    }
}
