package com.cloud.tmc.kernel.utils;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0004\u001a&\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\b¢\u0006\u0002\u0010\u0007\u001a\n\u0010\b\u001a\u00020\u0003*\u00020\u0002¨\u0006\t"}, d2 = {"fromJson", "T", "", "", "(Ljava/lang/String;)Ljava/lang/Object;", NativeComponentConstants.KEY_COMPONENT_TYPE, "Ljava/lang/reflect/Type;", "(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;", "toJson", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcGsonUtilsKt {
    public static final /* synthetic */ <T> T fromJson(String str) {
        Intrinsics.h(str, "<this>");
        Intrinsics.n(4, "T");
        return (T) TmcGsonUtils.fromJson(str, Object.class);
    }

    public static final /* synthetic */ <T> T fromJson(String str, Type type) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(type, "type");
        return (T) TmcGsonUtils.fromJson(str, type);
    }

    public static final String toJson(Object obj) {
        Intrinsics.h(obj, "<this>");
        return TmcGsonUtils.toJson(obj);
    }
}
