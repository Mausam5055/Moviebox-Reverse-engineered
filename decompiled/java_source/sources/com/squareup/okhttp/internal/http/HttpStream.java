package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.Sink;

/* JADX INFO: loaded from: classes5.dex */
public interface HttpStream {
    public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;

    void cancel();

    Sink createRequestBody(Request request, long j11) throws IOException;

    void finishRequest() throws IOException;

    ResponseBody openResponseBody(Response response) throws IOException;

    Response.Builder readResponseHeaders() throws IOException;

    void setHttpEngine(g gVar);

    void writeRequestBody(k kVar) throws IOException;

    void writeRequestHeaders(Request request) throws IOException;
}
