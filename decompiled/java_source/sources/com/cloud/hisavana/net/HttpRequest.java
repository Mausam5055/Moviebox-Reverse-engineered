package com.cloud.hisavana.net;

import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.Request;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\r\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\r\u0010\fJ+\u0010\u000e\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00138\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\"\u0010%\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0019\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001d¨\u0006&"}, d2 = {"Lcom/cloud/hisavana/net/HttpRequest;", "", "<init>", "()V", "", "url", "Lcom/cloud/hisavana/net/RequestParams;", "params", "Lcom/cloud/hisavana/net/impl/IHttpCallback;", "callback", "", "j", "(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V", "c", "h", "Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;", "lruCleanCallBack", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "g", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "lruCleanCallBacks", "", "I", "e", "()I", "setCacheSize", "(I)V", "cacheSize", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "i", "setVideoCacheSize", "videoCacheSize", "f", CampaignEx.JSON_KEY_AD_K, "defaultCacheSize", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HttpRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HttpRequest f21328a = new HttpRequest();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static final CopyOnWriteArrayList lruCleanCallBacks = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private static int cacheSize;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static int videoCacheSize;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static int defaultCacheSize;

    private HttpRequest() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, com.cloud.hisavana.net.RequestParams] */
    public static final void c(String url, RequestParams params, final IHttpCallback callback) {
        try {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = params;
            if (params == 0) {
                objectRef.element = new RequestParams();
            }
            ((RequestParams) objectRef.element).i("isDownload", "true");
            final Request requestA = CommonRequest.a(url, (RequestParams) objectRef.element, callback);
            if (requestA != null) {
                HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.net.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        HttpRequest.d(objectRef, requestA, callback);
                    }
                });
            } else {
                c.netLog("getRequest:  create request is null");
            }
        } catch (Exception unused) {
            c.netLog("downloadImage:  post request is error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(Ref.ObjectRef tempParams, Request request, IHttpCallback iHttpCallback) {
        Intrinsics.h(tempParams, "$tempParams");
        CommonOkHttpClient.i((RequestParams) tempParams.element, request, iHttpCallback);
    }

    public static final void j(String url, RequestParams params, IHttpCallback callback) {
        if (params == null) {
            try {
                params = new RequestParams();
            } catch (Exception unused) {
                c.netLog("postRequest:  post request is error");
                return;
            }
        }
        params.i("isDownload", "false");
        Request requestB = CommonRequest.b(url, params, callback);
        if (requestB != null) {
            CommonOkHttpClient.n(requestB, callback);
        } else {
            c.netLog("postRequest:  create request is null");
        }
    }

    public final void b(LruCleanCallBack lruCleanCallBack) {
        if (lruCleanCallBack == null) {
            return;
        }
        lruCleanCallBacks.add(lruCleanCallBack);
    }

    public final int e() {
        return cacheSize;
    }

    public final int f() {
        return defaultCacheSize;
    }

    public final CopyOnWriteArrayList g() {
        return lruCleanCallBacks;
    }

    public final void h(String url, RequestParams params, IHttpCallback callback) {
        if (params == null) {
            try {
                params = new RequestParams();
            } catch (Exception unused) {
                c.netLog("postRequest:  post request is error");
                return;
            }
        }
        params.i("isDownload", "false");
        Request requestA = CommonRequest.a(url, params, callback);
        if (requestA != null) {
            CommonOkHttpClient.j(requestA, callback);
        } else {
            c.netLog("getRequest:  create request is null");
        }
    }

    public final int i() {
        return videoCacheSize;
    }

    public final void k(int i11) {
        defaultCacheSize = i11;
    }
}
