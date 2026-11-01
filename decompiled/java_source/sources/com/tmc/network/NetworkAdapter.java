package com.tmc.network;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gg.c;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/tmc/network/NetworkAdapter;", "", "()V", "MAX_PRE_CONNECT", "", "isInit", "Ljava/util/concurrent/atomic/AtomicBoolean;", "init", "", "startPreConnect", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkAdapter {
    private static final int MAX_PRE_CONNECT = 3;
    public static final NetworkAdapter INSTANCE = new NetworkAdapter();
    private static final AtomicBoolean isInit = new AtomicBoolean(false);

    private NetworkAdapter() {
    }

    private final void startPreConnect() {
        NetworkConfig networkConfig = NetworkConfig.INSTANCE;
        if (!networkConfig.isNetworkImproveEnable()) {
            gg.b.f63567a.c("isNetworkImprove is disable.");
            return;
        }
        if (networkConfig.getPreConnectList().isEmpty()) {
            gg.b.f63567a.c("preConnectList is empty");
            return;
        }
        c cVarA = c.f63572c.a();
        if (cVarA == null) {
            return;
        }
        cVarA.a(new Runnable() { // from class: com.tmc.network.a
            @Override // java.lang.Runnable
            public final void run() {
                NetworkAdapter.m309startPreConnect$lambda0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startPreConnect$lambda-0, reason: not valid java name */
    public static final void m309startPreConnect$lambda0() {
        int i11 = 0;
        for (String url : NetworkConfig.INSTANCE.getPreConnectList()) {
            if (i11 >= 3) {
                return;
            }
            Intrinsics.g(url, "url");
            new com.tmc.network.strategy.c(url).a();
            i11++;
        }
    }

    public final void init() {
        gg.b.f63567a.c("NetworkAdapter init");
        if (isInit.compareAndSet(false, true)) {
            startPreConnect();
        }
    }
}
