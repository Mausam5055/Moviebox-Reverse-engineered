package com.transsion.shorttv_pugc.ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.gslb.Utils;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000f2\u000e\u0010\u000e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/p;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;)V", "baseQuickAdapter", "Lr6/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class p extends BaseQuickAdapter implements r6.i {
    public p() {
        this(0, 1, null);
    }

    public p(int i11) {
        super(i11, null, 2, null);
    }

    public /* synthetic */ p(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.short_tv_tag_item : i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, ShorttvModel.UGCVideoHasTag item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.tv_tag, Utils.SEPARATOR + item.getTitle());
    }

    @Override // r6.i
    public r6.f b(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        return new r6.f(baseQuickAdapter);
    }
}
