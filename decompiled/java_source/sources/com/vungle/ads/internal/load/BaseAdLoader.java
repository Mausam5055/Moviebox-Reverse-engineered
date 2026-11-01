package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdExpiredError;
import com.vungle.ads.AdPayloadError;
import com.vungle.ads.AdResponseEmptyError;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.AssetDownloadError;
import com.vungle.ads.AssetRequestError;
import com.vungle.ads.AssetResponseDataError;
import com.vungle.ads.IndexHtmlError;
import com.vungle.ads.InvalidAssetUrlError;
import com.vungle.ads.InvalidEventIdError;
import com.vungle.ads.InvalidTemplateURLError;
import com.vungle.ads.MraidJsError;
import com.vungle.ads.NativeAssetError;
import com.vungle.ads.OmSdkJsError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TemplateUnzipError;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.task.ResendTpatJob;
import com.vungle.ads.internal.util.UnzipUtility;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.w;
import com.vungle.ads.x;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseAdLoader {
    public static final a Companion = new a(null);
    private static final String DOWNLOADED_FILE_NOT_FOUND = "Downloaded file not found!";
    private static final String TAG = "BaseAdLoader";
    private final List<AdAsset> adAssets;
    private com.vungle.ads.internal.load.a adLoaderCallback;
    private x adOptionalDownloadDurationMetric;
    private final AdRequest adRequest;
    private x adRequiredDownloadDurationMetric;
    private AdPayload advertisement;
    private x assetDownloadDurationMetric;
    private final Context context;
    private final AtomicLong downloadCount;
    private final AtomicLong downloadRequiredCount;
    private final Downloader downloader;
    private AtomicBoolean fullyDownloaded;
    private n logEntry;
    private w mainVideoSizeMetric;
    private AtomicBoolean notifyFailed;
    private AtomicBoolean notifySuccess;
    private final com.vungle.ads.internal.omsdk.b omInjector;
    private final p pathProvider;
    private AtomicBoolean requiredAssetDownloaded;
    private final com.vungle.ads.internal.executor.a sdkExecutors;
    private w templateHtmlSizeMetric;
    private w templateSizeMetric;
    private final VungleApiClient vungleApiClient;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements com.vungle.ads.internal.downloader.a {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onError$lambda-0, reason: not valid java name */
        public static final void m402onError$lambda0(BaseAdLoader this$0, DownloadRequest downloadRequest, com.vungle.ads.internal.downloader.a.C0702a c0702a) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(downloadRequest, "$downloadRequest");
            this$0.fullyDownloaded.set(false);
            if (downloadRequest.getAsset().isRequired()) {
                this$0.requiredAssetDownloaded.set(false);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to download assets. required=");
            sb2.append(downloadRequest.getAsset().isRequired());
            sb2.append(" reason=");
            sb2.append(c0702a != null ? Integer.valueOf(c0702a.getReason()) : null);
            sb2.append(" cause=");
            sb2.append(c0702a != null ? c0702a.getCause() : null);
            String string = sb2.toString();
            if (downloadRequest.getAsset().isRequired() && this$0.downloadRequiredCount.decrementAndGet() <= 0) {
                this$0.onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, string).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                this$0.cancel();
            } else if (this$0.downloadCount.decrementAndGet() <= 0) {
                this$0.onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, string).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onSuccess$lambda-1, reason: not valid java name */
        public static final void m403onSuccess$lambda1(File file, b this$0, DownloadRequest downloadRequest, BaseAdLoader this$1) {
            Intrinsics.h(file, "$file");
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(downloadRequest, "$downloadRequest");
            Intrinsics.h(this$1, "this$1");
            if (!file.exists()) {
                this$0.onError(new com.vungle.ads.internal.downloader.a.C0702a(-1, new IOException(BaseAdLoader.DOWNLOADED_FILE_NOT_FOUND), com.vungle.ads.internal.downloader.a.C0702a.b.Companion.getFILE_NOT_FOUND_ERROR()), downloadRequest);
                return;
            }
            AdAsset asset = downloadRequest.getAsset();
            asset.setFileSize(file.length());
            asset.setStatus(AdAsset.Status.DOWNLOAD_SUCCESS);
            if (downloadRequest.isTemplate()) {
                downloadRequest.stopRecord();
                w wVar = downloadRequest.isHtmlTemplate() ? this$1.templateHtmlSizeMetric : this$1.templateSizeMetric;
                wVar.setValue(Long.valueOf(file.length()));
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(wVar, this$1.getLogEntry$vungle_ads_release(), asset.getServerPath());
            } else if (downloadRequest.isMainVideo()) {
                this$1.mainVideoSizeMetric.setValue(Long.valueOf(file.length()));
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this$1.mainVideoSizeMetric, this$1.getLogEntry$vungle_ads_release(), asset.getServerPath());
            }
            AdPayload advertisement$vungle_ads_release = this$1.getAdvertisement$vungle_ads_release();
            if (advertisement$vungle_ads_release != null) {
                advertisement$vungle_ads_release.updateAdAssetPath(asset);
            }
            if (downloadRequest.isTemplate() && !this$1.processVmTemplate(asset, this$1.getAdvertisement$vungle_ads_release())) {
                this$1.fullyDownloaded.set(false);
                if (asset.isRequired()) {
                    this$1.requiredAssetDownloaded.set(false);
                }
            }
            if (asset.isRequired() && this$1.downloadRequiredCount.decrementAndGet() <= 0) {
                if (!this$1.requiredAssetDownloaded.get()) {
                    this$1.onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download required assets.").setLogEntry$vungle_ads_release(this$1.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                    this$1.cancel();
                    return;
                }
                this$1.onRequiredDownloadCompleted();
            }
            if (this$1.downloadCount.decrementAndGet() <= 0) {
                if (this$1.fullyDownloaded.get()) {
                    this$1.onDownloadCompleted(this$1.getAdRequest());
                } else {
                    this$1.onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download assets.").setLogEntry$vungle_ads_release(this$1.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                }
            }
        }

        @Override // com.vungle.ads.internal.downloader.a
        public void onError(final com.vungle.ads.internal.downloader.a.C0702a c0702a, final DownloadRequest downloadRequest) {
            Intrinsics.h(downloadRequest, "downloadRequest");
            o.a aVar = o.Companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onError called: reason ");
            sb2.append(c0702a != null ? Integer.valueOf(c0702a.getReason()) : null);
            sb2.append("; cause ");
            sb2.append(c0702a != null ? c0702a.getCause() : null);
            aVar.e(BaseAdLoader.TAG, sb2.toString());
            VungleThreadPoolExecutor backgroundExecutor = BaseAdLoader.this.getSdkExecutors().getBackgroundExecutor();
            final BaseAdLoader baseAdLoader = BaseAdLoader.this;
            backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.d
                @Override // java.lang.Runnable
                public final void run() {
                    BaseAdLoader.b.m402onError$lambda0(baseAdLoader, downloadRequest, c0702a);
                }
            });
        }

        @Override // com.vungle.ads.internal.downloader.a
        public void onSuccess(final File file, final DownloadRequest downloadRequest) {
            Intrinsics.h(file, "file");
            Intrinsics.h(downloadRequest, "downloadRequest");
            VungleThreadPoolExecutor backgroundExecutor = BaseAdLoader.this.getSdkExecutors().getBackgroundExecutor();
            final BaseAdLoader baseAdLoader = BaseAdLoader.this;
            backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.c
                @Override // java.lang.Runnable
                public final void run() {
                    BaseAdLoader.b.m403onSuccess$lambda1(file, this, downloadRequest, baseAdLoader);
                }
            });
        }
    }

    public static final class c implements i.a {
        c() {
        }

        @Override // com.vungle.ads.internal.load.i.a
        public void onDownloadResult(int i11) {
            if (i11 == 10 || i11 == 13) {
                if (i11 == 10) {
                    AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk$SDKMetric.SDKMetricType.MRAID_DOWNLOAD_JS_RETRY_SUCCESS, 0L, BaseAdLoader.this.getLogEntry$vungle_ads_release(), null, 10, null);
                }
                BaseAdLoader.this.downloadAssets();
            } else {
                com.vungle.ads.internal.load.a aVar = BaseAdLoader.this.adLoaderCallback;
                if (aVar != null) {
                    aVar.onFailure(new MraidJsError(Sdk$SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "Failed to download mraid.js."));
                }
            }
        }
    }

    public static final class d implements UnzipUtility.a {
        final /* synthetic */ List<String> $existingPaths;

        d(List<String> list) {
            this.$existingPaths = list;
        }

        @Override // com.vungle.ads.internal.util.UnzipUtility.a
        public boolean matches(String str) {
            if (str != null && str.length() != 0) {
                File file = new File(str);
                Iterator<String> it = this.$existingPaths.iterator();
                while (it.hasNext()) {
                    File file2 = new File(it.next());
                    if (Intrinsics.c(file2, file)) {
                        return false;
                    }
                    String path = file.getPath();
                    Intrinsics.g(path, "toExtract.path");
                    if (StringsKt.W(path, file2.getPath() + File.separator, false, 2, null)) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public BaseAdLoader(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.a sdkExecutors, com.vungle.ads.internal.omsdk.b omInjector, Downloader downloader, p pathProvider, AdRequest adRequest) {
        Intrinsics.h(context, "context");
        Intrinsics.h(vungleApiClient, "vungleApiClient");
        Intrinsics.h(sdkExecutors, "sdkExecutors");
        Intrinsics.h(omInjector, "omInjector");
        Intrinsics.h(downloader, "downloader");
        Intrinsics.h(pathProvider, "pathProvider");
        Intrinsics.h(adRequest, "adRequest");
        this.context = context;
        this.vungleApiClient = vungleApiClient;
        this.sdkExecutors = sdkExecutors;
        this.omInjector = omInjector;
        this.downloader = downloader;
        this.pathProvider = pathProvider;
        this.adRequest = adRequest;
        this.downloadCount = new AtomicLong(0L);
        this.downloadRequiredCount = new AtomicLong(0L);
        this.notifySuccess = new AtomicBoolean(false);
        this.notifyFailed = new AtomicBoolean(false);
        this.adAssets = new ArrayList();
        this.fullyDownloaded = new AtomicBoolean(true);
        this.requiredAssetDownloaded = new AtomicBoolean(true);
        this.mainVideoSizeMetric = new w(Sdk$SDKMetric.SDKMetricType.ASSET_FILE_SIZE);
        this.templateSizeMetric = new w(Sdk$SDKMetric.SDKMetricType.TEMPLATE_ZIP_SIZE);
        this.templateHtmlSizeMetric = new w(Sdk$SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE);
        this.assetDownloadDurationMetric = new x(Sdk$SDKMetric.SDKMetricType.ASSET_DOWNLOAD_DURATION_MS);
        this.adRequiredDownloadDurationMetric = new x(Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS);
        this.adOptionalDownloadDurationMetric = new x(Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadAssets() {
        this.assetDownloadDurationMetric.markStart();
        this.adRequiredDownloadDurationMetric.markStart();
        this.adOptionalDownloadDurationMetric.markStart();
        this.downloadCount.set(this.adAssets.size());
        AtomicLong atomicLong = this.downloadRequiredCount;
        List<AdAsset> list = this.adAssets;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((AdAsset) obj).isRequired()) {
                arrayList.add(obj);
            }
        }
        atomicLong.set(arrayList.size());
        for (AdAsset adAsset : this.adAssets) {
            DownloadRequest downloadRequest = new DownloadRequest(getAssetPriority(adAsset), adAsset, this.logEntry);
            if (downloadRequest.isTemplate()) {
                downloadRequest.startRecord();
            }
            this.downloader.download(downloadRequest, getAssetDownloadListener());
        }
    }

    private final boolean fileIsValid(File file, AdAsset adAsset) {
        return file.exists() && file.length() == adAsset.getFileSize();
    }

    private final com.vungle.ads.internal.downloader.a getAssetDownloadListener() {
        return new b();
    }

    private final DownloadRequest.Priority getAssetPriority(AdAsset adAsset) {
        return adAsset.isRequired() ? DownloadRequest.Priority.CRITICAL : DownloadRequest.Priority.HIGHEST;
    }

    private final File getDestinationDir(AdPayload adPayload) {
        return this.pathProvider.getDownloadsDirForAd(adPayload.eventId());
    }

    private final VungleError getErrorInfo(AdPayload adPayload) {
        AdPayload.c cVarAdUnit = adPayload.adUnit();
        Integer errorCode = cVarAdUnit != null ? cVarAdUnit.getErrorCode() : null;
        AdPayload.c cVarAdUnit2 = adPayload.adUnit();
        Integer sleep = cVarAdUnit2 != null ? cVarAdUnit2.getSleep() : null;
        AdPayload.c cVarAdUnit3 = adPayload.adUnit();
        String str = "Response error: " + sleep + ", Request failed with error: " + errorCode + ", " + (cVarAdUnit3 != null ? cVarAdUnit3.getInfo() : null);
        if ((errorCode == null || errorCode.intValue() != 10001) && ((errorCode == null || errorCode.intValue() != 10002) && ((errorCode == null || errorCode.intValue() != 20001) && ((errorCode == null || errorCode.intValue() != 30001) && (errorCode == null || errorCode.intValue() != 30002))))) {
            return new AdPayloadError(Sdk$SDKError.Reason.PLACEMENT_SLEEP, str);
        }
        Sdk$SDKError.Reason reasonForNumber = Sdk$SDKError.Reason.forNumber(errorCode.intValue());
        Intrinsics.g(reasonForNumber, "forNumber(errorCode)");
        return new AdPayloadError(reasonForNumber, str);
    }

    private final VungleError getTemplateError(AdPayload adPayload) {
        AdPayload.c cVarAdUnit = adPayload.adUnit();
        AdPayload.g templateSettings = cVarAdUnit != null ? cVarAdUnit.getTemplateSettings() : null;
        if (templateSettings == null) {
            return new AssetResponseDataError("Missing template settings");
        }
        Map<String, AdPayload.d> cacheableReplacements = templateSettings.getCacheableReplacements();
        if (!adPayload.isNativeTemplateType()) {
            AdPayload.c cVarAdUnit2 = adPayload.adUnit();
            String templateURL = cVarAdUnit2 != null ? cVarAdUnit2.getTemplateURL() : null;
            AdPayload.c cVarAdUnit3 = adPayload.adUnit();
            String vmURL = cVarAdUnit3 != null ? cVarAdUnit3.getVmURL() : null;
            if ((templateURL == null || templateURL.length() == 0) && (vmURL == null || vmURL.length() == 0)) {
                return new InvalidTemplateURLError("Failed to prepare null vmURL or templateURL for downloading.");
            }
            if (templateURL != null && templateURL.length() != 0 && !v.INSTANCE.isUrlValid(templateURL)) {
                return new AssetRequestError("Failed to load template: " + templateURL);
            }
            if (vmURL != null && vmURL.length() != 0 && !v.INSTANCE.isUrlValid(vmURL)) {
                return new AssetRequestError("Failed to load vm url: " + vmURL);
            }
        } else if (cacheableReplacements != null) {
            AdPayload.d dVar = cacheableReplacements.get(com.vungle.ads.internal.f.TOKEN_MAIN_IMAGE);
            if ((dVar != null ? dVar.getUrl() : null) == null) {
                return new NativeAssetError("Unable to load null main image.");
            }
            AdPayload.d dVar2 = cacheableReplacements.get(com.vungle.ads.internal.f.TOKEN_VUNGLE_PRIVACY_ICON_URL);
            if ((dVar2 != null ? dVar2.getUrl() : null) == null) {
                return new NativeAssetError("Unable to load null privacy image.");
            }
        }
        if (cacheableReplacements != null) {
            Iterator<Map.Entry<String, AdPayload.d>> it = cacheableReplacements.entrySet().iterator();
            while (it.hasNext()) {
                String url = it.next().getValue().getUrl();
                if (url == null || url.length() == 0) {
                    return new InvalidAssetUrlError("Invalid asset URL " + url);
                }
                if (!v.INSTANCE.isUrlValid(url)) {
                    return new AssetRequestError("Invalid asset URL " + url);
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: handleAdMetaData$lambda-6, reason: not valid java name */
    private static final com.vungle.ads.internal.network.h m399handleAdMetaData$lambda6(Lazy<com.vungle.ads.internal.network.h> lazy) {
        return (com.vungle.ads.internal.network.h) lazy.getValue();
    }

    public static /* synthetic */ void handleAdMetaData$vungle_ads_release$default(BaseAdLoader baseAdLoader, AdPayload adPayload, w wVar, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleAdMetaData");
        }
        if ((i11 & 2) != 0) {
            wVar = null;
        }
        baseAdLoader.handleAdMetaData$vungle_ads_release(adPayload, wVar);
    }

    private final boolean injectMraidJS(File file) {
        try {
            File file2 = new File(file.getPath(), com.vungle.ads.internal.b.AD_MRAID_JS_FILE_NAME);
            File file3 = new File(this.pathProvider.getJsAssetDir(ConfigManager.INSTANCE.getMraidJsVersion()), com.vungle.ads.internal.b.MRAID_JS_FILE_NAME);
            if (file3.exists()) {
                FilesKt.u(file3, file2, true, 0, 4, null);
                return true;
            }
            new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST, "mraid js source file not exist.").setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        } catch (Exception e11) {
            o.Companion.e(TAG, "Failed to inject mraid.js: " + e11.getMessage());
            new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED, "Failed to copy mraid js to ad folder: " + e11.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: loadAd$lambda-0, reason: not valid java name */
    public static final void m400loadAd$lambda0(BaseAdLoader this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.requestAd();
    }

    private final void onAdReady() {
        AdPayload adPayload = this.advertisement;
        if (adPayload == null || this.notifyFailed.get() || !this.notifySuccess.compareAndSet(false, true)) {
            return;
        }
        onAdLoadReady();
        com.vungle.ads.internal.load.a aVar = this.adLoaderCallback;
        if (aVar != null) {
            aVar.onSuccess(adPayload);
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        m401onAdReady$lambda3$lambda2(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.task.d>() { // from class: com.vungle.ads.internal.load.BaseAdLoader$onAdReady$lambda-3$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.task.d, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.task.d invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.task.d.class);
            }
        })).execute(ResendTpatJob.Companion.makeJobInfo());
    }

    /* JADX INFO: renamed from: onAdReady$lambda-3$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.task.d m401onAdReady$lambda3$lambda2(Lazy<? extends com.vungle.ads.internal.task.d> lazy) {
        return (com.vungle.ads.internal.task.d) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDownloadCompleted(AdRequest adRequest) {
        o.Companion.d(TAG, "All download completed " + adRequest);
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            adPayload.setAssetFullyDownloaded();
        }
        onAdReady();
        this.assetDownloadDurationMetric.markEnd();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.assetDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
        this.adOptionalDownloadDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.adOptionalDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequiredDownloadCompleted() {
        this.adRequiredDownloadDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.adRequiredDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
        onAdReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean processVmTemplate(AdAsset adAsset, AdPayload adPayload) {
        if (adPayload == null || adAsset.getStatus() != AdAsset.Status.DOWNLOAD_SUCCESS || adAsset.getLocalPath().length() == 0) {
            return false;
        }
        File file = new File(adAsset.getLocalPath());
        if (!fileIsValid(file, adAsset)) {
            return false;
        }
        File destinationDir = getDestinationDir(adPayload);
        if (destinationDir == null || !destinationDir.isDirectory()) {
            o.Companion.e(TAG, "Unable to access Destination Directory");
            return false;
        }
        if (adAsset.getFileType() == AdAsset.FileType.ZIP && !unzipFile(file, destinationDir)) {
            return false;
        }
        if (adPayload.omEnabled()) {
            try {
                this.omInjector.init();
                this.omInjector.injectJsFiles$vungle_ads_release(destinationDir);
            } catch (Exception e11) {
                o.Companion.e(TAG, "Failed to inject OMSDK: " + e11.getMessage());
                new OmSdkJsError(Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED, "Failed to inject OMSDK: " + e11.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            }
        }
        boolean zInjectMraidJS = injectMraidJS(destinationDir);
        com.vungle.ads.internal.util.g.printDirectoryTree(destinationDir);
        return zInjectMraidJS;
    }

    private final boolean unzipFile(File file, File file2) throws Throwable {
        ArrayList arrayList = new ArrayList();
        for (AdAsset adAsset : this.adAssets) {
            if (adAsset.getFileType() == AdAsset.FileType.ASSET) {
                arrayList.add(adAsset.getLocalPath());
            }
        }
        try {
            UnzipUtility unzipUtility = UnzipUtility.INSTANCE;
            String path = file.getPath();
            String path2 = file2.getPath();
            Intrinsics.g(path2, "destinationDir.path");
            unzipUtility.unzip(path, path2, new d(arrayList));
            if (new File(file2.getPath(), com.vungle.ads.internal.b.AD_INDEX_FILE_NAME).exists()) {
                com.vungle.ads.internal.util.g.delete(file);
                return true;
            }
            new IndexHtmlError(Sdk$SDKError.Reason.INVALID_INDEX_URL, "Failed to retrieve indexFileUrl from the Ad").setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        } catch (Exception e11) {
            new TemplateUnzipError("Unzip failed: " + e11.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
    }

    private final VungleError validateAdMetadata(AdPayload adPayload) {
        AdPayload.c cVarAdUnit = adPayload.adUnit();
        if (cVarAdUnit != null && cVarAdUnit.getSleep() != null) {
            return getErrorInfo(adPayload);
        }
        String referenceId = this.adRequest.getPlacement().getReferenceId();
        AdPayload adPayload2 = this.advertisement;
        if (!Intrinsics.c(referenceId, adPayload2 != null ? adPayload2.placementId() : null)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Requests and responses don't match ");
            AdPayload adPayload3 = this.advertisement;
            sb2.append(adPayload3 != null ? adPayload3.placementId() : null);
            sb2.append('.');
            return new AdResponseEmptyError(sb2.toString());
        }
        VungleError templateError = getTemplateError(adPayload);
        if (templateError != null) {
            return templateError;
        }
        if (adPayload.hasExpired()) {
            return new AdExpiredError("The ad markup has expired for playback.");
        }
        String strEventId = adPayload.eventId();
        if (strEventId == null || strEventId.length() == 0) {
            return new InvalidEventIdError("Event id is invalid.");
        }
        return null;
    }

    public final void cancel() {
        this.downloader.cancelAll();
    }

    public final AdRequest getAdRequest() {
        return this.adRequest;
    }

    public final AdPayload getAdvertisement$vungle_ads_release() {
        return this.advertisement;
    }

    public final Context getContext() {
        return this.context;
    }

    public final n getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }

    public final com.vungle.ads.internal.executor.a getSdkExecutors() {
        return this.sdkExecutors;
    }

    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    public final void handleAdMetaData$vungle_ads_release(AdPayload advertisement, w wVar) {
        List<String> loadAdUrls;
        Intrinsics.h(advertisement, "advertisement");
        this.advertisement = advertisement;
        advertisement.setLogEntry$vungle_ads_release(this.logEntry);
        n nVar = this.logEntry;
        if (nVar != null) {
            nVar.setEventId$vungle_ads_release(advertisement.eventId());
        }
        n nVar2 = this.logEntry;
        if (nVar2 != null) {
            nVar2.setCreativeId$vungle_ads_release(advertisement.getCreativeId());
        }
        n nVar3 = this.logEntry;
        if (nVar3 != null) {
            nVar3.setAdSource$vungle_ads_release(advertisement.getAdSource());
        }
        n nVar4 = this.logEntry;
        if (nVar4 != null) {
            nVar4.setMediationName$vungle_ads_release(advertisement.getMediationName());
        }
        n nVar5 = this.logEntry;
        if (nVar5 != null) {
            nVar5.setVmVersion$vungle_ads_release(advertisement.getViewMasterVersion());
        }
        ConfigPayload configPayloadConfig = advertisement.config();
        if (configPayloadConfig != null) {
            ConfigManager.INSTANCE.initWithConfig$vungle_ads_release(this.context, configPayloadConfig, false, wVar);
        }
        VungleError vungleErrorValidateAdMetadata = validateAdMetadata(advertisement);
        if (vungleErrorValidateAdMetadata != null) {
            onAdLoadFailed(vungleErrorValidateAdMetadata.setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        File destinationDir = getDestinationDir(advertisement);
        if (destinationDir == null || !destinationDir.isDirectory() || !destinationDir.exists()) {
            onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.ASSET_WRITE_ERROR, "Invalid directory. " + destinationDir).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.load.BaseAdLoader$handleAdMetaData$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.network.h invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.network.h.class);
            }
        });
        AdPayload.c cVarAdUnit = advertisement.adUnit();
        if (cVarAdUnit != null && (loadAdUrls = cVarAdUnit.getLoadAdUrls()) != null) {
            Iterator<T> it = loadAdUrls.iterator();
            while (it.hasNext()) {
                com.vungle.ads.internal.network.h.sendTpat$default(m399handleAdMetaData$lambda6(lazyA), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.LOAD_AD).withLogEntry(this.logEntry).build(), false, 2, null);
            }
        }
        if (!this.adAssets.isEmpty()) {
            this.adAssets.clear();
        }
        this.adAssets.addAll(advertisement.getDownloadableAssets(destinationDir));
        if (this.adAssets.isEmpty()) {
            onAdLoadFailed(new AssetDownloadError(Sdk$SDKError.Reason.INVALID_ASSET_URL, "No assets to download.").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
        } else {
            i.INSTANCE.downloadJs(this.pathProvider, this.downloader, this.sdkExecutors.getBackgroundExecutor(), new c(), advertisement);
        }
    }

    public final void loadAd(com.vungle.ads.internal.load.a adLoaderCallback) {
        Intrinsics.h(adLoaderCallback, "adLoaderCallback");
        this.adLoaderCallback = adLoaderCallback;
        this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.load.b
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader.m400loadAd$lambda0(this.f60607a);
            }
        });
    }

    public final void onAdLoadFailed(VungleError error) {
        com.vungle.ads.internal.load.a aVar;
        Intrinsics.h(error, "error");
        if (this.notifySuccess.get() || !this.notifyFailed.compareAndSet(false, true) || (aVar = this.adLoaderCallback) == null) {
            return;
        }
        aVar.onFailure(error);
    }

    public abstract void onAdLoadReady();

    protected abstract void requestAd();

    public final void setAdvertisement$vungle_ads_release(AdPayload adPayload) {
        this.advertisement = adPayload;
    }

    public final void setLogEntry$vungle_ads_release(n nVar) {
        this.logEntry = nVar;
    }
}
