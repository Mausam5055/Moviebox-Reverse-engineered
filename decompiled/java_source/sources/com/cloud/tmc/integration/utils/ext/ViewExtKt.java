package com.cloud.tmc.integration.utils.ext;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a\f\u0010\u0005\u001a\u00020\u0006*\u0004\u0018\u00010\u0002\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0006*\u00020\u0002\u001a\n\u0010\t\u001a\u00020\u0006*\u00020\u0002\u001a\u0012\u0010\n\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\f"}, d2 = {"visible", "", "Landroid/view/View;", "getVisible", "(Landroid/view/View;)Z", "removeSelf", "", "toGone", "toInvisible", "toVisible", "toVisibleOrGone", "toVisibleOrInvisible", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ViewExtKt {
    public static final boolean getVisible(View view) {
        Intrinsics.h(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final void removeSelf(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    public static final void toGone(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(8);
    }

    public static final void toInvisible(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(4);
    }

    public static final void toVisible(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(0);
    }

    public static final void toVisibleOrGone(View view, boolean z10) {
        Intrinsics.h(view, "<this>");
        if (z10) {
            toVisible(view);
        } else {
            toGone(view);
        }
    }

    public static final void toVisibleOrInvisible(View view, boolean z10) {
        Intrinsics.h(view, "<this>");
        if (z10) {
            toVisible(view);
        } else {
            toInvisible(view);
        }
    }
}
