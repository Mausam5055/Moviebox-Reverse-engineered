package com.cloud.tmc.integration.utils.ext;

import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\t\u001a\u00020\u0001\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\t\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0004\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\f"}, d2 = {"dp2px", "", "", "getDp2px", "(F)I", "(I)I", "px2dp", "getPx2dp", "Landroid/content/Context;", "dp", "Landroid/view/View;", "px", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommonExtKt {
    public static final int dp2px(Context context, int i11) {
        Intrinsics.h(context, "<this>");
        return SizeUtils.dp2px(i11);
    }

    public static final int dp2px(View view, int i11) {
        Intrinsics.h(view, "<this>");
        return SizeUtils.dp2px(i11);
    }

    public static final int getDp2px(float f11) {
        return SizeUtils.dp2px(f11);
    }

    public static final int getDp2px(int i11) {
        return SizeUtils.dp2px(i11);
    }

    public static final int getPx2dp(float f11) {
        return SizeUtils.px2dp(f11);
    }

    public static final int getPx2dp(int i11) {
        return SizeUtils.px2dp(i11);
    }

    public static final int px2dp(Context context, int i11) {
        Intrinsics.h(context, "<this>");
        return SizeUtils.px2dp(i11);
    }

    public static final int px2dp(View view, int i11) {
        Intrinsics.h(view, "<this>");
        return SizeUtils.px2dp(i11);
    }
}
