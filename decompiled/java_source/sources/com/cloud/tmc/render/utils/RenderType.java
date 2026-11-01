package com.cloud.tmc.render.utils;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/render/utils/RenderType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "(Ljava/lang/String;II)V", "getType", "()I", "WARMUP", "OFFSCREEN_RENDER", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum RenderType {
    WARMUP(0),
    OFFSCREEN_RENDER(1);

    private final int type;

    RenderType(int i11) {
        this.type = i11;
    }

    public final int getType() {
        return this.type;
    }
}
