package com.cloud.hisavana.protocol.okhttptransport;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
abstract class b extends ResponseBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ResponseBody f21465a;

    protected b(ResponseBody responseBody) {
        this.f21465a = responseBody;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f21465a.close();
        d();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength */
    public final long get$contentLength() {
        return this.f21465a.get$contentLength();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType */
    public final MediaType get$contentType() {
        return this.f21465a.get$contentType();
    }

    abstract void d();

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public final BufferedSource get$this_asResponseBody() {
        return this.f21465a.get$this_asResponseBody();
    }
}
