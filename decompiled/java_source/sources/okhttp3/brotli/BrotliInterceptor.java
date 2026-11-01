package okhttp3.brotli;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import org.brotli.dec.b;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Lokhttp3/brotli/BrotliInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "uncompress", "response", "uncompress$okhttp_brotli", "okhttp-brotli"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BrotliInterceptor implements Interceptor {
    public static final BrotliInterceptor INSTANCE = new BrotliInterceptor();

    private BrotliInterceptor() {
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.h(chain, "chain");
        return chain.request().header("Accept-Encoding") == null ? uncompress$okhttp_brotli(chain.proceed(chain.request().newBuilder().header("Accept-Encoding", "br,gzip").build())) : chain.proceed(chain.request());
    }

    public final Response uncompress$okhttp_brotli(Response response) {
        ResponseBody responseBodyBody;
        String strHeader$default;
        BufferedSource bufferedSourceBuffer;
        Intrinsics.h(response, "response");
        if (!HttpHeaders.promisesBody(response) || (responseBodyBody = response.body()) == null || (strHeader$default = Response.header$default(response, com.alibaba.sdk.android.oss.common.utils.HttpHeaders.CONTENT_ENCODING, null, 2, null)) == null) {
            return response;
        }
        if (StringsKt.H(strHeader$default, TtmlNode.TAG_BR, true)) {
            bufferedSourceBuffer = Okio.buffer(Okio.source(new b(responseBodyBody.getSource().inputStream())));
        } else {
            if (!StringsKt.H(strHeader$default, "gzip", true)) {
                return response;
            }
            bufferedSourceBuffer = Okio.buffer(new GzipSource(responseBodyBody.getSource()));
        }
        return response.newBuilder().removeHeader(com.alibaba.sdk.android.oss.common.utils.HttpHeaders.CONTENT_ENCODING).removeHeader(com.alibaba.sdk.android.oss.common.utils.HttpHeaders.CONTENT_LENGTH).body(ResponseBody.INSTANCE.create(bufferedSourceBuffer, responseBodyBody.get$contentType(), -1L)).build();
    }
}
