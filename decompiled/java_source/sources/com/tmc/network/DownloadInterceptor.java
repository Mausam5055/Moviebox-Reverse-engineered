package com.tmc.network;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/tmc/network/DownloadInterceptor;", "Lokhttp3/Interceptor;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/tmc/network/ProgressListener;", "(Lcom/tmc/network/ProgressListener;)V", "getListener", "()Lcom/tmc/network/ProgressListener;", "setListener", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadInterceptor implements Interceptor {
    private ProgressListener listener;

    public DownloadInterceptor(ProgressListener progressListener) {
        this.listener = progressListener;
    }

    public final ProgressListener getListener() {
        return this.listener;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Response responseProceed = chain.proceed(chain.request());
        Response.Builder builderNewBuilder = responseProceed.newBuilder();
        ResponseBody responseBodyBody = responseProceed.body();
        Intrinsics.e(responseBodyBody);
        return builderNewBuilder.body(new ProgressResponseBody(responseBodyBody, this.listener)).build();
    }

    public final void setListener(ProgressListener progressListener) {
        this.listener = progressListener;
    }
}
