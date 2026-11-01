package com.cloud.tmc.integration.utils;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.FileIOUtils;
import com.cloud.tmc.miniutils.util.JsonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ\"\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0002J\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bJ \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\bJ\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J \u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\bJ\"\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\bJ\"\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u0019\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u001a\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\b¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;", "Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;", "()V", "changeLatestBackgroundDownloadStatus", "", "context", "Landroid/content/Context;", "appId", "", "uniqueIdentificationUrl", NotificationCompat.CATEGORY_STATUS, "", "changeLoadStatus", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "packageEncryptionUrl", "changeZipDownloadStatus", "checkLatestBackgroundDownloadStatus", "identificationEncryptionUrl", "checkSHA256", "subPackageInfo", "Lcom/cloud/tmc/integration/model/SubPackageInfo;", "checkTarUnCompressStatus", "clearAllFilesForVersion", "clearLatestBackgroundDownloadStatus", "getManifestJson", "getSignJson", "urlToSHA256", "url", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubpackageAppPrepareUtils extends BaseAppPrepareUtils {
    public static final SubpackageAppPrepareUtils INSTANCE = new SubpackageAppPrepareUtils();

    private SubpackageAppPrepareUtils() {
    }

    private final void changeLoadStatus(Context context, AppModel appModel, String packageEncryptionUrl) {
        changeZipDownloadStatus(context, appModel.getAppId(), packageEncryptionUrl, false);
        changeZipUnCompressStatus(context, appModel.getAppId(), packageEncryptionUrl, false);
        changeTarUnCompressStatus(context, appModel.getAppId(), packageEncryptionUrl, false);
    }

    public static /* synthetic */ void clearAllFilesForVersion$default(SubpackageAppPrepareUtils subpackageAppPrepareUtils, Context context, AppModel appModel, String str, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str = null;
        }
        subpackageAppPrepareUtils.clearAllFilesForVersion(context, appModel, str);
    }

    public final void changeLatestBackgroundDownloadStatus(Context context, String appId, String uniqueIdentificationUrl, boolean status) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, uniqueIdentificationUrl + "_bgDownStatus", status);
        }
    }

    public final void changeZipDownloadStatus(Context context, AppModel appModel, boolean status) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        changeZipDownloadStatus(context, appModel.getAppId(), appModel.getPackageUrl_MD5(), status);
    }

    public final boolean checkLatestBackgroundDownloadStatus(Context context, String appId, String identificationEncryptionUrl) {
        Intrinsics.h(context, "context");
        Intrinsics.h(identificationEncryptionUrl, "identificationEncryptionUrl");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId == null) {
            return false;
        }
        return kVStorageProxy.getBoolean(context, appId, identificationEncryptionUrl + "_bgDownStatus", false);
    }

    public final boolean checkSHA256(AppModel appModel, SubPackageInfo subPackageInfo) {
        Intrinsics.h(appModel, "appModel");
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        AppUtils appUtils = AppUtils.INSTANCE;
        String currentPackageEncryptionUrl$default = AppUtils.getCurrentPackageEncryptionUrl$default(appUtils, appModel, subPackageInfo, null, 4, null);
        String signJson = getSignJson(appModel, currentPackageEncryptionUrl$default);
        String currentPackageUniqueName$default = AppUtils.getCurrentPackageUniqueName$default(appUtils, appModel, subPackageInfo, null, 4, null);
        String string = JsonUtils.getString(signJson, currentPackageUniqueName$default + ".tar");
        String string2 = JsonUtils.getString(signJson, "Manifest.json");
        String strEncryptSHA256ToString = EncryptUtils.encryptSHA256ToString(FileIOUtils.readFile2BytesByStream(pathProxy.getTarPath(appModel.getAppId(), currentPackageEncryptionUrl$default, currentPackageUniqueName$default)));
        String zipUnCompressPath = pathProxy.getZipUnCompressPath(appModel.getAppId(), currentPackageEncryptionUrl$default);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(zipUnCompressPath);
        sb2.append("/Manifest.json");
        return Intrinsics.c(string, strEncryptSHA256ToString) && Intrinsics.c(string2, EncryptUtils.encryptSHA256ToString(FileIOUtils.readFile2BytesByStream(sb2.toString())));
    }

    public final boolean checkTarUnCompressStatus(Context context, String appId, String identificationEncryptionUrl) {
        Intrinsics.h(context, "context");
        Intrinsics.h(identificationEncryptionUrl, "identificationEncryptionUrl");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId == null) {
            return false;
        }
        return kVStorageProxy.getBoolean(context, appId, identificationEncryptionUrl + "_tar", false);
    }

    public final void clearAllFilesForVersion(Context context, AppModel appModel, String packageEncryptionUrl) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        try {
            ((FileProxy) TmcProxy.get(FileProxy.class)).deleteAllFileForVersion(appModel, packageEncryptionUrl);
            if (packageEncryptionUrl != null && packageEncryptionUrl.length() != 0) {
                changeLoadStatus(context, appModel, packageEncryptionUrl);
                return;
            }
            String packageUrl_MD5 = appModel.getPackageUrl_MD5();
            if (packageUrl_MD5 != null) {
                INSTANCE.changeLoadStatus(context, appModel, packageUrl_MD5);
            }
            String mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption();
            if (mainPackageUrlEncryption != null) {
                INSTANCE.changeLoadStatus(context, appModel, mainPackageUrlEncryption);
            }
            List subPackagePages = appModel.getSubPackagePages();
            if (subPackagePages != null) {
                Iterator it = subPackagePages.iterator();
                while (it.hasNext()) {
                    INSTANCE.changeLoadStatus(context, appModel, ((SubPackageInfo) it.next()).getSubPackageUrlMD5());
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("clearVersion", th2);
        }
    }

    public final void clearLatestBackgroundDownloadStatus(Context context, String appId, String uniqueIdentificationUrl) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId != null) {
            kVStorageProxy.remove(context, appId, uniqueIdentificationUrl + "_bgDownStatus");
        }
    }

    public final String getManifestJson(AppModel appModel, String packageEncryptionUrl) {
        Intrinsics.h(appModel, "appModel");
        String file2String = FileIOUtils.readFile2String(((PathProxy) TmcProxy.get(PathProxy.class)).getZipUnCompressPath(appModel.getAppId(), packageEncryptionUrl) + "/Manifest.json");
        Intrinsics.g(file2String, "readFile2String(\n       …/Manifest.json\"\n        )");
        return file2String;
    }

    public final String getSignJson(AppModel appModel, String packageEncryptionUrl) {
        Intrinsics.h(appModel, "appModel");
        String file2String = FileIOUtils.readFile2String(((PathProxy) TmcProxy.get(PathProxy.class)).getZipUnCompressPath(appModel.getAppId(), packageEncryptionUrl) + "/SIGN.json");
        Intrinsics.g(file2String, "readFile2String(path)");
        return file2String;
    }

    public final String urlToSHA256(String url) {
        Intrinsics.h(url, "url");
        String strEncryptSHA256ToString = EncryptUtils.encryptSHA256ToString(url);
        Intrinsics.g(strEncryptSHA256ToString, "encryptSHA256ToString(url)");
        return strEncryptSHA256ToString;
    }
}
