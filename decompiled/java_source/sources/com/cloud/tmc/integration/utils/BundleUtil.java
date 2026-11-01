package com.cloud.tmc.integration.utils;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/integration/utils/BundleUtil;", "", "()V", "parse", "", "dataMap", "", "", "bundle", "Landroid/os/Bundle;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BundleUtil {
    public static final BundleUtil INSTANCE = new BundleUtil();

    private BundleUtil() {
    }

    public final void parse(Map<String, ? extends Object> dataMap, Bundle bundle) {
        Intrinsics.h(dataMap, "dataMap");
        Intrinsics.h(bundle, "bundle");
        try {
            for (Map.Entry<String, ? extends Object> entry : dataMap.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Integer) {
                    bundle.putInt(key, ((Number) value).intValue());
                } else if (value instanceof Short) {
                    bundle.putShort(key, ((Number) value).shortValue());
                } else if (value instanceof Long) {
                    bundle.putLong(key, ((Number) value).longValue());
                } else if (value instanceof Double) {
                    bundle.putDouble(key, ((Number) value).doubleValue());
                } else if (value instanceof Float) {
                    bundle.putFloat(key, ((Number) value).floatValue());
                } else if (value instanceof String) {
                    bundle.putString(key, (String) value);
                } else if (value instanceof Boolean) {
                    bundle.putBoolean(key, ((Boolean) value).booleanValue());
                } else if (value instanceof ArrayList) {
                    for (Object obj : (Iterable) value) {
                        if (obj instanceof Integer) {
                            bundle.putIntegerArrayList(key, (ArrayList) value);
                        } else if (obj instanceof Short) {
                            bundle.putShortArray(key, (short[]) value);
                        } else if (obj instanceof Long) {
                            bundle.putLongArray(key, (long[]) value);
                        } else if (obj instanceof Double) {
                            bundle.putDoubleArray(key, (double[]) value);
                        } else if (obj instanceof Float) {
                            bundle.putFloatArray(key, (float[]) value);
                        } else if (obj instanceof String) {
                            bundle.putStringArrayList(key, (ArrayList) value);
                        } else if (obj instanceof Boolean) {
                            bundle.putBooleanArray(key, (boolean[]) value);
                        }
                    }
                } else if (value != null) {
                    TraceLog.e("BundleUtil", "reportAdLog  put Bundle fail: key = " + key + " , value = " + value);
                }
            }
        } catch (Exception e11) {
            TraceLog.e("BundleUtil", "reportAdLog  parse data fail: " + e11);
        }
    }
}
