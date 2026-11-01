package com.transsion.usercenter;

import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/g;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "followType", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "F", "I", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class g extends BaseQuickAdapter implements r6.i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int followType;

    public g(int i11) {
        super(R$layout.adapter_item_follow, null, 2, null);
        this.followType = i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, String item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (this.followType == 1) {
            TextView textView = (TextView) holder.getView(R$id.btnFollow);
            textView.setText(holder.itemView.getContext().getString(R$string.user_center_follow_following));
            textView.setTextColor(androidx.core.content.b.getColor(holder.itemView.getContext(), com.transsion.baseui.R$color.base_color_white));
            textView.setBackgroundResource(R$drawable.btn_bg_following);
            return;
        }
        TextView textView2 = (TextView) holder.getView(R$id.btnFollow);
        textView2.setText(holder.itemView.getContext().getString(R$string.user_center_follow_followers));
        textView2.setTextColor(androidx.core.content.b.getColor(holder.itemView.getContext(), com.transsion.baseui.R$color.base_color_333333));
        textView2.setBackgroundResource(R$drawable.btn_bg_followers);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
