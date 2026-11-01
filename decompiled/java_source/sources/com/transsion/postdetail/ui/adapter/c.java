package com.transsion.postdetail.ui.adapter;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u001f\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001c¨\u0006 "}, d2 = {"Lcom/transsion/postdetail/ui/adapter/c;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "dataList", "", "isSeriesDialog", "<init>", "(Ljava/util/List;Z)V", "holder", "isPlaying", "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V", "F", "Z", "", "G", "I", "screenWidth", "H", "dp8", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class c extends BaseQuickAdapter implements r6.i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final boolean isSeriesDialog;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int dp8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(List<DownloadBean> dataList, boolean z10) {
        super(R$layout.item_local_video_middle_ep, dataList);
        Intrinsics.h(dataList, "dataList");
        this.isSeriesDialog = z10;
        this.screenWidth = y.e();
        this.dp8 = dk.a.b(8);
    }

    public /* synthetic */ c(List list, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? false : z10);
    }

    private final void D1(BaseViewHolder holder, boolean isPlaying) {
        holder.getView(R$id.tv_title_selected).setVisibility(isPlaying ? 0 : 8);
        holder.getView(R$id.tv_size_selected).setVisibility(isPlaying ? 0 : 8);
        holder.getView(R$id.tv_title).setVisibility(!isPlaying ? 0 : 8);
        holder.getView(R$id.tv_size).setVisibility(isPlaying ? 8 : 0);
        holder.itemView.setSelected(isPlaying);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DownloadBean item) {
        String sizeFormat;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (!this.isSeriesDialog) {
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            int i11 = this.screenWidth;
            int i12 = this.dp8;
            layoutParams.width = ((i11 - (i12 * 6)) / 3) - i12;
        }
        if (TextUtils.isEmpty(item.getSizeFormat())) {
            Long size = item.getSize();
            sizeFormat = size != null ? oh.b.a(size.longValue(), 1) : null;
        } else {
            sizeFormat = item.getSizeFormat();
        }
        ((TextView) holder.getView(R$id.tv_size)).setText(sizeFormat);
        ((TextView) holder.getView(R$id.tv_size_selected)).setText(sizeFormat);
        ((TextView) holder.getView(R$id.tv_title)).setText(item.getEpName());
        ((TextView) holder.getView(R$id.tv_title_selected)).setText(item.getEpName());
        D1(holder, item.isVideoPlaying());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, DownloadBean item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            D1(holder, ((Boolean) obj).booleanValue());
        }
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
