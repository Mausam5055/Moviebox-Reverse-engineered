package com.cloud.hisavana.net;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tR$\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\"\u0010%\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001a\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\"\u0010+\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010'\u001a\u0004\b\u0012\u0010(\"\u0004\b)\u0010*R\"\u0010-\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u000b\u001a\u0004\b\n\u0010\r\"\u0004\b,\u0010\u000f¨\u0006."}, d2 = {"Lcom/cloud/hisavana/net/RequestParams;", "", "<init>", "()V", "", "key", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "i", "(Ljava/lang/String;Ljava/lang/String;)V", "a", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "n", "(Ljava/lang/String;)V", "postBody", "Ljava/util/concurrent/ConcurrentHashMap;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/concurrent/ConcurrentHashMap;", "c", "()Ljava/util/concurrent/ConcurrentHashMap;", "httpHeaders", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "httpParams", "", "Z", "g", "()Z", "m", "(Z)V", "isFetchFilePath", "h", "o", "isUseCache", "f", "l", "isDownloadVideo", "", "I", "()I", CampaignEx.JSON_KEY_AD_K, "(I)V", "cacheMode", "j", "adCreativeId", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String postBody;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isFetchFilePath;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isDownloadVideo;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ConcurrentHashMap httpHeaders = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ConcurrentHashMap httpParams = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isUseCache = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int cacheMode = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String adCreativeId = "";

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAdCreativeId() {
        return this.adCreativeId;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getCacheMode() {
        return this.cacheMode;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final ConcurrentHashMap getHttpHeaders() {
        return this.httpHeaders;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final ConcurrentHashMap getHttpParams() {
        return this.httpParams;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getPostBody() {
        return this.postBody;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getIsDownloadVideo() {
        return this.isDownloadVideo;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getIsFetchFilePath() {
        return this.isFetchFilePath;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final boolean getIsUseCache() {
        return this.isUseCache;
    }

    public final void i(String key, String value) {
        if (key == null || value == null) {
            return;
        }
        this.httpHeaders.put(key, value);
    }

    public final void j(String str) {
        Intrinsics.h(str, "<set-?>");
        this.adCreativeId = str;
    }

    public final void k(int i11) {
        this.cacheMode = i11;
    }

    public final void l(boolean z10) {
        this.isDownloadVideo = z10;
    }

    public final void m(boolean z10) {
        this.isFetchFilePath = z10;
    }

    public final void n(String str) {
        this.postBody = str;
    }

    public final void o(boolean z10) {
        this.isUseCache = z10;
    }
}
