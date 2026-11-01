package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.miniutils.util.PathUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J&\u0010\u0013\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u0015\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u0017\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/TmcPathImpl;", "Lcom/cloud/tmc/integration/proxy/PathProxy;", "()V", "getAppBaseDownloadPath", "", "appId", "getAppBaseFilePath", "getBaseMiniAppPath", "getDownloadPath", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "uniqueIdentificationUrl", "getIDEDevelopPath", "getRootDownloadPath", "getRootFilePath", "getRootIDEDevelopPath", "getRootMiniAppPath", "getRootSOPath", "getRootStoragePath", "getTarPath", "uniqueName", "getTarUnCompressPath", "getZipPath", "getZipUnCompressPath", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcPathImpl implements PathProxy {
    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getAppBaseDownloadPath(String appId) {
        return getRootDownloadPath() + "/" + appId;
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getAppBaseFilePath(String appId) {
        return getRootFilePath() + "/" + appId;
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getBaseMiniAppPath(String appId) {
        return getRootMiniAppPath() + "/" + appId;
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getDownloadPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return getAppBaseDownloadPath(appModel.getAppId()) + "/" + appModel.getPackageUrl_MD5();
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getDownloadPath(AppModel appModel, String uniqueIdentificationUrl) {
        Intrinsics.h(appModel, "appModel");
        return getAppBaseDownloadPath(appModel.getAppId()) + "/" + uniqueIdentificationUrl;
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getIDEDevelopPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return getRootIDEDevelopPath() + "/" + appModel.getAppId();
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootDownloadPath() {
        return PathUtils.getExternalAppDataPath() + "/byteapp_download";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootFilePath() {
        return PathUtils.getExternalAppDataPath() + "/byteapp_files";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootIDEDevelopPath() {
        return PathUtils.getExternalAppCachePath() + "/develop";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootMiniAppPath() {
        return PathUtils.getExternalAppDataPath() + "/mini";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootSOPath() {
        return PathUtils.getExternalAppDataPath() + "/so";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getRootStoragePath() {
        return PathUtils.getInternalAppFilesPath() + "/mmkv";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getTarPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return getTarPath(appModel.getAppId(), appModel.getPackageUrl_MD5(), appModel.getAppId());
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getTarPath(String appId, String uniqueIdentificationUrl, String uniqueName) {
        return getZipUnCompressPath(appId, uniqueIdentificationUrl) + "/" + uniqueName + ".tar";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getTarUnCompressPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        if (appModel.getDevMode() == 2) {
            return getIDEDevelopPath(appModel);
        }
        return getBaseMiniAppPath(appModel.getAppId()) + "/" + appModel.getPackageUrl_MD5();
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getTarUnCompressPath(AppModel appModel, String uniqueIdentificationUrl) {
        Intrinsics.h(appModel, "appModel");
        if (appModel.getDevMode() == 2) {
            return getIDEDevelopPath(appModel);
        }
        return getBaseMiniAppPath(appModel.getAppId()) + "/" + uniqueIdentificationUrl;
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getZipPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return getAppBaseDownloadPath(appModel.getAppId()) + "/" + appModel.getPackageUrl_MD5() + "/" + appModel.getPackageUrl_MD5() + ".zip";
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getZipUnCompressPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return getZipUnCompressPath(appModel.getAppId(), appModel.getPackageUrl_MD5());
    }

    @Override // com.cloud.tmc.integration.proxy.PathProxy
    public String getZipUnCompressPath(String appId, String uniqueIdentificationUrl) {
        return getAppBaseDownloadPath(appId) + "/" + uniqueIdentificationUrl + "/unzip";
    }
}
