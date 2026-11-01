package com.cloud.tmc.integration.utils;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.JsonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\b¢\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0019\u0010\f\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u00042\u0006\u0010\r\u001a\u0002H\u0004¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/utils/JsonUtil;", "", "()V", "fromJson", "T", "json", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getValueFromJson", "key", "toJsonStr", "bean", "(Ljava/lang/Object;)Ljava/lang/String;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JsonUtil {
    public static final JsonUtil INSTANCE = new JsonUtil();

    private JsonUtil() {
    }

    public final <T> T fromJson(String json, Class<T> type) {
        Intrinsics.h(type, "type");
        return (T) GsonUtils.fromJson(json, (Class) type);
    }

    public final String getValueFromJson(String json, String key) {
        Intrinsics.h(json, "json");
        Intrinsics.h(key, "key");
        String string = JsonUtils.getString(json, key);
        Intrinsics.g(string, "getString(json, key)");
        return string;
    }

    public final <T> String toJsonStr(T bean) {
        String json = GsonUtils.toJson(bean);
        Intrinsics.g(json, "toJson(bean)");
        return json;
    }
}
