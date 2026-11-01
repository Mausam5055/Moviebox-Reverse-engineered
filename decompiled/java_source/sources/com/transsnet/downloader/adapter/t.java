package com.transsnet.downloader.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsnet/downloader/adapter/t;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "I", "(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class t extends BaseQuickAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(List<String> dataList) {
        super(R$layout.item_download_short_tv_tag, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, String item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        View view = holder.itemView;
        Intrinsics.f(view, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) view).setText(item);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder I(View view) {
        Intrinsics.h(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof FlexboxLayoutManager.LayoutParams) {
            FlexboxLayoutManager.LayoutParams layoutParams2 = (FlexboxLayoutManager.LayoutParams) layoutParams;
            layoutParams2.setFlexShrink(0.0f);
            layoutParams2.setAlignSelf(2);
            view.setLayoutParams(layoutParams);
        }
        return super.I(view);
    }
}
