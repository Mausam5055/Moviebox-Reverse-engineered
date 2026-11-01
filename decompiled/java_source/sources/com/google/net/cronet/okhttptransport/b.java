package com.google.net.cronet.okhttptransport;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes4.dex */
abstract class b extends ResponseBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ResponseBody f32774a;

    protected b(ResponseBody responseBody) {
        this.f32774a = responseBody;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f32774a.close();
        d();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength */
    public final long get$contentLength() {
        return this.f32774a.get$contentLength();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType */
    public final MediaType get$contentType() {
        return this.f32774a.get$contentType();
    }

    abstract void d();

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public final BufferedSource get$this_asResponseBody() {
        return this.f32774a.get$this_asResponseBody();
    }
}
