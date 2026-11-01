package com.cloud.tmc.integration.utils;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.FileIOUtils;
import com.cloud.tmc.miniutils.util.JsonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/utils/AppPrepareUtils;", "Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;", "()V", "changeTarUnCompressStatus", "", "context", "Landroid/content/Context;", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", NotificationCompat.CATEGORY_STATUS, "", "changeZipDownloadStatus", "changeZipUnCompressStatus", "checkSHA256", "checkTarUnCompressStatus", "checkZipDownloadStatus", "checkZipUnCompressStatus", "clearAllFilesForVersion", "delectOldVersionFiles", "getManifestJson", "", "getSignJson", "urlToSHA256", "url", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppPrepareUtils extends BaseAppPrepareUtils {
    public static final AppPrepareUtils INSTANCE = new AppPrepareUtils();

    private AppPrepareUtils() {
    }

    public final void changeTarUnCompressStatus(Context context, AppModel appModel, boolean status) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, appModel.getPackageUrl_MD5() + "_tar", status);
        }
    }

    public final synchronized void changeZipDownloadStatus(Context context, AppModel appModel, boolean status) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, appModel.getPackageUrl_MD5() + "_download", status);
        }
    }

    public final void changeZipUnCompressStatus(Context context, AppModel appModel, boolean status) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, appModel.getPackageUrl_MD5() + "_zip", status);
        }
    }

    public final boolean checkSHA256(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        String signJson = getSignJson(appModel);
        String string = JsonUtils.getString(signJson, appModel.getAppId() + ".tar");
        String string2 = JsonUtils.getString(signJson, "Manifest.json");
        String strEncryptSHA256ToString = EncryptUtils.encryptSHA256ToString(FileIOUtils.readFile2BytesByStream(pathProxy.getTarPath(appModel)));
        String zipUnCompressPath = pathProxy.getZipUnCompressPath(appModel);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(zipUnCompressPath);
        sb2.append("/Manifest.json");
        return Intrinsics.c(string, strEncryptSHA256ToString) && Intrinsics.c(string2, EncryptUtils.encryptSHA256ToString(FileIOUtils.readFile2BytesByStream(sb2.toString())));
    }

    public final boolean checkTarUnCompressStatus(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        if (appId == null) {
            return false;
        }
        return kVStorageProxy.getBoolean(context, appId, appModel.getPackageUrl_MD5() + "_tar", false);
    }

    public final synchronized boolean checkZipDownloadStatus(Context context, AppModel appModel) {
        boolean z10;
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        z10 = false;
        if (appId != null) {
            z10 = kVStorageProxy.getBoolean(context, appId, appModel.getPackageUrl_MD5() + "_download", false);
        }
        return z10;
    }

    public final boolean checkZipUnCompressStatus(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        String appId = appModel.getAppId();
        if (appId == null) {
            return false;
        }
        return kVStorageProxy.getBoolean(context, appId, appModel.getPackageUrl_MD5() + "_zip", false);
    }

    public final void clearAllFilesForVersion(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        ((FileProxy) TmcProxy.get(FileProxy.class)).deleteAllFileForVersion(appModel);
        changeZipDownloadStatus(context, appModel, false);
        changeZipUnCompressStatus(context, appModel, false);
        changeTarUnCompressStatus(context, appModel, false);
    }

    public final void delectOldVersionFiles(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        clearAllFilesForVersion(context, appModel);
    }

    public final String getManifestJson(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        String file2String = FileIOUtils.readFile2String(((PathProxy) TmcProxy.get(PathProxy.class)).getZipUnCompressPath(appModel) + "/Manifest.json");
        Intrinsics.g(file2String, "readFile2String(\"${pathP…ppModel)}/Manifest.json\")");
        return file2String;
    }

    public final String getSignJson(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        String file2String = FileIOUtils.readFile2String(((PathProxy) TmcProxy.get(PathProxy.class)).getZipUnCompressPath(appModel) + "/SIGN.json");
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
