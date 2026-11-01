package com.transsion.member.adapter;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.hisavana.sdk.common.util.n0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$string;
import com.transsion.memberapi.SkuItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.math.BigDecimal;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010JI\u0010\u0018\u001a\u00020\n2:\u0010\u0017\u001a6\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\n0\u0011j\u0002`\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%RN\u0010\u0017\u001a:\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010.\u001a\u00020(2\u0006\u0010)\u001a\u00020(8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/transsion/member/adapter/i;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/memberapi/SkuItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "", "points", "", "G1", "(I)V", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuItem;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/member/adapter/SkuItemCallback;", "clickCallback", "F1", "(Lkotlin/jvm/functions/Function2;)V", "getItemCount", "()I", "Landroidx/appcompat/widget/AppCompatTextView;", "F", "Landroidx/appcompat/widget/AppCompatTextView;", "redeemBtn", "Landroidx/constraintlayout/widget/ConstraintLayout;", "G", "Landroidx/constraintlayout/widget/ConstraintLayout;", "redeemContainer", "H", "Lcom/transsion/memberapi/SkuItem;", "I", "Lkotlin/jvm/functions/Function2;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "J", "Z", "E1", "(Z)V", "canRedeem", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class i extends BaseQuickAdapter {
    public static final int K = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private AppCompatTextView redeemBtn;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private ConstraintLayout redeemContainer;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private SkuItem item;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private Function2<? super SkuItem, ? super View, Unit> clickCallback;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private boolean canRedeem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(List<SkuItem> dataList) {
        super(R$layout.item_redeem, dataList);
        Intrinsics.h(dataList, "dataList");
        this.canRedeem = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(i iVar, SkuItem skuItem, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Should redeem", false, 2, null);
        Function2<? super SkuItem, ? super View, Unit> function2 = iVar.clickCallback;
        if (function2 != null) {
            Intrinsics.e(view);
            function2.invoke(skuItem, view);
        }
    }

    private final void E1(boolean z10) {
        ConstraintLayout constraintLayout = this.redeemContainer;
        if (constraintLayout != null) {
            constraintLayout.setAlpha(z10 ? 1.0f : 0.4f);
        }
        AppCompatTextView appCompatTextView = this.redeemBtn;
        if (appCompatTextView != null) {
            appCompatTextView.setEnabled(z10);
        }
        this.canRedeem = z10;
    }

    private final void G1(int points) {
        SkuItem skuItem = this.item;
        E1((skuItem != null ? skuItem.getPrice() : 0.0d) <= ((double) points));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final SkuItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getView(R$id.title);
        appCompatTextView.setText(appCompatTextView.getContext().getString(R$string.member_sku_set_title, item.getDurationCount(), item.getDurationUnitDesc()));
        ((AppCompatTextView) holder.getView(R$id.price)).setText(n0.a(new BigDecimal(String.valueOf(item.getPrice()))).toPlainString());
        this.redeemBtn = (AppCompatTextView) holder.getView(R$id.btn_redeem);
        this.redeemContainer = (ConstraintLayout) holder.getView(R$id.iv_redeem_container);
        this.item = item;
        Integer userPoints = item.getUserPoints();
        G1(userPoints != null ? userPoints.intValue() : 0);
        AppCompatTextView appCompatTextView2 = this.redeemBtn;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.adapter.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.D1(this.f46420a, item, view);
                }
            });
        }
    }

    public final void F1(Function2<? super SkuItem, ? super View, Unit> clickCallback) {
        Intrinsics.h(clickCallback, "clickCallback");
        this.clickCallback = clickCallback;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getData().size();
    }
}
