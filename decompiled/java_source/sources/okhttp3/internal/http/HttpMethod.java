package okhttp3.internal.http;

import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "()V", "invalidatesCache", "", "method", "", "permitsRequestBody", "redirectsToGet", "redirectsWithBody", "requiresRequestBody", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    @JvmStatic
    public static final boolean permitsRequestBody(String method) {
        Intrinsics.h(method, "method");
        return (Intrinsics.c(method, "GET") || Intrinsics.c(method, "HEAD")) ? false : true;
    }

    @JvmStatic
    public static final boolean requiresRequestBody(String method) {
        Intrinsics.h(method, "method");
        return Intrinsics.c(method, "POST") || Intrinsics.c(method, "PUT") || Intrinsics.c(method, "PATCH") || Intrinsics.c(method, "PROPPATCH") || Intrinsics.c(method, "REPORT");
    }

    public final boolean invalidatesCache(String method) {
        Intrinsics.h(method, "method");
        return Intrinsics.c(method, "POST") || Intrinsics.c(method, "PATCH") || Intrinsics.c(method, "PUT") || Intrinsics.c(method, "DELETE") || Intrinsics.c(method, CustomSwipeRefreshLayout.MOVE);
    }

    public final boolean redirectsToGet(String method) {
        Intrinsics.h(method, "method");
        return !Intrinsics.c(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(String method) {
        Intrinsics.h(method, "method");
        return Intrinsics.c(method, "PROPFIND");
    }
}
