package com.cloud.tmc.kernel.constants;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/kernel/constants/MiniAppType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "(Ljava/lang/String;II)V", "getType", "()I", "NORMAL", "CARD", "SHELL", "SHELL_GAME", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MiniAppType {
    NORMAL(0),
    CARD(1),
    SHELL(2),
    SHELL_GAME(4);

    private final int type;

    MiniAppType(int i11) {
        this.type = i11;
    }

    public final int getType() {
        return this.type;
    }
}
