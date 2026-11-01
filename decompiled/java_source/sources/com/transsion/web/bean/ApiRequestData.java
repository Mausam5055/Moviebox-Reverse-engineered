package com.transsion.web.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u0017\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007HÆ\u0003J]\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001f\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/transsion/web/bean/ApiRequestData;", "", "host", "", OfflineConstantsKt.TRIGGER_API, "methods", "headers", "", "queryParams", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V", "getHost", "()Ljava/lang/String;", "getApi", "getMethods", "getHeaders", "()Ljava/util/Map;", "getQueryParams", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ApiRequestData {
    private final String api;
    private final Map<String, String> headers;
    private final String host;
    private final String methods;
    private final Map<String, Object> queryParams;

    public ApiRequestData() {
        this(null, null, null, null, null, 31, null);
    }

    public ApiRequestData(String str, String str2, String str3, Map<String, String> map, Map<String, Object> map2) {
        this.host = str;
        this.api = str2;
        this.methods = str3;
        this.headers = map;
        this.queryParams = map2;
    }

    public /* synthetic */ ApiRequestData(String str, String str2, String str3, Map map, Map map2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : map, (i11 & 16) != 0 ? null : map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApiRequestData copy$default(ApiRequestData apiRequestData, String str, String str2, String str3, Map map, Map map2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = apiRequestData.host;
        }
        if ((i11 & 2) != 0) {
            str2 = apiRequestData.api;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = apiRequestData.methods;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            map = apiRequestData.headers;
        }
        Map map3 = map;
        if ((i11 & 16) != 0) {
            map2 = apiRequestData.queryParams;
        }
        return apiRequestData.copy(str, str4, str5, map3, map2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApi() {
        return this.api;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMethods() {
        return this.methods;
    }

    public final Map<String, String> component4() {
        return this.headers;
    }

    public final Map<String, Object> component5() {
        return this.queryParams;
    }

    public final ApiRequestData copy(String host, String api, String methods, Map<String, String> headers, Map<String, Object> queryParams) {
        return new ApiRequestData(host, api, methods, headers, queryParams);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ApiRequestData)) {
            return false;
        }
        ApiRequestData apiRequestData = (ApiRequestData) other;
        return Intrinsics.c(this.host, apiRequestData.host) && Intrinsics.c(this.api, apiRequestData.api) && Intrinsics.c(this.methods, apiRequestData.methods) && Intrinsics.c(this.headers, apiRequestData.headers) && Intrinsics.c(this.queryParams, apiRequestData.queryParams);
    }

    public final String getApi() {
        return this.api;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final String getHost() {
        return this.host;
    }

    public final String getMethods() {
        return this.methods;
    }

    public final Map<String, Object> getQueryParams() {
        return this.queryParams;
    }

    public int hashCode() {
        String str = this.host;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.api;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.methods;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Map<String, String> map = this.headers;
        int iHashCode4 = (iHashCode3 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, Object> map2 = this.queryParams;
        return iHashCode4 + (map2 != null ? map2.hashCode() : 0);
    }

    public String toString() {
        return "ApiRequestData(host=" + this.host + ", api=" + this.api + ", methods=" + this.methods + ", headers=" + this.headers + ", queryParams=" + this.queryParams + ")";
    }
}
