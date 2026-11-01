package com.transsion.member.dialog;

import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.memberapi.MemberRights;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/member/dialog/l;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/memberapi/MemberRights;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "memberRights", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberRights;)V", "", "F", "I", "width", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class l extends BaseQuickAdapter {
    public static final int G = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int width;

    public l(List<MemberRights> list) {
        super(R$layout.item_dialog_fragment_member_guide_adapter_layout, list);
        this.width = com.blankj.utilcode.util.a0.a(36.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, MemberRights item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ej.f.f61882a.m(getContext()).g(item.getIcon()).i(R$color.black).m(this.width).c(this.width).d((AppCompatImageView) holder.getView(R$id.ivMemberRightIcon));
        holder.setText(R$id.tvMemberRightTitle, item.getDescription());
    }
}
