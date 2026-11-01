package com.vungle.ads.internal.network;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.converters.JsonConverter;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.n;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
public final class VungleApiImpl implements VungleApi {
    private static final String VUNGLE_VERSION = "7.1.0";
    private final com.vungle.ads.internal.network.converters.b emptyResponseConverter;
    private final Call.Factory okHttpClient;
    public static final a Companion = new a(null);
    private static final kotlinx.serialization.json.a json = n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.network.VungleApiImpl$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((kotlinx.serialization.json.d) obj);
            return Unit.f67061a;
        }

        public final void invoke(kotlinx.serialization.json.d Json) {
            Intrinsics.h(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            iArr[HttpMethod.GET.ordinal()] = 1;
            iArr[HttpMethod.POST.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public VungleApiImpl(Call.Factory okHttpClient) {
        Intrinsics.h(okHttpClient, "okHttpClient");
        this.okHttpClient = okHttpClient;
        this.emptyResponseConverter = new com.vungle.ads.internal.network.converters.b();
    }

    private final Request.Builder defaultBuilder(String str, String str2, String str3, Map<String, String> map) {
        Request.Builder builderAddHeader = new Request.Builder().url(str2).addHeader("User-Agent", str).addHeader("Vungle-Version", VUNGLE_VERSION).addHeader(HttpHeaders.CONTENT_TYPE, "application/json");
        if (map != null) {
            builderAddHeader.headers(Headers.INSTANCE.of(map));
        }
        if (str3 != null) {
            builderAddHeader.addHeader("X-Vungle-Placement-Ref-Id", str3);
        }
        k kVar = k.INSTANCE;
        String appVersion = kVar.getAppVersion();
        if (appVersion != null) {
            builderAddHeader.addHeader("X-VUNGLE-APP-VERSION", appVersion);
        }
        String appId = kVar.getAppId();
        if (appId != null) {
            builderAddHeader.addHeader("X-Vungle-App-Id", appId);
        }
        return builderAddHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Request.Builder defaultBuilder$default(VungleApiImpl vungleApiImpl, String str, String str2, String str3, Map map, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        if ((i11 & 8) != 0) {
            map = null;
        }
        return vungleApiImpl.defaultBuilder(str, str2, str3, map);
    }

    private final Request.Builder defaultProtoBufBuilder(String str, HttpUrl httpUrl) {
        Request.Builder builderAddHeader = new Request.Builder().url(httpUrl).addHeader("User-Agent", str).addHeader("Vungle-Version", VUNGLE_VERSION).addHeader(HttpHeaders.CONTENT_TYPE, "application/x-protobuf");
        k kVar = k.INSTANCE;
        String appId = kVar.getAppId();
        if (appId != null) {
            builderAddHeader.addHeader("X-Vungle-App-Id", appId);
        }
        String appVersion = kVar.getAppVersion();
        if (appVersion != null) {
            builderAddHeader.addHeader("X-VUNGLE-APP-VERSION", appVersion);
        }
        return builderAddHeader;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a ads(String ua2, String path, com.vungle.ads.internal.model.c body) {
        List<String> placements;
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(path, "path");
        Intrinsics.h(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(com.vungle.ads.internal.model.c.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            String strC = aVar.c(bVarB, body);
            com.vungle.ads.internal.model.c.i request = body.getRequest();
            return new d(this.okHttpClient.newCall(defaultBuilder$default(this, ua2, path, (request == null || (placements = request.getPlacements()) == null) ? null : (String) CollectionsKt.k0(placements), null, 8, null).post(RequestBody.INSTANCE.create(strC, (MediaType) null)).build()), new JsonConverter(Reflection.m(AdPayload.class)));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a config(String ua2, String path, com.vungle.ads.internal.model.c body) {
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(path, "path");
        Intrinsics.h(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(com.vungle.ads.internal.model.c.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            return new d(this.okHttpClient.newCall(defaultBuilder$default(this, ua2, path, null, null, 12, null).post(RequestBody.INSTANCE.create(aVar.c(bVarB, body), (MediaType) null)).build()), new JsonConverter(Reflection.m(ConfigPayload.class)));
        } catch (Exception unused) {
            return null;
        }
    }

    public final Call.Factory getOkHttpClient$vungle_ads_release() {
        return this.okHttpClient;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a pingTPAT(String ua2, String url, HttpMethod requestType, Map<String, String> map, RequestBody requestBody) {
        Request requestBuild;
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(url, "url");
        Intrinsics.h(requestType, "requestType");
        Request.Builder builderDefaultBuilder$default = defaultBuilder$default(this, ua2, url, null, map, 4, null);
        int i11 = b.$EnumSwitchMapping$0[requestType.ordinal()];
        if (i11 == 1) {
            requestBuild = builderDefaultBuilder$default.get().build();
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            if (requestBody == null) {
                requestBody = RequestBody.Companion.create$default(RequestBody.INSTANCE, new byte[0], (MediaType) null, 0, 0, 6, (Object) null);
            }
            requestBuild = builderDefaultBuilder$default.post(requestBody).build();
        }
        return new d(this.okHttpClient.newCall(requestBuild), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a ri(String ua2, String path, com.vungle.ads.internal.model.c body) {
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(path, "path");
        Intrinsics.h(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(com.vungle.ads.internal.model.c.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            return new d(this.okHttpClient.newCall(defaultBuilder$default(this, ua2, path, null, null, 12, null).post(RequestBody.INSTANCE.create(aVar.c(bVarB, body), (MediaType) null)).build()), this.emptyResponseConverter);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a sendAdMarkup(String path, RequestBody requestBody) {
        Intrinsics.h(path, "path");
        Intrinsics.h(requestBody, "requestBody");
        return new d(this.okHttpClient.newCall(defaultBuilder$default(this, "debug", HttpUrl.INSTANCE.get(path).newBuilder().build().getUrl(), null, null, 12, null).post(requestBody).build()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a sendErrors(String ua2, String path, RequestBody requestBody) {
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(path, "path");
        Intrinsics.h(requestBody, "requestBody");
        return new d(this.okHttpClient.newCall(defaultProtoBufBuilder(ua2, HttpUrl.INSTANCE.get(path).newBuilder().build()).post(requestBody).build()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    public com.vungle.ads.internal.network.a sendMetrics(String ua2, String path, RequestBody requestBody) {
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(path, "path");
        Intrinsics.h(requestBody, "requestBody");
        return new d(this.okHttpClient.newCall(defaultProtoBufBuilder(ua2, HttpUrl.INSTANCE.get(path).newBuilder().build()).post(requestBody).build()), this.emptyResponseConverter);
    }
}
