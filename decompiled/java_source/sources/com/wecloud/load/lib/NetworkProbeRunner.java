package com.wecloud.load.lib;

import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class NetworkProbeRunner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NetworkProbeRunner f60812a = new NetworkProbeRunner();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Gson f60813b = new Gson();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final OkHttpClient f60814c = new OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).build();

    /* JADX INFO: Access modifiers changed from: private */
    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0083\b\u0018\u00002\u00020\u0001B\u007f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0086\u0001\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u000bHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006-"}, d2 = {"Lcom/wecloud/load/lib/NetworkProbeRunner$Link;", "", "id", "", "url", "method", "headers", "", TtmlNode.TAG_BODY, "expectedStatusCode", "timeoutMilliseconds", "", "retryCount", "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getUrl", "getMethod", "getHeaders", "()Ljava/util/Map;", "getBody", "getExpectedStatusCode", "getTimeoutMilliseconds", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRetryCount", "getName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/wecloud/load/lib/NetworkProbeRunner$Link;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    static final /* data */ class Link {

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

        public Link() {
            this(null, null, null, null, null, null, null, null, null, 511, null);
        }

        public Link(String str, String str2, String str3, Map<String, String> map, String str4, String str5, Integer num, Integer num2, String str6) {
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

        public /* synthetic */ Link(String str, String str2, String str3, Map map, String str4, String str5, Integer num, Integer num2, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
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

        public final Link copy(String id2, String url, String method, Map<String, String> headers, String body, String expectedStatusCode, Integer timeoutMilliseconds, Integer retryCount, String name) {
            return new Link(id2, url, method, headers, body, expectedStatusCode, timeoutMilliseconds, retryCount, name);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Link)) {
                return false;
            }
            Link link = (Link) other;
            return Intrinsics.c(this.id, link.id) && Intrinsics.c(this.url, link.url) && Intrinsics.c(this.method, link.method) && Intrinsics.c(this.headers, link.headers) && Intrinsics.c(this.body, link.body) && Intrinsics.c(this.expectedStatusCode, link.expectedStatusCode) && Intrinsics.c(this.timeoutMilliseconds, link.timeoutMilliseconds) && Intrinsics.c(this.retryCount, link.retryCount) && Intrinsics.c(this.name, link.name);
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
            return "Link(id=" + this.id + ", url=" + this.url + ", method=" + this.method + ", headers=" + this.headers + ", body=" + this.body + ", expectedStatusCode=" + this.expectedStatusCode + ", timeoutMilliseconds=" + this.timeoutMilliseconds + ", retryCount=" + this.retryCount + ", name=" + this.name + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Keep
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0083\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J8\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/wecloud/load/lib/NetworkProbeRunner$Payload;", "", "version", "", "maxConcurrency", "proberLinks", "", "Lcom/wecloud/load/lib/NetworkProbeRunner$Link;", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getVersion", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMaxConcurrency", "getProberLinks", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/wecloud/load/lib/NetworkProbeRunner$Payload;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    static final /* data */ class Payload {

        @SerializedName("maxConcurrency")
        private final Integer maxConcurrency;

        @SerializedName("proberLinks")
        private final List<Link> proberLinks;

        @SerializedName("version")
        private final Integer version;

        public Payload() {
            this(null, null, null, 7, null);
        }

        public Payload(Integer num, Integer num2, List<Link> list) {
            this.version = num;
            this.maxConcurrency = num2;
            this.proberLinks = list;
        }

        public /* synthetic */ Payload(Integer num, Integer num2, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : num2, (i11 & 4) != 0 ? null : list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Payload copy$default(Payload payload, Integer num, Integer num2, List list, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                num = payload.version;
            }
            if ((i11 & 2) != 0) {
                num2 = payload.maxConcurrency;
            }
            if ((i11 & 4) != 0) {
                list = payload.proberLinks;
            }
            return payload.copy(num, num2, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Integer getVersion() {
            return this.version;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getMaxConcurrency() {
            return this.maxConcurrency;
        }

        public final List<Link> component3() {
            return this.proberLinks;
        }

        public final Payload copy(Integer version, Integer maxConcurrency, List<Link> proberLinks) {
            return new Payload(version, maxConcurrency, proberLinks);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Payload)) {
                return false;
            }
            Payload payload = (Payload) other;
            return Intrinsics.c(this.version, payload.version) && Intrinsics.c(this.maxConcurrency, payload.maxConcurrency) && Intrinsics.c(this.proberLinks, payload.proberLinks);
        }

        public final Integer getMaxConcurrency() {
            return this.maxConcurrency;
        }

        public final List<Link> getProberLinks() {
            return this.proberLinks;
        }

        public final Integer getVersion() {
            return this.version;
        }

        public int hashCode() {
            Integer num = this.version;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.maxConcurrency;
            int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
            List<Link> list = this.proberLinks;
            return iHashCode2 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Payload(version=" + this.version + ", maxConcurrency=" + this.maxConcurrency + ", proberLinks=" + this.proberLinks + ")";
        }
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60816a;

        static {
            int[] iArr = new int[Protocol.values().length];
            try {
                iArr[Protocol.HTTP_1_0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Protocol.HTTP_1_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Protocol.HTTP_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Protocol.QUIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Protocol.H2_PRIOR_KNOWLEDGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f60816a = iArr;
        }
    }

    public static final class b extends EventListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicReference f60817a;

        b(AtomicReference atomicReference) {
            this.f60817a = atomicReference;
        }

        @Override // okhttp3.EventListener
        public void connectionAcquired(Call call, Connection connection) {
            InetAddress address;
            Intrinsics.h(call, "call");
            Intrinsics.h(connection, "connection");
            InetSocketAddress inetSocketAddressSocketAddress = connection.getRoute().socketAddress();
            String hostAddress = null;
            if (!(inetSocketAddressSocketAddress instanceof InetSocketAddress)) {
                inetSocketAddressSocketAddress = null;
            }
            if (inetSocketAddressSocketAddress != null && (address = inetSocketAddressSocketAddress.getAddress()) != null) {
                hostAddress = address.getHostAddress();
            }
            if (hostAddress == null || StringsKt.q0(hostAddress)) {
                return;
            }
            this.f60817a.set(hostAddress);
        }
    }

    private NetworkProbeRunner() {
    }

    private final Pair d(Throwable th2) {
        if (th2 instanceof SocketTimeoutException) {
            String message = th2.getMessage();
            if (message == null) {
                message = "Operation timeout";
            }
            return TuplesKt.a(3, message);
        }
        if (th2 instanceof UnknownHostException) {
            String message2 = th2.getMessage();
            if (message2 == null) {
                message2 = "DNS lookup failed";
            }
            return TuplesKt.a(1, message2);
        }
        if (th2 instanceof ConnectException) {
            String message3 = th2.getMessage();
            if (message3 == null) {
                message3 = "Failed to connect to host";
            }
            return TuplesKt.a(2, message3);
        }
        if ((th2 instanceof SSLPeerUnverifiedException) || (th2 instanceof SSLHandshakeException)) {
            String message4 = th2.getMessage();
            if (message4 == null) {
                message4 = "SSL peer certificate verification failed";
            }
            return TuplesKt.a(5, message4);
        }
        if (th2 instanceof IOException) {
            String message5 = th2.getMessage();
            if (message5 == null) {
                message5 = "IO error";
            }
            return TuplesKt.a(99, message5);
        }
        String message6 = th2.getMessage();
        if (message6 == null) {
            message6 = "Unknown error";
        }
        return TuplesKt.a(99, message6);
    }

    public static /* synthetic */ Object f(NetworkProbeRunner networkProbeRunner, String str, i0 i0Var, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i0Var = y0.b();
        }
        return networkProbeRunner.e(str, i0Var, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Link link, Continuation continuation) throws Throwable {
        n nVar;
        Integer retryCount = link.getRetryCount();
        int i11 = 0;
        int iF = RangesKt.f(retryCount != null ? retryCount.intValue() : 0, 0);
        if (iF >= 0) {
            while (true) {
                nVar = h(link);
                if (!nVar.m()) {
                    if (i11 == iF) {
                        break;
                    }
                    i11++;
                } else {
                    return nVar;
                }
            }
        } else {
            nVar = null;
        }
        String url = link.getUrl();
        if (url == null) {
            url = "";
        }
        String str = url;
        if (nVar == null) {
            String method = link.getMethod();
            if (method == null) {
                method = "GET";
            }
            String upperCase = method.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            nVar = new n(str, upperCase, false, -1, "", "Unknown error", 99, MapsKt.h(), "", System.currentTimeMillis(), 0L, TmcConstants.ROUTE_UNKNOWN);
        }
        return nVar;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:107:0x01f2 A[Catch: all -> 0x00ad, TRY_LEAVE, TryCatch #3 {all -> 0x00ad, blocks: (B:25:0x005c, B:26:0x0091, B:28:0x0097, B:31:0x00b4, B:33:0x00bc, B:35:0x00c4, B:37:0x00cc, B:42:0x00d8, B:43:0x00e2, B:45:0x00e8, B:49:0x00ff, B:51:0x0103, B:54:0x010d, B:57:0x0117, B:59:0x011d, B:63:0x0129, B:64:0x013d, B:66:0x014e, B:67:0x0173, B:69:0x0179, B:70:0x018b, B:72:0x0191, B:75:0x0198, B:77:0x01a0, B:87:0x01bb, B:102:0x01e5, B:107:0x01f2, B:65:0x0146), top: B:141:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:113:0x020d A[Catch: all -> 0x020a, TryCatch #1 {all -> 0x020a, blocks: (B:109:0x0204, B:119:0x024f, B:121:0x0255, B:113:0x020d, B:115:0x0216, B:116:0x022b, B:118:0x023f, B:117:0x0231), top: B:137:0x01f0 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0216 A[Catch: all -> 0x020a, TryCatch #1 {all -> 0x020a, blocks: (B:109:0x0204, B:119:0x024f, B:121:0x0255, B:113:0x020d, B:115:0x0216, B:116:0x022b, B:118:0x023f, B:117:0x0231), top: B:137:0x01f0 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0231 A[Catch: all -> 0x020a, TryCatch #1 {all -> 0x020a, blocks: (B:109:0x0204, B:119:0x024f, B:121:0x0255, B:113:0x020d, B:115:0x0216, B:116:0x022b, B:118:0x023f, B:117:0x0231), top: B:137:0x01f0 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0255 A[Catch: all -> 0x020a, TRY_LEAVE, TryCatch #1 {all -> 0x020a, blocks: (B:109:0x0204, B:119:0x024f, B:121:0x0255, B:113:0x020d, B:115:0x0216, B:116:0x022b, B:118:0x023f, B:117:0x0231), top: B:137:0x01f0 }] */
    private final n h(Link link) throws Throwable {
        String str;
        String str2;
        Object next;
        Request requestBuild;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        n nVar;
        StringBuilder sb2;
        n nVarA;
        Integer numV;
        String url = link.getUrl();
        String str8 = url == null ? "" : url;
        String method = link.getMethod();
        if (method == null) {
            method = "GET";
        }
        String upperCase = method.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        Integer timeoutMilliseconds = link.getTimeoutMilliseconds();
        int iF = RangesKt.f(timeoutMilliseconds != null ? timeoutMilliseconds.intValue() : 10000, 1);
        String expectedStatusCode = link.getExpectedStatusCode();
        boolean z10 = false;
        int iIntValue = (expectedStatusCode == null || (numV = StringsKt.v(expectedStatusCode)) == null) ? 0 : numV.intValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jNanoTime = System.nanoTime();
        Map<String, String> headers = link.getHeaders();
        if (headers == null) {
            headers = MapsKt.h();
        }
        String body = link.getBody();
        if (body == null) {
            body = "";
        }
        try {
            final AtomicReference atomicReference = new AtomicReference(null);
            OkHttpClient.Builder builderNewBuilder = f60814c.newBuilder();
            long j11 = iF;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            OkHttpClient okHttpClientBuild = builderNewBuilder.connectTimeout(j11, timeUnit).readTimeout(j11, timeUnit).eventListenerFactory(new EventListener.Factory() { // from class: com.wecloud.load.lib.m
                @Override // okhttp3.EventListener.Factory
                public final EventListener create(Call call) {
                    return NetworkProbeRunner.i(atomicReference, call);
                }
            }).build();
            Request.Builder builderUrl = new Request.Builder().url(str8);
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                builderUrl.addHeader(entry.getKey(), entry.getValue());
            }
            boolean z11 = Intrinsics.c(upperCase, "POST") || Intrinsics.c(upperCase, "PUT") || Intrinsics.c(upperCase, "PATCH") || Intrinsics.c(upperCase, "DELETE");
            Iterator<T> it = headers.entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!StringsKt.H((String) ((Map.Entry) next).getKey(), HttpHeaders.CONTENT_TYPE, true));
            Map.Entry entry2 = (Map.Entry) next;
            String str9 = entry2 != null ? (String) entry2.getValue() : null;
            RequestBody requestBodyCreate = (!z11 || body.length() <= 0) ? null : RequestBody.INSTANCE.create(body, str9 != null ? MediaType.INSTANCE.parse(str9) : null);
            if (z11) {
                if (requestBodyCreate == null) {
                    str = null;
                    str2 = null;
                    requestBodyCreate = RequestBody.Companion.create$default(RequestBody.INSTANCE, new byte[0], (MediaType) null, 0, 0, 6, (Object) null);
                }
                requestBuild = builderUrl.method(upperCase, requestBodyCreate).build();
            } else {
                requestBuild = builderUrl.method(upperCase, null).build();
            }
            Response responseExecute = okHttpClientBuild.newCall(requestBuild).execute();
            int iCode = responseExecute.code();
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Pair<? extends String, ? extends String> pair : responseExecute.headers()) {
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            ResponseBody responseBodyBody = responseExecute.body();
            String strString = responseBodyBody != null ? responseBodyBody.string() : null;
            if (strString == null) {
                strString = "";
            }
            if (strString.length() > 1048576) {
                String strSubstring = strString.substring(0, 1048576);
                Intrinsics.g(strSubstring, "substring(...)");
                str3 = strSubstring;
            } else {
                str3 = strString;
            }
            if (iIntValue > 0) {
                if (iCode == iIntValue) {
                    z10 = true;
                }
            } else if (200 <= iCode && iCode < 400) {
                z10 = true;
            }
            int i11 = a.f60816a[responseExecute.protocol().ordinal()];
            try {
                if (i11 == 1) {
                    str4 = "HTTP/1.0";
                } else {
                    if (i11 != 2) {
                        if (i11 == 3 || i11 == 4 || i11 == 5) {
                            str5 = "HTTP/2";
                        } else {
                            str4 = TmcConstants.ROUTE_UNKNOWN;
                        }
                        str6 = (String) atomicReference.get();
                        if (str6 == null) {
                            str7 = "";
                        } else {
                            str7 = str6;
                        }
                        if (z10) {
                            str = str8;
                            str2 = upperCase;
                            nVar = new n(str8, upperCase, true, iCode, str7, "", 0, linkedHashMap, str3, jCurrentTimeMillis, millis, str5);
                        } else {
                            str = str8;
                            str2 = upperCase;
                            if (iIntValue > 0) {
                                sb2 = new StringBuilder();
                                sb2.append("Expected status code ");
                                sb2.append(iIntValue);
                                sb2.append(", but got ");
                                sb2.append(iCode);
                            } else {
                                sb2 = new StringBuilder();
                                sb2.append("HTTP ");
                                sb2.append(iCode);
                            }
                            nVar = new n(str, str2, false, iCode, str7, sb2.toString(), 99, linkedHashMap, str3, jCurrentTimeMillis, millis, str5);
                        }
                        nVarA = nVar;
                        if (nVarA.l() == 200) {
                            nVarA = nVarA.a((3711 & 1) != 0 ? nVarA.f60853a : null, (3711 & 2) != 0 ? nVarA.f60854b : null, (3711 & 4) != 0 ? nVarA.f60855c : false, (3711 & 8) != 0 ? nVarA.f60856d : 0, (3711 & 16) != 0 ? nVarA.f60857e : null, (3711 & 32) != 0 ? nVarA.f60858f : null, (3711 & 64) != 0 ? nVarA.f60859g : 0, (3711 & 128) != 0 ? nVarA.f60860h : MapsKt.h(), (3711 & 256) != 0 ? nVarA.f60861i : "", (3711 & 512) != 0 ? nVarA.f60862j : 0L, (3711 & 1024) != 0 ? nVarA.f60863k : 0L, (3711 & 2048) != 0 ? nVarA.f60864l : null);
                        }
                        System.currentTimeMillis();
                        return nVarA;
                    }
                    str4 = "HTTP/1.1";
                }
                if (z10) {
                    str = str8;
                    str2 = upperCase;
                    nVar = new n(str8, upperCase, true, iCode, str7, "", 0, linkedHashMap, str3, jCurrentTimeMillis, millis, str5);
                } else {
                    str = str8;
                    str2 = upperCase;
                    if (iIntValue > 0) {
                        sb2 = new StringBuilder();
                        sb2.append("Expected status code ");
                        sb2.append(iIntValue);
                        sb2.append(", but got ");
                        sb2.append(iCode);
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append("HTTP ");
                        sb2.append(iCode);
                    }
                    nVar = new n(str, str2, false, iCode, str7, sb2.toString(), 99, linkedHashMap, str3, jCurrentTimeMillis, millis, str5);
                }
                nVarA = nVar;
                if (nVarA.l() == 200) {
                    nVarA = nVarA.a((3711 & 1) != 0 ? nVarA.f60853a : null, (3711 & 2) != 0 ? nVarA.f60854b : null, (3711 & 4) != 0 ? nVarA.f60855c : false, (3711 & 8) != 0 ? nVarA.f60856d : 0, (3711 & 16) != 0 ? nVarA.f60857e : null, (3711 & 32) != 0 ? nVarA.f60858f : null, (3711 & 64) != 0 ? nVarA.f60859g : 0, (3711 & 128) != 0 ? nVarA.f60860h : MapsKt.h(), (3711 & 256) != 0 ? nVarA.f60861i : "", (3711 & 512) != 0 ? nVarA.f60862j : 0L, (3711 & 1024) != 0 ? nVarA.f60863k : 0L, (3711 & 2048) != 0 ? nVarA.f60864l : null);
                }
                System.currentTimeMillis();
                return nVarA;
            } catch (Throwable th2) {
                th = th2;
                try {
                    long millis2 = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
                    try {
                        Pair pairD = d(th);
                        n nVar2 = new n(str, str2, false, -1, "", (String) pairD.component2(), ((Number) pairD.component1()).intValue(), MapsKt.h(), "", jCurrentTimeMillis, millis2, TmcConstants.ROUTE_UNKNOWN);
                        System.currentTimeMillis();
                        return nVar2;
                    } catch (Throwable th3) {
                        th = th3;
                        System.currentTimeMillis();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            str5 = str4;
            str6 = (String) atomicReference.get();
            if (str6 == null) {
                str7 = "";
            } else {
                str7 = str6;
            }
        } catch (Throwable th5) {
            th = th5;
            str = str8;
            str2 = upperCase;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener i(AtomicReference atomicReference, Call it) {
        Intrinsics.h(it, "it");
        return new b(atomicReference);
    }

    public final Object e(String str, i0 i0Var, Continuation continuation) {
        return kotlinx.coroutines.i.g(i0Var, new NetworkProbeRunner$run$2(str, null), continuation);
    }
}
