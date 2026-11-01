package com.google.net.cronet.okhttptransport;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes4.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CronetEngine f32793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f32794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f32795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f32796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.net.cronet.okhttptransport.c f32797e;

    class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Request f32798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OkHttpBridgeRequestCallback f32799b;

        a(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
            this.f32798a = request;
            this.f32799b = okHttpBridgeRequestCallback;
        }

        @Override // com.google.net.cronet.okhttptransport.g.c
        public Response getResponse() {
            return g.this.f32795c.f(this.f32798a, this.f32799b);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final UrlRequest f32801a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c f32802b;

        b(UrlRequest urlRequest, c cVar) {
            this.f32801a = urlRequest;
            this.f32802b = cVar;
        }

        public UrlRequest a() {
            return this.f32801a;
        }

        public Response b() {
            return this.f32802b.getResponse();
        }
    }

    private interface c {
        Response getResponse();
    }

    g(CronetEngine cronetEngine, Executor executor, d dVar, i iVar, com.google.net.cronet.okhttptransport.c cVar) {
        this.f32793a = cronetEngine;
        this.f32794b = executor;
        this.f32796d = dVar;
        this.f32795c = iVar;
        this.f32797e = cVar;
    }

    private c c(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        return new a(request, okHttpBridgeRequestCallback);
    }

    b b(Request request, int i11, int i12) {
        OkHttpBridgeRequestCallback okHttpBridgeRequestCallback = new OkHttpBridgeRequestCallback(i11, this.f32797e);
        UrlRequest.Builder builderAllowDirectExecutor = this.f32793a.newUrlRequestBuilder(request.url().getUrl(), okHttpBridgeRequestCallback, MoreExecutors.a()).allowDirectExecutor();
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
                if (request.header(HttpHeaders.CONTENT_TYPE) != null || requestBodyBody.get$contentType() == null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
                } else {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, requestBodyBody.get$contentType().getMediaType());
                }
                builderAllowDirectExecutor.setUploadDataProvider(this.f32796d.a(requestBodyBody, i12), this.f32794b);
            }
        }
        return new b(builderAllowDirectExecutor.build(), c(request, okHttpBridgeRequestCallback));
    }
}
