package com.transsion.member.adapter;

import android.content.Context;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.memberapi.MemberRight;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/member/adapter/g;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/memberapi/MemberRight;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberRight;)V", "", "getItemCount", "()I", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class g extends BaseQuickAdapter {
    public static final int F = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(List<MemberRight> dataList) {
        super(R$layout.item_product_info, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, MemberRight item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((AppCompatTextView) holder.getView(R$id.iv_item_title)).setText(item.getDescription());
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getViewOrNull(R$id.iv_item_image);
        if (appCompatImageView != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = appCompatImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(item.getIcon()).i(R$color.black).m(36).c(36).d(appCompatImageView);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getData().size();
    }
}
