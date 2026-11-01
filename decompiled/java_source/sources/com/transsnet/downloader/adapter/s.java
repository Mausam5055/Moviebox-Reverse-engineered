package com.transsnet.downloader.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.SeasonListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/transsnet/downloader/adapter/s;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsnet/downloader/bean/SeasonListBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "subjectType", "<init>", "(Ljava/lang/Integer;)V", "holder", "", "isSelected", "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/SeasonListBean;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/SeasonListBean;Ljava/util/List;)V", "F", "Ljava/lang/Integer;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class s extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Integer subjectType;

    public s(Integer num) {
        super(R$layout.item_download_sel_dialog, null, 2, null);
        this.subjectType = num;
    }

    private final void D1(BaseViewHolder holder, boolean isSelected) {
        holder.itemView.setSelected(isSelected);
        holder.getView(R$id.tv_name).setVisibility(!isSelected ? 0 : 8);
        holder.getView(R$id.tv_name_selected).setVisibility(isSelected ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, SeasonListBean item) {
        String string;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        D1(holder, item.isSelected());
        Integer num = this.subjectType;
        int value = SubjectType.EDUCATION.getValue();
        if (num != null && num.intValue() == value) {
            string = getContext().getString(R$string.download_video_detail_unit_index, jn.f.a(item.getSeason()));
            Intrinsics.e(string);
        } else {
            string = getContext().getString(R$string.download_video_detail_season_index, jn.f.a(item.getSeason()));
            Intrinsics.e(string);
        }
        holder.setText(R$id.tv_name, string);
        holder.setText(R$id.tv_name_selected, string);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, SeasonListBean item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            D1(holder, ((Boolean) obj).booleanValue());
        }
    }
}
