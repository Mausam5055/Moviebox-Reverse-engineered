package com.transsion.search.net;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\r\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0004HÖ\u0001R$\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR$\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/transsion/search/net/GoogleSuggestConfig;", "", "headers", "", "", "queryParams", "<init>", "(Ljava/util/Map;Ljava/util/Map;)V", "getHeaders", "()Ljava/util/Map;", "getQueryParams", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GoogleSuggestConfig {

    @SerializedName("headers")
    private final Map<String, String> headers;

    @SerializedName("queryParams")
    private final Map<String, String> queryParams;

    public GoogleSuggestConfig(Map<String, String> map, Map<String, String> map2) {
        this.headers = map;
        this.queryParams = map2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GoogleSuggestConfig copy$default(GoogleSuggestConfig googleSuggestConfig, Map map, Map map2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            map = googleSuggestConfig.headers;
        }
        if ((i11 & 2) != 0) {
            map2 = googleSuggestConfig.queryParams;
        }
        return googleSuggestConfig.copy(map, map2);
    }

    public final Map<String, String> component1() {
        return this.headers;
    }

    public final Map<String, String> component2() {
        return this.queryParams;
    }

    public final GoogleSuggestConfig copy(Map<String, String> headers, Map<String, String> queryParams) {
        return new GoogleSuggestConfig(headers, queryParams);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GoogleSuggestConfig)) {
            return false;
        }
        GoogleSuggestConfig googleSuggestConfig = (GoogleSuggestConfig) other;
        return Intrinsics.c(this.headers, googleSuggestConfig.headers) && Intrinsics.c(this.queryParams, googleSuggestConfig.queryParams);
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final Map<String, String> getQueryParams() {
        return this.queryParams;
    }

    public int hashCode() {
        Map<String, String> map = this.headers;
        int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
        Map<String, String> map2 = this.queryParams;
        return iHashCode + (map2 != null ? map2.hashCode() : 0);
    }

    public String toString() {
        return "GoogleSuggestConfig(headers=" + this.headers + ", queryParams=" + this.queryParams + ")";
    }
}
