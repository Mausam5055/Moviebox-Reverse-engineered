package com.transsion.room.sub.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.baseui.widget.BaseLoadMoreView;
import com.transsion.room.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;", "Lcom/transsion/baseui/widget/BaseLoadMoreView;", "<init>", "()V", "getRootView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubscriptionLoadMoreView extends BaseLoadMoreView {
    @Override // com.transsion.baseui.widget.BaseLoadMoreView, q6.a
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.view_subscription_load_more, parent, false);
        viewInflate.addOnAttachStateChangeListener(this);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }
}
