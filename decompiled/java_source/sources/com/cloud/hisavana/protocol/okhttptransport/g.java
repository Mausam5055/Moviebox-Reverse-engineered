package com.cloud.hisavana.protocol.okhttptransport;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes3.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CronetEngine f21484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f21485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f21486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f21487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.cloud.hisavana.protocol.okhttptransport.c f21488e;

    class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Request f21489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OkHttpBridgeRequestCallback f21490b;

        a(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
            this.f21489a = request;
            this.f21490b = okHttpBridgeRequestCallback;
        }

        @Override // com.cloud.hisavana.protocol.okhttptransport.g.c
        public Response getResponse() {
            return g.this.f21486c.g(this.f21489a, this.f21490b);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final UrlRequest f21492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c f21493b;

        b(UrlRequest urlRequest, c cVar) {
            this.f21492a = urlRequest;
            this.f21493b = cVar;
        }

        public UrlRequest a() {
            return this.f21492a;
        }

        public Response b() {
            return this.f21493b.getResponse();
        }
    }

    private interface c {
        Response getResponse();
    }

    g(CronetEngine cronetEngine, Executor executor, d dVar, i iVar, com.cloud.hisavana.protocol.okhttptransport.c cVar) {
        this.f21484a = cronetEngine;
        this.f21485b = executor;
        this.f21487d = dVar;
        this.f21486c = iVar;
        this.f21488e = cVar;
    }

    private c c(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        return new a(request, okHttpBridgeRequestCallback);
    }

    b b(Request request, int i11, int i12) {
        OkHttpBridgeRequestCallback okHttpBridgeRequestCallback = new OkHttpBridgeRequestCallback(i11, this.f21488e);
        UrlRequest.Builder builderAllowDirectExecutor = this.f21484a.newUrlRequestBuilder(request.url().getUrl(), okHttpBridgeRequestCallback, MoreExecutors.a()).allowDirectExecutor();
        builderAllowDirectExecutor.addRequestAnnotation(request.headers());
        builderAllowDirectExecutor.setHttpMethod(request.method());
        for (int i13 = 0; i13 < request.headers().size(); i13++) {
            builderAllowDirectExecutor.addHeader(request.headers().name(i13), request.headers().value(i13));
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            if (request.header(HttpHeaders.CONTENT_LENGTH) == null && requestBodyBody.contentLength() != -1) {
                builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(requestBodyBody.contentLength()));
            }
            if (requestBodyBody.contentLength() != 0) {
                if (requestBodyBody.get$contentType() != null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, requestBodyBody.get$contentType().getMediaType());
                } else if (request.header(HttpHeaders.CONTENT_TYPE) == null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
                }
                builderAllowDirectExecutor.setUploadDataProvider(this.f21487d.a(requestBodyBody, i12), this.f21485b);
            }
        }
        return new b(builderAllowDirectExecutor.build(), c(request, okHttpBridgeRequestCallback));
    }
}
