package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniutils.util.FileIOUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010!\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00172\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;", "Lcom/cloud/tmc/integration/proxy/FileProxy;", "()V", "TAG", "", "createBaseDirectory", "", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "createSoDirectory", "delectDownloadFileForVersion", "", "deleteAllFileForVersion", "uniqueIdentificationUrl", "deleteDownloadFileForVersion", "uniqueIndentificationUrl", "deleteFile", "path", "fileTotalSize", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Ljava/io/File;", "listFilesInDir", "", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, "readFile2String", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TmcFileImpl implements FileProxy {
    private final String TAG = "TmcFileImpl";

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public boolean createBaseDirectory(AppModel appModel) {
        List<SubPackageInfo> subPackagePages;
        Intrinsics.h(appModel, "appModel");
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        TmcLogger.d(this.TAG, "检查并创建 getAppBaseDownloadPath 文件夹");
        boolean zCreateOrExistsDir = FileUtils.createOrExistsDir(pathProxy.getZipUnCompressPath(appModel));
        TmcLogger.d(this.TAG, " 检查并创建 getBaseMiniAppPath 文件夹");
        boolean zCreateOrExistsDir2 = FileUtils.createOrExistsDir(pathProxy.getTarUnCompressPath(appModel));
        if (AppUtils.subpackageIsEnable()) {
            String mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption();
            if (mainPackageUrlEncryption != null && mainPackageUrlEncryption.length() != 0) {
                zCreateOrExistsDir = zCreateOrExistsDir && FileUtils.createOrExistsDir(pathProxy.getZipUnCompressPath(appModel.getAppId(), appModel.getMainPackageUrlEncryption())) && FileUtils.createOrExistsDir(pathProxy.getTarUnCompressPath(appModel, appModel.getMainPackageUrlEncryption()));
            }
            List subPackagePages2 = appModel.getSubPackagePages();
            if (subPackagePages2 != null && !subPackagePages2.isEmpty() && (subPackagePages = appModel.getSubPackagePages()) != null) {
                for (SubPackageInfo subPackageInfo : subPackagePages) {
                    String subPackageUrlMD5 = subPackageInfo.getSubPackageUrlMD5();
                    if (subPackageUrlMD5 != null && subPackageUrlMD5.length() != 0) {
                        zCreateOrExistsDir = zCreateOrExistsDir && FileUtils.createOrExistsDir(pathProxy.getZipUnCompressPath(appModel.getAppId(), subPackageInfo.getSubPackageUrlMD5())) && FileUtils.createOrExistsDir(pathProxy.getZipUnCompressPath(appModel.getAppId(), subPackageInfo.getSubPackageUrlMD5()));
                    }
                }
            }
        }
        return zCreateOrExistsDir2 && zCreateOrExistsDir;
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public boolean createSoDirectory() {
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        return FileUtils.createOrExistsDir(pathProxy.getRootSOPath()) && FileUtils.createOrExistsDir(pathProxy.getRootDownloadPath());
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public void delectDownloadFileForVersion(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        deleteDownloadFileForVersion(appModel, appModel.getPackageUrl_MD5());
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public void deleteAllFileForVersion(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        deleteAllFileForVersion(appModel, null);
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public void deleteAllFileForVersion(AppModel appModel, String uniqueIdentificationUrl) {
        List<SubPackageInfo> subPackagePages;
        Intrinsics.h(appModel, "appModel");
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        if (uniqueIdentificationUrl == null || uniqueIdentificationUrl.length() == 0) {
            FileUtils.delete(pathProxy.getDownloadPath(appModel));
            FileUtils.delete(pathProxy.getTarUnCompressPath(appModel));
            String mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption();
            if (mainPackageUrlEncryption != null && mainPackageUrlEncryption.length() != 0) {
                FileUtils.delete(pathProxy.getDownloadPath(appModel, appModel.getMainPackageUrlEncryption()));
                FileUtils.delete(pathProxy.getTarUnCompressPath(appModel, appModel.getMainPackageUrlEncryption()));
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除主包" + appModel.getMainPackageUrlEncryption() + "，appVersion：" + appModel.getDeployVersion());
            }
            List subPackagePages2 = appModel.getSubPackagePages();
            if (subPackagePages2 != null && !subPackagePages2.isEmpty() && (subPackagePages = appModel.getSubPackagePages()) != null) {
                for (SubPackageInfo subPackageInfo : subPackagePages) {
                    String subPackageUrlMD5 = subPackageInfo.getSubPackageUrlMD5();
                    if (subPackageUrlMD5 != null && subPackageUrlMD5.length() != 0) {
                        FileUtils.delete(pathProxy.getDownloadPath(appModel, subPackageInfo.getSubPackageUrlMD5()));
                        FileUtils.delete(pathProxy.getTarUnCompressPath(appModel, subPackageInfo.getSubPackageUrlMD5()));
                        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除子包" + subPackageInfo.getSubPackageUrlMD5() + "，appVersion：" + appModel.getDeployVersion());
                    }
                }
            }
        } else {
            FileUtils.delete(pathProxy.getDownloadPath(appModel, uniqueIdentificationUrl));
            FileUtils.delete(pathProxy.getTarUnCompressPath(appModel, uniqueIdentificationUrl));
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除包" + uniqueIdentificationUrl + "，appVersion：" + appModel.getDeployVersion());
        }
        TmcLogger.d(this.TAG, appModel.getAppId() + " 删除当前版本所有小程序包文件");
        String appId = appModel.getAppId();
        if (appId != null) {
            try {
                if (appModel.getFromCacheType() == 3) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(Utils.getApp(), appId, "isReadAssets_" + appId + "_" + AppDynamicBuildConfig.getSDK_VERSION(), false);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(Utils.getApp(), appId, appId + "_native_" + AppDynamicBuildConfig.getSDK_VERSION(), "");
                }
            } catch (Throwable unused) {
                TmcLogger.e(this.TAG, "native assets remove error " + appId);
            }
        }
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public void deleteDownloadFileForVersion(AppModel appModel, String uniqueIndentificationUrl) {
        Intrinsics.h(appModel, "appModel");
        String downloadPath = ((PathProxy) TmcProxy.get(PathProxy.class)).getDownloadPath(appModel, uniqueIndentificationUrl);
        FileUtils.delete(downloadPath);
        TmcLogger.d(this.TAG, appModel.getAppId() + " 删除当前版本的下载文件，" + uniqueIndentificationUrl + "，路径：" + downloadPath);
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public void deleteFile(String path) {
        FileUtils.delete(path);
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public long fileTotalSize(File file) {
        Intrinsics.h(file, "file");
        return FileExtKt.getTotalSize(file);
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public List<File> listFilesInDir(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        return FileUtils.listFilesInDir(((PathProxy) TmcProxy.get(PathProxy.class)).getTarUnCompressPath(appModel));
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public List<File> listFilesInDir(AppModel appModel, String uniqueIdentificationUrl) {
        Intrinsics.h(appModel, "appModel");
        List<File> listListFilesInDir = FileUtils.listFilesInDir(((PathProxy) TmcProxy.get(PathProxy.class)).getTarUnCompressPath(appModel, uniqueIdentificationUrl));
        Intrinsics.g(listListFilesInDir, "listFilesInDir(\n        …l\n            )\n        )");
        return listListFilesInDir;
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public List<File> listFilesInDir(String dir) {
        Intrinsics.h(dir, "dir");
        List<File> listListFilesInDir = FileUtils.listFilesInDir(dir);
        Intrinsics.g(listListFilesInDir, "listFilesInDir(dir)");
        return listListFilesInDir;
    }

    @Override // com.cloud.tmc.integration.proxy.FileProxy
    public String readFile2String(String path) {
        Intrinsics.h(path, "path");
        String file2String = FileIOUtils.readFile2String(path);
        Intrinsics.g(file2String, "readFile2String(path)");
        return file2String;
    }
}
