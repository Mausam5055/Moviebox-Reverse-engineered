package com.transsion.home.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.CategoryType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/transsion/home/adapter/f;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/CategoryType;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/CategoryType;)V", "", RequestParameters.POSITION, "E1", "(I)V", "D1", "()I", "C1", "()Lcom/transsion/home/bean/CategoryType;", "F", "I", "currentSelectedPosition", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f extends BaseQuickAdapter {
    public static final int G = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private int currentSelectedPosition;

    public f() {
        super(R$layout.item_ranking_category, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, CategoryType item) {
        int i11;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int layoutPosition = holder.getLayoutPosition();
        boolean z10 = layoutPosition == this.currentSelectedPosition;
        GradientTextView gradientTextView = (GradientTextView) holder.getView(R$id.ranking_category_name);
        String name = item.getName();
        if (name == null) {
            name = "";
        }
        gradientTextView.setText(name);
        if (z10) {
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_end));
        } else {
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.white_60), androidx.core.content.b.getColor(getContext(), R$color.white_60), androidx.core.content.b.getColor(getContext(), R$color.white_60));
        }
        int i12 = this.currentSelectedPosition;
        boolean z11 = layoutPosition == i12 + (-1);
        boolean z12 = layoutPosition == i12 + 1;
        if (z10) {
            i11 = R$drawable.bg_ranking_category_selected;
        } else if (z11) {
            i11 = R$drawable.bg_ranking_category_above_selected;
        } else {
            i11 = z12 ? R$drawable.bg_ranking_category_below_selected : R$drawable.bg_ranking_category_normal;
        }
        lg.a.C0828a.f(lg.a.f68839a, "RankingCategory", "position=" + layoutPosition + ", selected=" + i12 + ", isAbove=" + z11 + ", isBelow=" + z12 + ", bg=" + i11, false, 4, null);
        holder.itemView.setBackgroundResource(i11);
    }

    public final CategoryType C1() {
        return (CategoryType) CollectionsKt.l0(getData(), this.currentSelectedPosition);
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final int getCurrentSelectedPosition() {
        return this.currentSelectedPosition;
    }

    public final void E1(int position) {
        int i11 = this.currentSelectedPosition;
        if (position == i11) {
            return;
        }
        this.currentSelectedPosition = position;
        notifyItemChanged(i11);
        if (i11 > 0) {
            notifyItemChanged(i11 - 1);
        }
        if (i11 < getData().size() - 1) {
            notifyItemChanged(i11 + 1);
        }
        notifyItemChanged(this.currentSelectedPosition);
        int i12 = this.currentSelectedPosition;
        if (i12 > 0) {
            notifyItemChanged(i12 - 1);
        }
        if (this.currentSelectedPosition < getData().size() - 1) {
            notifyItemChanged(this.currentSelectedPosition + 1);
        }
    }
}
