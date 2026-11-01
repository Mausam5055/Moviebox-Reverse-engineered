package com.android.volley.toolbox;

import com.android.volley.Request;
import com.android.volley.RequestTask;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BasicAsyncNetwork extends com.android.volley.b {

    private class InvokeRetryPolicyTask<T> extends RequestTask<T> {
        final com.android.volley.b.a callback;
        final Request request;
        final l.b retryInfo;
        final /* synthetic */ BasicAsyncNetwork this$0;

        InvokeRetryPolicyTask(BasicAsyncNetwork basicAsyncNetwork, Request request, l.b bVar, com.android.volley.b.a aVar) {
            super(request);
            this.request = request;
            this.retryInfo = bVar;
            this.callback = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                l.a(this.request, this.retryInfo);
                throw null;
            } catch (VolleyError e11) {
                this.callback.a(e11);
            }
        }
    }

    private class ResponseParsingTask<T> extends RequestTask<T> {
        com.android.volley.b.a callback;
        e httpResponse;
        InputStream inputStream;
        Request request;
        long requestStartMs;
        List<com.android.volley.e> responseHeaders;
        int statusCode;
        final /* synthetic */ BasicAsyncNetwork this$0;

        ResponseParsingTask(BasicAsyncNetwork basicAsyncNetwork, InputStream inputStream, e eVar, Request request, com.android.volley.b.a aVar, long j11, List<com.android.volley.e> list, int i11) {
            super(request);
            this.inputStream = inputStream;
            this.httpResponse = eVar;
            this.request = request;
            this.callback = aVar;
            this.requestStartMs = j11;
            this.responseHeaders = list;
            this.statusCode = i11;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                BasicAsyncNetwork.d(null, this.requestStartMs, this.statusCode, this.httpResponse, this.request, this.callback, this.responseHeaders, l.c(this.inputStream, this.httpResponse.b(), BasicAsyncNetwork.c(null)));
            } catch (IOException e11) {
                BasicAsyncNetwork.b(null, this.request, this.callback, e11, this.requestStartMs, this.httpResponse, null);
            }
        }
    }

    static /* synthetic */ void b(BasicAsyncNetwork basicAsyncNetwork, Request request, com.android.volley.b.a aVar, IOException iOException, long j11, e eVar, byte[] bArr) {
        throw null;
    }

    static /* synthetic */ ByteArrayPool c(BasicAsyncNetwork basicAsyncNetwork) {
        throw null;
    }

    static /* synthetic */ void d(BasicAsyncNetwork basicAsyncNetwork, long j11, int i11, e eVar, Request request, com.android.volley.b.a aVar, List list, byte[] bArr) {
        throw null;
    }
}
