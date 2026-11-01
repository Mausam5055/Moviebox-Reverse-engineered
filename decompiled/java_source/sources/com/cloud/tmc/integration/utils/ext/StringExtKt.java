package com.cloud.tmc.integration.utils.ext;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u0086\bø\u0001\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0001\u001a\f\u0010\u0006\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u001a&\u0010\u0007\u001a\u00020\b*\u0004\u0018\u00010\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\b0\nH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000b"}, d2 = {"orDefault", "", "fallbackValue", "Lkotlin/Function0;", "orDefaultAndCheckEmpty", "takeIfNotEmpty", "toMd5", "useNotEmpty", "", "block", "Lkotlin/Function1;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StringExtKt {
    public static final String orDefault(String str, String fallbackValue) {
        Intrinsics.h(fallbackValue, "fallbackValue");
        return str == null ? fallbackValue : str;
    }

    public static final String orDefault(String str, Function0<String> fallbackValue) {
        Intrinsics.h(fallbackValue, "fallbackValue");
        return str == null ? (String) fallbackValue.invoke() : str;
    }

    public static final String orDefaultAndCheckEmpty(String str, String fallbackValue) {
        Intrinsics.h(fallbackValue, "fallbackValue");
        return (str == null || str.length() == 0) ? fallbackValue : str;
    }

    public static final String takeIfNotEmpty(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str;
    }

    public static final String toMd5(String str) {
        String strEncryptMD5ToString = EncryptUtils.encryptMD5ToString(str);
        Intrinsics.g(strEncryptMD5ToString, "encryptMD5ToString(this)");
        return strEncryptMD5ToString;
    }

    public static final void useNotEmpty(String str, Function1<? super String, Unit> block) {
        Intrinsics.h(block, "block");
        String strTakeIfNotEmpty = takeIfNotEmpty(str);
        if (strTakeIfNotEmpty != null) {
            block.invoke(strTakeIfNotEmpty);
        }
    }
}
