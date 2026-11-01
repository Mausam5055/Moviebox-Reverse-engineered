package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends ResponseBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Headers f40527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BufferedSource f40528b;

    public i(Headers headers, BufferedSource bufferedSource) {
        this.f40527a = headers;
        this.f40528b = bufferedSource;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public long contentLength() {
        return OkHeaders.c(this.f40527a);
    }

    @Override // com.squareup.okhttp.ResponseBody
    public MediaType contentType() {
        String str = this.f40527a.get(HttpHeaders.CONTENT_TYPE);
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public BufferedSource source() {
        return this.f40528b;
    }
}
