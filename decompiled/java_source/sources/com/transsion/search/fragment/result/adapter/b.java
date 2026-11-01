package com.transsion.search.fragment.result.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.TabItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u0007J\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/search/fragment/result/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/search/bean/TabItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "initId", "<init>", "(Ljava/lang/String;)V", "selectId", "", "C1", "holder", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/TabItem;)V", "F", "Ljava/lang/String;", "selectedId", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String selectedId;

    public b(String str) {
        super(R$layout.item_search_result_tab, null, 2, null);
        this.selectedId = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, TabItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.search_result_tab_select_text, item.getName());
        holder.setText(R$id.search_result_tab_default_text, item.getName());
        if (Intrinsics.c(item.getTabId(), this.selectedId)) {
            holder.setVisible(R$id.search_result_tab_select_text, true);
            holder.setGone(R$id.search_result_tab_default_text, true);
        } else {
            holder.setGone(R$id.search_result_tab_select_text, true);
            holder.setVisible(R$id.search_result_tab_default_text, true);
        }
    }

    public final void C1(String selectId) {
        Intrinsics.h(selectId, "selectId");
        this.selectedId = selectId;
        notifyDataSetChanged();
    }
}
