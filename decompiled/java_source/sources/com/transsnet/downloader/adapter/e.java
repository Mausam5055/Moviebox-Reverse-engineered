package com.transsnet.downloader.adapter;

import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00022\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsnet/downloader/adapter/e;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", "", "isSelected", "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DubsInfo;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DubsInfo;Ljava/util/List;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class e extends BaseQuickAdapter {
    public e() {
        super(R$layout.item_download_sel_dialog, null, 2, null);
    }

    private final void D1(BaseViewHolder holder, boolean isSelected) {
        holder.getView(R$id.tv_name_selected).setVisibility(isSelected ? 0 : 8);
        holder.getView(R$id.tv_name).setVisibility(isSelected ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DubsInfo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.itemView.setSelected(item.getIsSelected());
        TextView textView = (TextView) holder.getView(R$id.tv_name);
        String lanName = item.getLanName();
        if (lanName == null) {
            lanName = "";
        }
        textView.setText(lanName);
        TextView textView2 = (TextView) holder.getView(R$id.tv_name_selected);
        String lanName2 = item.getLanName();
        textView2.setText(lanName2 != null ? lanName2 : "");
        D1(holder, item.getIsSelected());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, DubsInfo item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(0);
        if (obj instanceof Boolean) {
            D1(holder, ((Boolean) obj).booleanValue());
        }
    }
}
