package com.wecloud.load.lib;

import android.util.Log;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.base.infras_config.InfraInitManager;
import com.transsion.base.infras_config.model.ConfigInitDataItem;
import com.transsion.base.infras_config.model.InfrasSourceType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes7.dex */
public final class StProbeIntegration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f60836c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StProbeIntegration f60834a = new StProbeIntegration();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f60835b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f60837d = LazyKt.b(new Function0() { // from class: com.wecloud.load.lib.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return StProbeIntegration.e();
        }
    });

    @Keep
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b+\b\u0083\b\u0018\u00002\u00020\u0001B£\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010,\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u00100\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u00101\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\"J\u0017\u00102\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jª\u0001\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00106J\u0013\u00107\u001a\u00020\u00062\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020\bHÖ\u0001J\t\u0010:\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b \u0010\u001cR\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010#\u001a\u0004\b$\u0010\"R$\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0016R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0016¨\u0006;"}, d2 = {"Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultItem;", "", "url", "", "method", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "status_code", "", "server_ip", TrackingKey.ERROR_MESSAGE, "error_code", TrackingKey.REQUEST_TIME, "", "duration", "http_headers", "", "http_body", "http_protocol", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getMethod", "getSuccess", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getStatus_code", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getServer_ip", "getError_message", "getError_code", "getRequest_time", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getDuration", "getHttp_headers", "()Ljava/util/Map;", "getHttp_body", "getHttp_protocol", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultItem;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final /* data */ class Group1ResultItem {
        private final Long duration;

        @SerializedName("error_code")
        private final Integer error_code;

        @SerializedName(TrackingKey.ERROR_MESSAGE)
        private final String error_message;

        @SerializedName("http_body")
        private final String http_body;

        @SerializedName("http_headers")
        private final Map<String, String> http_headers;

        @SerializedName("http_protocol")
        private final String http_protocol;
        private final String method;

        @SerializedName(TrackingKey.REQUEST_TIME)
        private final Long request_time;

        @SerializedName("server_ip")
        private final String server_ip;

        @SerializedName("status_code")
        private final Integer status_code;
        private final Boolean success;
        private final String url;

        public Group1ResultItem() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, UnixStat.PERM_MASK, null);
        }

        public Group1ResultItem(String str, String str2, Boolean bool, Integer num, String str3, String str4, Integer num2, Long l11, Long l12, Map<String, String> map, String str5, String str6) {
            this.url = str;
            this.method = str2;
            this.success = bool;
            this.status_code = num;
            this.server_ip = str3;
            this.error_message = str4;
            this.error_code = num2;
            this.request_time = l11;
            this.duration = l12;
            this.http_headers = map;
            this.http_body = str5;
            this.http_protocol = str6;
        }

        public /* synthetic */ Group1ResultItem(String str, String str2, Boolean bool, Integer num, String str3, String str4, Integer num2, Long l11, Long l12, Map map, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : bool, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : num2, (i11 & 128) != 0 ? null : l11, (i11 & 256) != 0 ? null : l12, (i11 & 512) != 0 ? null : map, (i11 & 1024) != 0 ? null : str5, (i11 & 2048) == 0 ? str6 : null);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public final Map<String, String> component10() {
            return this.http_headers;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final String getHttp_body() {
            return this.http_body;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final String getHttp_protocol() {
            return this.http_protocol;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMethod() {
            return this.method;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Boolean getSuccess() {
            return this.success;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Integer getStatus_code() {
            return this.status_code;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getServer_ip() {
            return this.server_ip;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getError_message() {
            return this.error_message;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final Integer getError_code() {
            return this.error_code;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final Long getRequest_time() {
            return this.request_time;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final Long getDuration() {
            return this.duration;
        }

        public final Group1ResultItem copy(String url, String method, Boolean success, Integer status_code, String server_ip, String error_message, Integer error_code, Long request_time, Long duration, Map<String, String> http_headers, String http_body, String http_protocol) {
            return new Group1ResultItem(url, method, success, status_code, server_ip, error_message, error_code, request_time, duration, http_headers, http_body, http_protocol);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Group1ResultItem)) {
                return false;
            }
            Group1ResultItem group1ResultItem = (Group1ResultItem) other;
            return Intrinsics.c(this.url, group1ResultItem.url) && Intrinsics.c(this.method, group1ResultItem.method) && Intrinsics.c(this.success, group1ResultItem.success) && Intrinsics.c(this.status_code, group1ResultItem.status_code) && Intrinsics.c(this.server_ip, group1ResultItem.server_ip) && Intrinsics.c(this.error_message, group1ResultItem.error_message) && Intrinsics.c(this.error_code, group1ResultItem.error_code) && Intrinsics.c(this.request_time, group1ResultItem.request_time) && Intrinsics.c(this.duration, group1ResultItem.duration) && Intrinsics.c(this.http_headers, group1ResultItem.http_headers) && Intrinsics.c(this.http_body, group1ResultItem.http_body) && Intrinsics.c(this.http_protocol, group1ResultItem.http_protocol);
        }

        public final Long getDuration() {
            return this.duration;
        }

        public final Integer getError_code() {
            return this.error_code;
        }

        public final String getError_message() {
            return this.error_message;
        }

        public final String getHttp_body() {
            return this.http_body;
        }

        public final Map<String, String> getHttp_headers() {
            return this.http_headers;
        }

        public final String getHttp_protocol() {
            return this.http_protocol;
        }

        public final String getMethod() {
            return this.method;
        }

        public final Long getRequest_time() {
            return this.request_time;
        }

        public final String getServer_ip() {
            return this.server_ip;
        }

        public final Integer getStatus_code() {
            return this.status_code;
        }

        public final Boolean getSuccess() {
            return this.success;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.url;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.method;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            Boolean bool = this.success;
            int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
            Integer num = this.status_code;
            int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
            String str3 = this.server_ip;
            int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.error_message;
            int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Integer num2 = this.error_code;
            int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
            Long l11 = this.request_time;
            int iHashCode8 = (iHashCode7 + (l11 == null ? 0 : l11.hashCode())) * 31;
            Long l12 = this.duration;
            int iHashCode9 = (iHashCode8 + (l12 == null ? 0 : l12.hashCode())) * 31;
            Map<String, String> map = this.http_headers;
            int iHashCode10 = (iHashCode9 + (map == null ? 0 : map.hashCode())) * 31;
            String str5 = this.http_body;
            int iHashCode11 = (iHashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.http_protocol;
            return iHashCode11 + (str6 != null ? str6.hashCode() : 0);
        }

        public String toString() {
            return "Group1ResultItem(url=" + this.url + ", method=" + this.method + ", success=" + this.success + ", status_code=" + this.status_code + ", server_ip=" + this.server_ip + ", error_message=" + this.error_message + ", error_code=" + this.error_code + ", request_time=" + this.request_time + ", duration=" + this.duration + ", http_headers=" + this.http_headers + ", http_body=" + this.http_body + ", http_protocol=" + this.http_protocol + ")";
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0083\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultWrapper;", "", "results", "", "Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultItem;", "<init>", "(Ljava/util/List;)V", "getResults", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final /* data */ class Group1ResultWrapper {
        private final List<Group1ResultItem> results;

        /* JADX WARN: Multi-variable type inference failed */
        public Group1ResultWrapper() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Group1ResultWrapper(List<Group1ResultItem> list) {
            this.results = list;
        }

        public /* synthetic */ Group1ResultWrapper(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Group1ResultWrapper copy$default(Group1ResultWrapper group1ResultWrapper, List list, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                list = group1ResultWrapper.results;
            }
            return group1ResultWrapper.copy(list);
        }

        public final List<Group1ResultItem> component1() {
            return this.results;
        }

        public final Group1ResultWrapper copy(List<Group1ResultItem> results) {
            return new Group1ResultWrapper(results);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Group1ResultWrapper) && Intrinsics.c(this.results, ((Group1ResultWrapper) other).results);
        }

        public final List<Group1ResultItem> getResults() {
            return this.results;
        }

        public int hashCode() {
            List<Group1ResultItem> list = this.results;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        public String toString() {
            return "Group1ResultWrapper(results=" + this.results + ")";
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u007f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0086\u0001\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u000bHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006-"}, d2 = {"Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;", "", "id", "", "url", "method", "headers", "", TtmlNode.TAG_BODY, "expectedStatusCode", "timeoutMilliseconds", "", "retryCount", "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getUrl", "getMethod", "getHeaders", "()Ljava/util/Map;", "getBody", "getExpectedStatusCode", "getTimeoutMilliseconds", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRetryCount", "getName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class ProbeLinkDto {

        @SerializedName(TtmlNode.TAG_BODY)
        private final String body;

        @SerializedName("expectedStatusCode")
        private final String expectedStatusCode;

        @SerializedName("headers")
        private final Map<String, String> headers;

        @SerializedName("id")
        private final String id;

        @SerializedName("method")
        private final String method;

        @SerializedName("name")
        private final String name;

        @SerializedName("retryCount")
        private final Integer retryCount;

        @SerializedName("timeoutMilliseconds")
        private final Integer timeoutMilliseconds;

        @SerializedName("url")
        private final String url;

        public ProbeLinkDto() {
            this(null, null, null, null, null, null, null, null, null, 511, null);
        }

        public ProbeLinkDto(String str, String str2, String str3, Map<String, String> map, String str4, String str5, Integer num, Integer num2, String str6) {
            this.id = str;
            this.url = str2;
            this.method = str3;
            this.headers = map;
            this.body = str4;
            this.expectedStatusCode = str5;
            this.timeoutMilliseconds = num;
            this.retryCount = num2;
            this.name = str6;
        }

        public /* synthetic */ ProbeLinkDto(String str, String str2, String str3, Map map, String str4, String str5, Integer num, Integer num2, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : map, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : num2, (i11 & 256) == 0 ? str6 : null);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getMethod() {
            return this.method;
        }

        public final Map<String, String> component4() {
            return this.headers;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getBody() {
            return this.body;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getExpectedStatusCode() {
            return this.expectedStatusCode;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final Integer getTimeoutMilliseconds() {
            return this.timeoutMilliseconds;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final Integer getRetryCount() {
            return this.retryCount;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getName() {
            return this.name;
        }

        public final ProbeLinkDto copy(String id2, String url, String method, Map<String, String> headers, String body, String expectedStatusCode, Integer timeoutMilliseconds, Integer retryCount, String name) {
            return new ProbeLinkDto(id2, url, method, headers, body, expectedStatusCode, timeoutMilliseconds, retryCount, name);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ProbeLinkDto)) {
                return false;
            }
            ProbeLinkDto probeLinkDto = (ProbeLinkDto) other;
            return Intrinsics.c(this.id, probeLinkDto.id) && Intrinsics.c(this.url, probeLinkDto.url) && Intrinsics.c(this.method, probeLinkDto.method) && Intrinsics.c(this.headers, probeLinkDto.headers) && Intrinsics.c(this.body, probeLinkDto.body) && Intrinsics.c(this.expectedStatusCode, probeLinkDto.expectedStatusCode) && Intrinsics.c(this.timeoutMilliseconds, probeLinkDto.timeoutMilliseconds) && Intrinsics.c(this.retryCount, probeLinkDto.retryCount) && Intrinsics.c(this.name, probeLinkDto.name);
        }

        public final String getBody() {
            return this.body;
        }

        public final String getExpectedStatusCode() {
            return this.expectedStatusCode;
        }

        public final Map<String, String> getHeaders() {
            return this.headers;
        }

        public final String getId() {
            return this.id;
        }

        public final String getMethod() {
            return this.method;
        }

        public final String getName() {
            return this.name;
        }

        public final Integer getRetryCount() {
            return this.retryCount;
        }

        public final Integer getTimeoutMilliseconds() {
            return this.timeoutMilliseconds;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.id;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.url;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.method;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Map<String, String> map = this.headers;
            int iHashCode4 = (iHashCode3 + (map == null ? 0 : map.hashCode())) * 31;
            String str4 = this.body;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.expectedStatusCode;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            Integer num = this.timeoutMilliseconds;
            int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.retryCount;
            int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str6 = this.name;
            return iHashCode8 + (str6 != null ? str6.hashCode() : 0);
        }

        public String toString() {
            return "ProbeLinkDto(id=" + this.id + ", url=" + this.url + ", method=" + this.method + ", headers=" + this.headers + ", body=" + this.body + ", expectedStatusCode=" + this.expectedStatusCode + ", timeoutMilliseconds=" + this.timeoutMilliseconds + ", retryCount=" + this.retryCount + ", name=" + this.name + ")";
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "proberLinks", "", "Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;", "version", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getProberLinks", "()Ljava/util/List;", "getVersion", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class StProbeConfigs {

        @SerializedName("proberLinks")
        private final List<ProbeLinkDto> proberLinks;

        @SerializedName("@type")
        private final String type;

        @SerializedName("version")
        private final String version;

        public StProbeConfigs() {
            this(null, null, null, 7, null);
        }

        public StProbeConfigs(String str, List<ProbeLinkDto> list, String str2) {
            this.type = str;
            this.proberLinks = list;
            this.version = str2;
        }

        public /* synthetic */ StProbeConfigs(String str, List list, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ StProbeConfigs copy$default(StProbeConfigs stProbeConfigs, String str, List list, String str2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = stProbeConfigs.type;
            }
            if ((i11 & 2) != 0) {
                list = stProbeConfigs.proberLinks;
            }
            if ((i11 & 4) != 0) {
                str2 = stProbeConfigs.version;
            }
            return stProbeConfigs.copy(str, list, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        public final List<ProbeLinkDto> component2() {
            return this.proberLinks;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        public final StProbeConfigs copy(String type, List<ProbeLinkDto> proberLinks, String version) {
            return new StProbeConfigs(type, proberLinks, version);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StProbeConfigs)) {
                return false;
            }
            StProbeConfigs stProbeConfigs = (StProbeConfigs) other;
            return Intrinsics.c(this.type, stProbeConfigs.type) && Intrinsics.c(this.proberLinks, stProbeConfigs.proberLinks) && Intrinsics.c(this.version, stProbeConfigs.version);
        }

        public final List<ProbeLinkDto> getProberLinks() {
            return this.proberLinks;
        }

        public final String getType() {
            return this.type;
        }

        public final String getVersion() {
            return this.version;
        }

        public int hashCode() {
            String str = this.type;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            List<ProbeLinkDto> list = this.proberLinks;
            int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
            String str2 = this.version;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "StProbeConfigs(type=" + this.type + ", proberLinks=" + this.proberLinks + ", version=" + this.version + ")";
        }
    }

    private StProbeIntegration() {
    }

    private final Gson d() {
        return (Gson) f60837d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson e() {
        return new Gson();
    }

    public static /* synthetic */ Object g(StProbeIntegration stProbeIntegration, String str, Continuation continuation, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        return stProbeIntegration.f(str, continuation);
    }

    public static /* synthetic */ Object k(StProbeIntegration stProbeIntegration, boolean z10, int i11, Continuation continuation, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = true;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return stProbeIntegration.j(z10, i11, continuation);
    }

    public final String c(StProbeConfigs stProbeConfigs, int i11) {
        List<ProbeLinkDto> proberLinks;
        int size = 0;
        List<ProbeLinkDto> proberLinks2 = stProbeConfigs != null ? stProbeConfigs.getProberLinks() : null;
        if (proberLinks2 == null) {
            proberLinks2 = CollectionsKt.l();
        }
        ArrayList<ProbeLinkDto> arrayList = new ArrayList();
        for (Object obj : proberLinks2) {
            String url = ((ProbeLinkDto) obj).getUrl();
            if (!(url == null || url.length() == 0)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            if (stProbeConfigs != null && (proberLinks = stProbeConfigs.getProberLinks()) != null) {
                size = proberLinks.size();
            }
            Log.w("StProbeIntegration", "buildGroup1InitPayloadFromStProbe(): no valid proberLinks, rawSize=" + size);
            return null;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        for (ProbeLinkDto probeLinkDto : arrayList) {
            Pair pairA = TuplesKt.a("id", probeLinkDto.getId());
            Pair pairA2 = TuplesKt.a("url", probeLinkDto.getUrl());
            Pair pairA3 = TuplesKt.a("method", probeLinkDto.getMethod());
            Pair pairA4 = TuplesKt.a("headers", probeLinkDto.getHeaders());
            Pair pairA5 = TuplesKt.a(TtmlNode.TAG_BODY, probeLinkDto.getBody());
            Pair pairA6 = TuplesKt.a("expectedStatusCode", probeLinkDto.getExpectedStatusCode());
            Integer timeoutMilliseconds = probeLinkDto.getTimeoutMilliseconds();
            Pair pairA7 = TuplesKt.a("timeoutMilliseconds", Integer.valueOf(timeoutMilliseconds != null ? timeoutMilliseconds.intValue() : 0));
            Integer retryCount = probeLinkDto.getRetryCount();
            arrayList2.add(MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a("retryCount", Integer.valueOf(retryCount != null ? retryCount.intValue() : 0)), TuplesKt.a("name", probeLinkDto.getName())));
        }
        Map mapM = MapsKt.m(TuplesKt.a("version", 1), TuplesKt.a("proberLinks", arrayList2));
        if (i11 > 0) {
            mapM.put("maxConcurrency", Integer.valueOf(i11));
        }
        return d().toJson(mapM);
    }

    public final Object f(String str, Continuation continuation) {
        if (!l.f60848a.d()) {
            return Unit.f67061a;
        }
        String str2 = f60836c ? "https://i-api-test.aoneroom.com" : "https://i-api.aoneroom.com";
        boolean z10 = f60836c;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initStProbeConfig(globalVersion=");
        sb2.append(str);
        sb2.append(", isDebugMode=");
        sb2.append(z10);
        sb2.append(", baseUrl=");
        sb2.append(str2);
        sb2.append(")");
        Object objG = kotlinx.coroutines.i.g(y0.b(), new StProbeIntegration$initStProbeConfig$2(str, str2, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public final StProbeConfigs h() {
        Object objM454constructorimpl;
        ConfigInitDataItem configInitDataItemD = InfraInitManager.f42995a.d(InfrasSourceType.ST_PROBER);
        if (configInitDataItemD == null) {
            Log.w("StProbeIntegration", "loadStProberConfigsFromCache: no cached item for ST_PROBER");
            return null;
        }
        JsonElement configs = configInitDataItemD.getConfigs();
        if (configs == null) {
            Log.w("StProbeIntegration", "loadStProberConfigsFromCache: cached item has null configs");
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl((StProbeConfigs) new Gson().fromJson(configs, StProbeConfigs.class));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            StProbeConfigs stProbeConfigs = (StProbeConfigs) objM454constructorimpl;
            List<ProbeLinkDto> proberLinks = stProbeConfigs.getProberLinks();
            int i11 = 0;
            int size = proberLinks != null ? proberLinks.size() : 0;
            List<ProbeLinkDto> proberLinks2 = stProbeConfigs.getProberLinks();
            if (proberLinks2 != null) {
                List<ProbeLinkDto> list = proberLinks2;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    int i12 = 0;
                    while (it.hasNext()) {
                        String url = ((ProbeLinkDto) it.next()).getUrl();
                        if (!(url == null || StringsKt.q0(url)) && (i12 = i12 + 1) < 0) {
                            CollectionsKt.t();
                        }
                    }
                    i11 = i12;
                }
            }
            String version = stProbeConfigs.getVersion();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("loadStProberConfigsFromCache: loaded configs, version=");
            sb2.append(version);
            sb2.append(", linksTotal=");
            sb2.append(size);
            sb2.append(", linksWithUrl=");
            sb2.append(i11);
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            Log.w("StProbeIntegration", "parse ST_PROBER.configs failed: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl);
        }
        return (StProbeConfigs) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    public final Object i(boolean z10, int i11, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new StProbeIntegration$probeAllFromStProbe$2(z10, i11, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(boolean z10, int i11, Continuation continuation) throws Throwable {
        StProbeIntegration$probeAllFromStProbeAndReport$1 stProbeIntegration$probeAllFromStProbeAndReport$1;
        if (continuation instanceof StProbeIntegration$probeAllFromStProbeAndReport$1) {
            stProbeIntegration$probeAllFromStProbeAndReport$1 = (StProbeIntegration$probeAllFromStProbeAndReport$1) continuation;
            int i12 = stProbeIntegration$probeAllFromStProbeAndReport$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                stProbeIntegration$probeAllFromStProbeAndReport$1.label = i12 - Integer.MIN_VALUE;
            } else {
                stProbeIntegration$probeAllFromStProbeAndReport$1 = new StProbeIntegration$probeAllFromStProbeAndReport$1(this, continuation);
            }
        } else {
            stProbeIntegration$probeAllFromStProbeAndReport$1 = new StProbeIntegration$probeAllFromStProbeAndReport$1(this, continuation);
        }
        Object objI = stProbeIntegration$probeAllFromStProbeAndReport$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = stProbeIntegration$probeAllFromStProbeAndReport$1.label;
        if (i13 == 0) {
            ResultKt.b(objI);
            stProbeIntegration$probeAllFromStProbeAndReport$1.label = 1;
            objI = i(z10, i11, stProbeIntegration$probeAllFromStProbeAndReport$1);
            if (objI == objF) {
                return objF;
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objI);
        }
        List list = (List) objI;
        j.f60846a.a(list);
        return list;
    }

    public final void l(boolean z10) {
        f60836c = z10;
    }
}
