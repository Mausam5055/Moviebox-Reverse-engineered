package com.cloud.tmc.worker.utils;

import com.cloud.tmc.worker.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/worker/utils/JavaScriptUtil;", "", "()V", "buildScript", "", "funName", "params", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JavaScriptUtil {
    public static final JavaScriptUtil INSTANCE = new JavaScriptUtil();

    private JavaScriptUtil() {
    }

    public final String buildScript(String funName, Object... params) {
        Intrinsics.h(funName, "funName");
        Intrinsics.h(params, "params");
        StringBuffer stringBuffer = new StringBuffer();
        for (Object obj : params) {
            if (obj != null) {
                if (obj instanceof String) {
                    stringBuffer.append("'");
                    stringBuffer.append((String) obj);
                    stringBuffer.append("'");
                } else {
                    stringBuffer.append(obj);
                }
                stringBuffer.append(",");
            }
        }
        if (stringBuffer.length() == 0) {
            return funName + "()";
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        return funName + '(' + ((Object) stringBuffer) + ')';
    }
}
