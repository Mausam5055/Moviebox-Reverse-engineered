package com.transsion.postdetail.ui.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.widget.BaseLoadMoreView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0014\u0010\u000e\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;", "Lcom/transsion/baseui/widget/BaseLoadMoreView;", "<init>", "()V", "failClickCallback", "Lkotlin/Function0;", "", "getRootView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "getLoadFailView", "holder", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "setOnFailClickCallback", "callback", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PostListLoadMoreView extends BaseLoadMoreView {
    private Function0<Unit> failClickCallback;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getLoadFailView$lambda$1$lambda$0(PostListLoadMoreView postListLoadMoreView, View view) {
        Function0<Unit> function0 = postListLoadMoreView.failClickCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.transsion.baseui.widget.BaseLoadMoreView, q6.a
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.ll_error);
        LinearLayout linearLayout = (LinearLayout) viewFindViewById;
        ((TextView) holder.getView(R$id.tv_err)).setText(linearLayout.getContext().getString(R$string.room_net_fail));
        jg.c.k(holder.getView(R$id.tv_err_tab));
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostListLoadMoreView.getLoadFailView$lambda$1$lambda$0(this.f50109a, view);
            }
        });
        Intrinsics.g(viewFindViewById, "apply(...)");
        return viewFindViewById;
    }

    @Override // com.transsion.baseui.widget.BaseLoadMoreView, q6.a
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.view_post_item_load_more, parent, false);
        viewInflate.addOnAttachStateChangeListener(this);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    public final void setOnFailClickCallback(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.failClickCallback = callback;
    }
}
