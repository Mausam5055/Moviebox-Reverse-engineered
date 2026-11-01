package com.cloud.hisavana.net;

import android.content.Context;
import bi.b;
import bi.g;
import com.cloud.hisavana.protocol.intercept.CronetRetryInterceptor;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import org.chromium.net.RequestFinishedInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0017\u0010\u0018R(\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u0013\u0010\u0019\u0012\u0004\b\u001d\u0010\u0003\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\u001cR(\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b \u0010!\u0012\u0004\b%\u0010\u0003\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/cloud/hisavana/net/NetGroup;", "", "<init>", "()V", "", "e", "()I", "Lokhttp3/OkHttpClient$Builder;", "builder", "Lbi/g;", "factory", "testChannel", "f", "(Lokhttp3/OkHttpClient$Builder;Lbi/g;I)Lokhttp3/OkHttpClient$Builder;", "Landroid/content/Context;", "context", "", "group", "Lorg/chromium/net/CronetEngine;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;", "url", "", "a", "(Ljava/lang/String;)Z", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "setGroupBucketId", "(I)V", "getGroupBucketId$annotations", "groupBucketId", "", "c", "J", "()J", "setAbtestVarId", "(J)V", "getAbtestVarId$annotations", "abtestVarId", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NetGroup f21333a = new NetGroup();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static int groupBucketId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private static long abtestVarId;

    private NetGroup() {
    }

    public static final boolean a(String url) {
        if (url == null || StringsKt.q0(url)) {
            return false;
        }
        return CommonOkHttpClient.f21318a || StringsKt.a0(url, "api.hisavana.com", true) || StringsKt.a0(url, "fra-api.hisavana.com", true) || StringsKt.a0(url, "ind-api.hisavana.com", true) || StringsKt.a0(url, "fast-api.hisavana.com", true);
    }

    private final CronetEngine b(Context context, final String group) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            CronetEngine cronetEngineBuild = new CronetEngine.Builder(context).enableHttp2(true).enableQuic(true).addQuicHint("api.hisavana.com", 443, 443).addQuicHint("creative.eagllwin.com", 443, 443).addQuicHint("hisavana-adx.transacme.com", 443, 443).build();
            final ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            cronetEngineBuild.addRequestFinishedListener(new RequestFinishedInfo.Listener(executorServiceNewSingleThreadExecutor) { // from class: com.cloud.hisavana.net.NetGroup$buildCronetEngine$1$1$1
                @Override // org.chromium.net.RequestFinishedInfo.Listener
                public void onRequestFinished(RequestFinishedInfo requestInfo) {
                    if (requestInfo == null) {
                        return;
                    }
                    b.f16473a.b(requestInfo, 0, "All", group, CommonOkHttpClient.f21318a, (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? false : false);
                }
            });
            objM454constructorimpl = Result.m454constructorimpl(cronetEngineBuild);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        return (CronetEngine) objM454constructorimpl;
    }

    public static final long c() {
        return abtestVarId;
    }

    public static final int d() {
        return groupBucketId;
    }

    public static final int e() {
        try {
            groupBucketId = j7.a.e().f("bucketV2");
            abtestVarId = j7.a.e().h("bucketVarId");
            c.netLog("NetGroup Net Init：groupBucketId = " + groupBucketId);
            return groupBucketId;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static final OkHttpClient.Builder f(OkHttpClient.Builder builder, g factory, int testChannel) {
        if (factory != null) {
            factory.a("2013");
        }
        switch (testChannel) {
            case 2014:
                if (factory != null) {
                    factory.a("2014");
                }
                if (builder != null) {
                    return builder.addInterceptor(new com.cloud.hisavana.protocol.intercept.a(MapsKt.f(new Pair("api.hisavana.com", "api.hisavana.com"))));
                }
                break;
            case 2015:
                NetGroup netGroup = f21333a;
                Context contextA = e.a();
                Intrinsics.g(contextA, "getContext(...)");
                CronetEngine cronetEngineB = netGroup.b(contextA, "2015");
                if (cronetEngineB == null) {
                    return builder;
                }
                if (factory != null) {
                    factory.a("2015");
                }
                if (factory != null) {
                    factory.b(true);
                }
                if (builder != null) {
                    return builder.addInterceptor((Interceptor) com.cloud.hisavana.protocol.okhttptransport.a.i(cronetEngineB).a());
                }
                break;
            case 2016:
                NetGroup netGroup2 = f21333a;
                Context contextA2 = e.a();
                Intrinsics.g(contextA2, "getContext(...)");
                CronetEngine cronetEngineB2 = netGroup2.b(contextA2, "2016");
                if (cronetEngineB2 == null) {
                    return builder;
                }
                if (factory != null) {
                    factory.a("2016");
                }
                if (builder != null) {
                    return builder.addInterceptor(new CronetRetryInterceptor.a(cronetEngineB2).i(MapsKt.f(new Pair("api.hisavana.com", "api.hisavana.com"))).h(new w6.b() { // from class: com.cloud.hisavana.net.NetGroup$getWrapBuilder$1
                        @Override // w6.b
                        public boolean a(int code) {
                            return code == 1005;
                        }
                    }).b(factory).a());
                }
                break;
            default:
                return builder;
        }
        return null;
    }
}
