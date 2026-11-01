package com.transsion.videodetail.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/videodetail/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", "", "isSelected", "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DubsInfo;)V", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class a extends BaseQuickAdapter {
    public a() {
        super(R$layout.item_video_detail_sel_dialog_audio_track, null, 2, null);
    }

    private final void C1(BaseViewHolder holder, boolean isSelected) {
        holder.itemView.setSelected(isSelected);
        holder.getView(R$id.tvName).setVisibility(!isSelected ? 0 : 8);
        holder.getView(R$id.tvNameSelected).setVisibility(isSelected ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DubsInfo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        C1(holder, item.getIsSelected());
        int i11 = R$id.tvName;
        String lanName = item.getLanName();
        if (lanName == null) {
            lanName = "";
        }
        holder.setText(i11, lanName);
        int i12 = R$id.tvNameSelected;
        String lanName2 = item.getLanName();
        holder.setText(i12, lanName2 != null ? lanName2 : "");
    }
}
