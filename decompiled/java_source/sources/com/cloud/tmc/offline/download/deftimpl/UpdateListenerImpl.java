package com.cloud.tmc.offline.download.deftimpl;

import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.callback.OnUpdateCallback;
import com.cloud.tmc.offline.download.model.DeliveryDimensionData;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.utils.OfflineStoreCache;
import com.cloud.tmc.offline.download.utils.OfflineUtils;
import com.cloud.tmc.offline.download.utils.Utils;
import com.cloud.tmc.offline.download.utils.ext.ConvertExtKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.text.DecimalFormat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import t6.b;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0000\u0018\u0000 -2\u00020\u0001:\u0001-B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0019J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0019J\u0017\u0010\"\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010#J'\u0010'\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010(R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010\u0005¨\u0006."}, d2 = {"Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;", "Lt6/b;", "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;", "onUpdateCallback", "<init>", "(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V", "", "url", "", "size", "totoalSize", "", "onDownloadProcess", "(Ljava/lang/String;JJ)V", "", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "errMsg", "onError", "(Ljava/lang/String;ILjava/lang/String;)V", "Lcom/cloud/h5update/bean/UpdateEntity;", "updateEntity", "", "onGetEntity", "(Lcom/cloud/h5update/bean/UpdateEntity;)Z", "onNoNeedDownload", "(Ljava/lang/String;)V", "zipUnCompressPath", "Ljava/io/File;", "zipFile", "onUnZipDownloadFinish", "(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V", "onZipDownloadCancel", "onZipDownloadFinish", "onZipDownloadStart", "onZipDownloaded", "(Ljava/lang/String;)Z", "packageName", "pageUrl", "zipUrl", "onZipTryDownload", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z", "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;", "getOnUpdateCallback", "()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;", "setOnUpdateCallback", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UpdateListenerImpl implements b {
    private static final String TAG = "TmcOfflineDownload: UpdateListenerImpl";
    private OnUpdateCallback onUpdateCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateListenerImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UpdateListenerImpl(OnUpdateCallback onUpdateCallback) {
        this.onUpdateCallback = onUpdateCallback;
    }

    public /* synthetic */ UpdateListenerImpl(OnUpdateCallback onUpdateCallback, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : onUpdateCallback);
    }

    public final OnUpdateCallback getOnUpdateCallback() {
        return this.onUpdateCallback;
    }

    @Override // t6.b
    public void onDownloadProcess(String url, long size, long totoalSize) {
        String str;
        Intrinsics.h(url, "url");
        try {
            str = new DecimalFormat("#.##").format((size / totoalSize) * ((double) 100)) + "%";
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onDownloadProcess failed!", th2);
            str = "0%";
        }
        TmcLogger.d(TAG, "onDownloadProcess: " + url + ", percentage: " + str + ", size: " + ConvertExtKt.formatMemorySize(size) + ", totoalSize: " + ConvertExtKt.formatMemorySize(totoalSize));
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onDownloadProcess(url, size, totoalSize);
        }
    }

    @Override // t6.b
    public void onError(String url, int errCode, String errMsg) {
        Intrinsics.h(url, "url");
        Intrinsics.h(errMsg, "errMsg");
        TmcLogger.e(TAG, "onError: " + url + " errCode: " + errCode + " errorMsg: " + errMsg);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onError(url, errCode, errMsg);
        }
    }

    @Override // t6.b
    public boolean onGetEntity(UpdateEntity updateEntity) {
        TmcLogger.d(TAG, "onGetEntity: " + updateEntity);
        return false;
    }

    @Override // t6.b
    public void onNoNeedDownload(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "onNoNeedDownload: " + url);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onNoNeedDownload(url);
        }
    }

    @Override // t6.b
    public void onUnZipDownloadFinish(String url, String zipUnCompressPath, File zipFile) {
        Intrinsics.h(url, "url");
        Intrinsics.h(zipUnCompressPath, "zipUnCompressPath");
        Intrinsics.h(zipFile, "zipFile");
        TmcLogger.d(TAG, "onUnZipDownloadFinish: " + url + " zipUnCompressPath: " + zipUnCompressPath + " zipFile: " + zipFile);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onUnZipDownloadFinish(url, zipUnCompressPath, zipFile);
        }
    }

    @Override // t6.b
    public void onZipDownloadCancel(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "onZipDownloadCancel: " + url);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onZipDownloadCancel(url);
        }
    }

    @Override // t6.b
    public void onZipDownloadFinish(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "onZipDownloadFinish: " + url);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onZipDownloadFinish(url);
        }
    }

    @Override // t6.b
    public void onZipDownloadStart(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "onZipDownloadStart: " + url);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback != null) {
            onUpdateCallback.onZipDownloadStart(url);
        }
    }

    @Override // t6.b
    public boolean onZipDownloaded(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "onZipDownloaded: " + url);
        OnUpdateCallback onUpdateCallback = this.onUpdateCallback;
        if (onUpdateCallback == null) {
            return true;
        }
        onUpdateCallback.onZipDownloaded(url);
        return true;
    }

    @Override // t6.b
    public boolean onZipTryDownload(String packageName, String pageUrl, String zipUrl) {
        List<DeliveryDimensionData> allowDeliveryDimension;
        List<String> mcc;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(pageUrl, "pageUrl");
        Intrinsics.h(zipUrl, "zipUrl");
        TmcLogger.d(TAG, "onZipTryDownload -> packageName:" + packageName + ", pageUrl:" + pageUrl + ", zipUrl:" + zipUrl);
        OffPkgConfig offlinePkgConfigCache = OfflineStoreCache.INSTANCE.getOfflinePkgConfigCache(packageName);
        if (offlinePkgConfigCache != null && (allowDeliveryDimension = offlinePkgConfigCache.getAllowDeliveryDimension()) != null) {
            for (DeliveryDimensionData deliveryDimensionData : allowDeliveryDimension) {
                OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
                String appId = offlineUtils.getAppId(pageUrl);
                String appId2 = deliveryDimensionData.getAppId();
                if (appId2 != null && appId2.length() > 0 && Intrinsics.c(deliveryDimensionData.getAppId(), appId)) {
                    String mcc2 = Utils.INSTANCE.getMcc();
                    TmcLogger.d(TAG, "onZipTryDownload -> localMcc:" + mcc2 + ", mccList:" + deliveryDimensionData.getMcc());
                    List<String> mcc3 = deliveryDimensionData.getMcc();
                    if (mcc3 != null && (!mcc3.isEmpty()) && mcc2 != null && ((mcc = deliveryDimensionData.getMcc()) == null || !mcc.contains(mcc2))) {
                        return false;
                    }
                    String networkType = deliveryDimensionData.getNetworkType();
                    if (!offlineUtils.checkNetwork((networkType == null || networkType.length() <= 0) ? offlinePkgConfigCache.getNetworkType() : deliveryDimensionData.getNetworkType())) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final void setOnUpdateCallback(OnUpdateCallback onUpdateCallback) {
        this.onUpdateCallback = onUpdateCallback;
    }
}
