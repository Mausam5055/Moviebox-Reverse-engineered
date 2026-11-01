package com.transsion.search_pugc.fragment.result.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SecondTab;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/transsion/search_pugc/fragment/result/adapter/c;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/search_pugc/bean/SecondTab;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "secondTab", "<init>", "(Lcom/transsion/search_pugc/bean/SecondTab;)V", "", "E1", "holder", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V", "F", "Lcom/transsion/search_pugc/bean/SecondTab;", "C1", "()Lcom/transsion/search_pugc/bean/SecondTab;", "D1", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class c extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private SecondTab secondTab;

    public c(SecondTab secondTab) {
        super(R$layout.item_search_result_tab_ugc, null, 2, null);
        this.secondTab = secondTab;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, SecondTab item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.tab_text, item.getTagValue());
        GradientTextView gradientTextView = (GradientTextView) holder.getView(R$id.tab_text);
        if (Intrinsics.c(item, this.secondTab)) {
            holder.setBackgroundResource(R$id.tab_root, R$drawable.bg_search_secondtab_seleted);
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(getContext(), R$color.brand_new_gradient_end));
        } else {
            holder.setBackgroundResource(R$id.tab_root, R$drawable.bg_search_secondtab_unseleted);
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.white_80), androidx.core.content.b.getColor(getContext(), R$color.white_80), androidx.core.content.b.getColor(getContext(), R$color.white_80));
        }
    }

    /* JADX INFO: renamed from: C1, reason: from getter */
    public final SecondTab getSecondTab() {
        return this.secondTab;
    }

    public final void D1(SecondTab secondTab) {
        this.secondTab = secondTab;
    }

    public final void E1(SecondTab secondTab) {
        this.secondTab = secondTab;
        notifyDataSetChanged();
    }
}
