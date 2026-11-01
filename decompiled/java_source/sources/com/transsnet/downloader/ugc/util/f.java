package com.transsnet.downloader.ugc.util;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsnet/downloader/ugc/util/f;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", "", "isSelected", "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class f extends BaseQuickAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(List<UGCDownloadResolutionBean> dataList) {
        super(R$layout.ugc_item_resolution_pop, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    private final void C1(BaseViewHolder holder, boolean isSelected) {
        holder.itemView.setSelected(isSelected);
        holder.getView(R$id.tvName).setVisibility(!isSelected ? 0 : 8);
        holder.getView(R$id.tvNameSelected).setVisibility(isSelected ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCDownloadResolutionBean item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        C1(holder, item.getIsSelected());
        int i11 = R$id.tvName;
        String name = item.getName();
        if (name == null) {
            name = "";
        }
        holder.setText(i11, name);
        int i12 = R$id.tvNameSelected;
        String name2 = item.getName();
        holder.setText(i12, name2 != null ? name2 : "");
    }
}
