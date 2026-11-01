package com.cloud.tmc.offline.download.utils;

import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.GenerateIdUtils;
import com.cloud.tmc.integration.utils.compress.CompressUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.func.MimeTypeKt;
import com.cloud.tmc.miniutils.util.FileIOUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.TimeUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflineDownloadBuilder;
import com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo;
import com.cloud.tmc.offline.download.model.OfflineZipFileInfo;
import com.cloud.tmc.offline.download.model.PrePullAppInfo;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u0010\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0017\u001a\u00020\tJ\u0006\u0010\u0018\u001a\u00020\tJ:\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001`\u001c2\u0006\u0010\u0007\u001a\u00020\u00042\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rJ\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J<\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00042$\b\u0002\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010&J\u0014\u0010'\u001a\u0004\u0018\u00010\u0004*\u00020\u000b2\u0006\u0010(\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;", "", "()V", "TAG", "", "checkCdnAppInfoFileAndDelete", "", "zipUnCompressPath", "checkResponseHeader", "", "headers", "Lokhttp3/Headers;", "block", "Lkotlin/Function1;", "generateDefaultFileNameByUrl", "url", "generateDownloadFile", "Ljava/io/File;", "offPkgConfig", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "generatePrePullAppInfoOffPkgConfig", "isAllowRequest", "isDownloaded", "isNotLegalZip", "isParsed", "loadCdnAppInfo", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;", "Lkotlin/collections/ArrayList;", "error", "", "setZipDownloadStatus", "info", "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;", "unzipFile", "srcFile", "destFile", "unzipCallBack", "Lkotlin/Function3;", "getHeaderIgnoreCase", "name", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PrePullAppInfoUtils {
    public static final PrePullAppInfoUtils INSTANCE = new PrePullAppInfoUtils();
    private static final String TAG = "PrePullAppInfoUtils";

    private PrePullAppInfoUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ArrayList loadCdnAppInfo$default(PrePullAppInfoUtils prePullAppInfoUtils, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return prePullAppInfoUtils.loadCdnAppInfo(str, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void unzipFile$default(PrePullAppInfoUtils prePullAppInfoUtils, File file, String str, Function3 function3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function3 = null;
        }
        prePullAppInfoUtils.unzipFile(file, str, function3);
    }

    public final void checkCdnAppInfoFileAndDelete(String zipUnCompressPath) {
        Intrinsics.h(zipUnCompressPath, "zipUnCompressPath");
        try {
            if (!FileUtils.isDir(zipUnCompressPath)) {
                TmcLogger.d(TAG, "check cdnAppInfoFile is not exist, zipUnCompressPath: " + zipUnCompressPath);
                return;
            }
            for (File file : FileExtKt.listFiles(new File(zipUnCompressPath), false, new Function1<File, Boolean>() { // from class: com.cloud.tmc.offline.download.utils.PrePullAppInfoUtils$checkCdnAppInfoFileAndDelete$listFiles$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(File it) {
                    Intrinsics.h(it, "it");
                    return Boolean.valueOf(!Intrinsics.c(FileExtKt.getMimeType(it), MimeTypeKt.getMIME_TYPES().get("zip")));
                }
            })) {
                if (file.exists()) {
                    TmcLogger.i(TAG, "check cdnAppInfoFile delete " + FileExtKt.getDelete(file) + ", file: " + file);
                }
            }
            TmcLogger.d(TAG, "check cdnAppInfoFile finished");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    public final boolean checkResponseHeader(Headers headers, Function1<? super String, Unit> block) {
        Intrinsics.h(headers, "headers");
        Intrinsics.h(block, "block");
        OffPkgConfig offPkgConfigGeneratePrePullAppInfoOffPkgConfig = generatePrePullAppInfoOffPkgConfig();
        String headerIgnoreCase = getHeaderIgnoreCase(headers, "Last-Modified");
        TmcLogger.d(TAG, "checkResponseHeader server lastModified: " + headerIgnoreCase);
        if (headerIgnoreCase == null || headerIgnoreCase.length() == 0) {
            TmcLogger.d(TAG, "checkResponseHeader server lastModify is null or empty");
            return false;
        }
        String lastModify = OfflineStoreCache.INSTANCE.getLastModify(offPkgConfigGeneratePrePullAppInfoOffPkgConfig);
        TmcLogger.d(TAG, "checkResponseHeader local lastModify: " + lastModify);
        if (lastModify == null || lastModify.length() == 0) {
            TmcLogger.d(TAG, "checkResponseHeader local lastModify is null or empty");
            block.invoke(headerIgnoreCase);
            return false;
        }
        boolean zH = StringsKt.H(headerIgnoreCase, lastModify, true);
        TmcLogger.d(TAG, "checkResponseHeader 判断本地与服务端 LastModify 是否相同 : " + zH);
        if (!zH) {
            block.invoke(headerIgnoreCase);
        }
        return zH;
    }

    public final String generateDefaultFileNameByUrl(String url) {
        String extension = FileUtil.getExtension(url);
        if (extension == null) {
            extension = ".zip";
        }
        String strTakeIfNotEmpty = StringExtKt.takeIfNotEmpty(url != null ? StringExtKt.toMd5(url) : null);
        if (strTakeIfNotEmpty == null) {
            strTakeIfNotEmpty = GenerateIdUtils.INSTANCE.generateRandomId();
        }
        String strAddExtension = FileUtil.addExtension(strTakeIfNotEmpty, extension);
        TmcLogger.d(TAG, "Generating file name by url: " + strAddExtension);
        return strAddExtension;
    }

    public final File generateDownloadFile(OffPkgConfig offPkgConfig) {
        boolean zCreateOrExistsDir;
        Intrinsics.h(offPkgConfig, "offPkgConfig");
        OfflineZipFileInfo offlineZipFileInfoGenerateDefaultZipFileInfo = OfflineUtils.INSTANCE.generateDefaultZipFileInfo(offPkgConfig);
        TmcLogger.d(TAG, "Generating zip file info: " + offlineZipFileInfoGenerateDefaultZipFileInfo);
        String zipCacheAbsolutePath = offlineZipFileInfoGenerateDefaultZipFileInfo.getZipCacheAbsolutePath();
        try {
            zCreateOrExistsDir = FileUtils.createOrExistsDir(zipCacheAbsolutePath);
        } catch (Exception e11) {
            TmcLogger.e(TAG, "Unable to create zip directory", e11);
            zCreateOrExistsDir = false;
        }
        if (!zCreateOrExistsDir) {
            TmcLogger.d(TAG, "创建下载文件夹失败");
            return null;
        }
        String strGenerateDefaultFileNameByUrl = generateDefaultFileNameByUrl(offPkgConfig.getPkgUrl());
        TmcLogger.d(TAG, "Generating zip file name: " + strGenerateDefaultFileNameByUrl);
        return new File(zipCacheAbsolutePath, strGenerateDefaultFileNameByUrl);
    }

    public final OffPkgConfig generatePrePullAppInfoOffPkgConfig() {
        return new OfflineDownloadBuilder().setGroup(OfflineConstantsKt.PRE_PULL_APPINFO).setPkgUrl(OfflineManager.getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()).setPriority(1).setDownloadModel(OfflineConstantsKt.TRIGGER_IDLE).setVersion("0.0.0").build();
    }

    public final String getHeaderIgnoreCase(Headers headers, String name) {
        Intrinsics.h(headers, "<this>");
        Intrinsics.h(name, "name");
        try {
            String str = headers.get(name);
            if (str != null && str.length() != 0) {
                return str;
            }
            List<String> listValues = headers.values(name);
            return !listValues.isEmpty() ? (String) CollectionsKt.k0(listValues) : str;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getHeaderIgnoreCase failed", th2);
            return null;
        }
    }

    public final boolean isAllowRequest() {
        OffPkgConfig offPkgConfigGeneratePrePullAppInfoOffPkgConfig = generatePrePullAppInfoOffPkgConfig();
        long jLastUpdateTime = OfflineStoreCache.INSTANCE.lastUpdateTime(offPkgConfigGeneratePrePullAppInfoOffPkgConfig);
        long jCurrentTimeMillis = System.currentTimeMillis() - jLastUpdateTime;
        boolean z10 = jLastUpdateTime <= 0 || jCurrentTimeMillis > OfflineManager.getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download();
        if (!z10) {
            long nowMills = TimeUtils.getNowMills();
            String fitTimeSpan = TimeUtils.getFitTimeSpan(nowMills, nowMills - jCurrentTimeMillis, 5);
            String group = offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getGroup();
            if (group == null) {
                group = "It";
            }
            TmcLogger.d(TAG, group + " has only been " + fitTimeSpan + " since the last update or check");
        }
        return z10;
    }

    public final boolean isDownloaded() {
        return OfflineStoreCache.INSTANCE.getZipDownloadStatus(generatePrePullAppInfoOffPkgConfig(), OfflineManager.getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()).getStatus() >= 2;
    }

    public final boolean isNotLegalZip() {
        return OfflineStoreCache.INSTANCE.getZipDownloadStatus(generatePrePullAppInfoOffPkgConfig(), OfflineManager.getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()).getStatus() == 5;
    }

    public final boolean isParsed() {
        return OfflineStoreCache.INSTANCE.getZipDownloadStatus(generatePrePullAppInfoOffPkgConfig(), OfflineManager.getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()).getStatus() == 7;
    }

    public final ArrayList<PrePullAppInfo> loadCdnAppInfo(String zipUnCompressPath, Function1<? super Throwable, Unit> error) {
        Intrinsics.h(zipUnCompressPath, "zipUnCompressPath");
        if (!FileUtils.isDir(zipUnCompressPath)) {
            if (error != null) {
                error.invoke(new IOException(zipUnCompressPath + " is not a directory"));
            }
            return null;
        }
        File file = new File(zipUnCompressPath, OfflineConstantsKt.PRE_PULL_APPINFO_JSON);
        if (!FileUtil.access(file)) {
            if (error != null) {
                error.invoke(new IOException(file.getAbsolutePath() + " is not exists"));
            }
            return null;
        }
        String file2String = FileIOUtils.readFile2String(file, "UTF-8");
        Intrinsics.g(file2String, "readFile2String(appInfoFile, \"UTF-8\")");
        try {
            Type type = new TypeToken<ArrayList<PrePullAppInfo>>() { // from class: com.cloud.tmc.offline.download.utils.PrePullAppInfoUtils.loadCdnAppInfo.1
            }.getType();
            Intrinsics.g(type, "object : TypeToken<Array…rePullAppInfo>>() {}.type");
            return (ArrayList) TmcGsonUtils.fromJson(file2String, type);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "parse Json fail", th2);
            if (error == null) {
                return null;
            }
            error.invoke(th2);
            return null;
        }
    }

    public final void setZipDownloadStatus(OfflineZipDownloadInfo info) {
        Intrinsics.h(info, "info");
        OfflineStoreCache.INSTANCE.setZipDownloadStatus(generatePrePullAppInfoOffPkgConfig(), info);
    }

    public final void unzipFile(File srcFile, String destFile, Function3<? super Boolean, ? super String, ? super Throwable, Unit> unzipCallBack) {
        Intrinsics.h(srcFile, "srcFile");
        Intrinsics.h(destFile, "destFile");
        try {
            CompressUtils.unzip(srcFile, destFile);
            if (unzipCallBack != null) {
                unzipCallBack.invoke(Boolean.TRUE, destFile, null);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Unable to unzip file, " + srcFile, th2);
            if (unzipCallBack != null) {
                unzipCallBack.invoke(Boolean.FALSE, destFile, th2);
            }
        }
    }
}
