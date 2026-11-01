package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003¨\u0006\u0006"}, d2 = {"failType", "Ljava/lang/reflect/Type;", "getFailType", "()Ljava/lang/reflect/Type;", "gatewayType", "getGatewayType", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcResponseCallbackKt {
    private static final Type failType;
    private static final Type gatewayType;

    static {
        Type type = new TypeToken<BaseResponse<? extends Object>>() { // from class: com.cloud.tmc.integration.net.TmcResponseCallbackKt$failType$1
        }.getType();
        Intrinsics.g(type, "object : TypeToken<BaseResponse<Any>>() {}.type");
        failType = type;
        Type type2 = new TypeToken<GatewayBean>() { // from class: com.cloud.tmc.integration.net.TmcResponseCallbackKt$gatewayType$1
        }.getType();
        Intrinsics.g(type2, "object : TypeToken<GatewayBean>() {}.type");
        gatewayType = type2;
    }

    public static final Type getFailType() {
        return failType;
    }

    public static final Type getGatewayType() {
        return gatewayType;
    }
}
