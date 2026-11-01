package com.transsion.member.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.bean.PointsHistoryItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/member/adapter/f;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/member/bean/PointsHistoryItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/member/bean/PointsHistoryItem;)V", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f extends BaseQuickAdapter implements r6.i {
    public static final int F = 8;

    public f() {
        this(0, 1, null);
    }

    public f(int i11) {
        super(i11, null, 2, null);
    }

    public /* synthetic */ f(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_points_history_layout : i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, PointsHistoryItem item) {
        Integer numV;
        Long lX;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int i11 = R$id.tvTime;
        String createTime = item.getCreateTime();
        holder.setText(i11, TimeUtilKt.e((createTime == null || (lX = StringsKt.x(createTime)) == null) ? 0L : lX.longValue()));
        holder.setText(R$id.tvDes, item.getRemarks());
        String coin = item.getCoin();
        int iIntValue = (coin == null || (numV = StringsKt.v(coin)) == null) ? 0 : numV.intValue();
        int i12 = R$id.tvCoin;
        String coin2 = item.getCoin();
        if (iIntValue > 0) {
            coin2 = "+" + coin2;
        }
        holder.setText(i12, coin2);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
