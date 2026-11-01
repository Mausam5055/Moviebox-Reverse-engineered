package okhttp3.internal.http;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http2.ConnectionShutdownException;
import okio.BufferedSink;
import okio.Okio;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", "", "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "shouldIgnoreAndWaitForRealResponse", "code", "", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z10) {
        this.forWebSocket = z10;
    }

    private final boolean shouldIgnoreAndWaitForRealResponse(int code) {
        if (code == 100) {
            return true;
        }
        return 102 <= code && code < 200;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0099 A[Catch: IOException -> 0x006a, TRY_LEAVE, TryCatch #0 {IOException -> 0x006a, blocks: (B:17:0x0055, B:19:0x005b, B:30:0x0093, B:32:0x0099, B:22:0x006c, B:23:0x007b, B:25:0x0088), top: B:83:0x002c }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, okhttp3.Response$Builder] */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v4, types: [okhttp3.Response$Builder] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z10;
        ?? r11;
        ?? responseHeaders;
        Response.Builder builder;
        Intrinsics.h(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange = realInterceptorChain.getExchange();
        Intrinsics.e(exchange);
        Request request = realInterceptorChain.getRequest();
        RequestBody requestBodyBody = request.body();
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            exchange.writeRequestHeaders(request);
            ?? PermitsRequestBody = HttpMethod.permitsRequestBody(request.method());
            try {
                if (PermitsRequestBody == 0 || requestBodyBody == null) {
                    exchange.noRequestBody();
                    z10 = true;
                    PermitsRequestBody = 0;
                } else {
                    if (StringsKt.H("100-continue", request.header("Expect"), true)) {
                        exchange.flushRequest();
                        Response.Builder responseHeaders2 = exchange.readResponseHeaders(true);
                        try {
                            exchange.responseHeadersStart();
                            z10 = false;
                            builder = responseHeaders2;
                        } catch (IOException e11) {
                            e = e11;
                            z10 = true;
                            r11 = responseHeaders2;
                            if (e instanceof ConnectionShutdownException) {
                                throw e;
                            }
                            if (!exchange.getHasFailure()) {
                                responseHeaders = r11;
                                throw e;
                            }
                        }
                    } else {
                        z10 = true;
                        builder = null;
                    }
                    if (builder != null) {
                        exchange.noRequestBody();
                        if (!exchange.getConnection().isMultiplexed$okhttp()) {
                            PermitsRequestBody = builder;
                            exchange.noNewExchangesOnConnection();
                            PermitsRequestBody = builder;
                        }
                    } else if (requestBodyBody.isDuplex()) {
                        exchange.flushRequest();
                        requestBodyBody.writeTo(Okio.buffer(exchange.createRequestBody(request, true)));
                    } else {
                        BufferedSink bufferedSinkBuffer = Okio.buffer(exchange.createRequestBody(request, false));
                        requestBodyBody.writeTo(bufferedSinkBuffer);
                        bufferedSinkBuffer.close();
                    }
                }
                if (requestBodyBody != null) {
                    PermitsRequestBody = builder;
                    if (!requestBodyBody.isDuplex()) {
                        PermitsRequestBody = builder;
                        PermitsRequestBody = builder;
                        PermitsRequestBody = builder;
                        exchange.finishRequest();
                    }
                } else {
                    PermitsRequestBody = builder;
                    PermitsRequestBody = builder;
                    PermitsRequestBody = builder;
                    exchange.finishRequest();
                }
                PermitsRequestBody = builder;
                e = null;
                responseHeaders = PermitsRequestBody;
            } catch (IOException e12) {
                e = e12;
                r11 = PermitsRequestBody;
            }
        } catch (IOException e13) {
            e = e13;
            z10 = true;
            r11 = 0;
        }
        if (responseHeaders == 0) {
            try {
                responseHeaders = exchange.readResponseHeaders(false);
                Intrinsics.e(responseHeaders);
                if (z10) {
                    exchange.responseHeadersStart();
                    z10 = false;
                }
            } catch (IOException e14) {
                if (e == null) {
                    throw e14;
                }
                ExceptionsKt.a(e, e14);
                throw e;
            }
        }
        Response responseBuild = responseHeaders.request(request).handshake(exchange.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int iCode = responseBuild.code();
        if (shouldIgnoreAndWaitForRealResponse(iCode)) {
            Response.Builder responseHeaders3 = exchange.readResponseHeaders(false);
            Intrinsics.e(responseHeaders3);
            if (z10) {
                exchange.responseHeadersStart();
            }
            responseBuild = responseHeaders3.request(request).handshake(exchange.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            iCode = responseBuild.code();
        }
        exchange.responseHeadersEnd(responseBuild);
        Response responseBuild2 = (this.forWebSocket && iCode == 101) ? responseBuild.newBuilder().body(Util.EMPTY_RESPONSE).build() : responseBuild.newBuilder().body(exchange.openResponseBody(responseBuild)).build();
        if (StringsKt.H("close", responseBuild2.request().header("Connection"), true) || StringsKt.H("close", Response.header$default(responseBuild2, "Connection", null, 2, null), true)) {
            exchange.noNewExchangesOnConnection();
        }
        if (iCode == 204 || iCode == 205) {
            ResponseBody responseBodyBody = responseBuild2.body();
            if ((responseBodyBody != null ? responseBodyBody.getContentLength() : -1L) > 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("HTTP ");
                sb2.append(iCode);
                sb2.append(" had non-zero Content-Length: ");
                ResponseBody responseBodyBody2 = responseBuild2.body();
                sb2.append(responseBodyBody2 != null ? Long.valueOf(responseBodyBody2.getContentLength()) : null);
                throw new ProtocolException(sb2.toString());
            }
        }
        return responseBuild2;
    }
}
