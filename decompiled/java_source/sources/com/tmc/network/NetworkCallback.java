package com.tmc.network;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0011"}, d2 = {"Lcom/tmc/network/NetworkCallback;", "Lokhttp3/Callback;", "callback", "Lcom/tmc/network/INetworkCallback;", "(Lcom/tmc/network/INetworkCallback;)V", "getCallback", "()Lcom/tmc/network/INetworkCallback;", "setCallback", "onFailure", "", "call", "Lokhttp3/Call;", "e", "Ljava/io/IOException;", "onResponse", "response", "Lokhttp3/Response;", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class NetworkCallback implements Callback {
    private INetworkCallback callback;

    public NetworkCallback(INetworkCallback callback) {
        Intrinsics.h(callback, "callback");
        this.callback = callback;
    }

    public final INetworkCallback getCallback() {
        return this.callback;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException e11) {
        Intrinsics.h(call, "call");
        Intrinsics.h(e11, "e");
        this.callback.onFailure(call, e11);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        this.callback.onResponse(call, response);
    }

    public final void setCallback(INetworkCallback iNetworkCallback) {
        Intrinsics.h(iNetworkCallback, "<set-?>");
        this.callback = iNetworkCallback;
    }
}
