package com.transsion.member.adapter;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.hisavana.sdk.common.util.n0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$string;
import com.transsion.member.widget.StrokeLinearLayout;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MembershipDetailType;
import com.transsion.memberapi.SkuCategory;
import com.transsion.memberapi.SkuItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.math.BigDecimal;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014JI\u0010\u001c\u001a\u00020\n2:\u0010\u001b\u001a6\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\n0\u0015j\u0002`\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)RN\u0010\u001b\u001a:\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\n\u0018\u00010\u0015j\u0004\u0018\u0001`\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*R$\u00104\u001a\u00020.2\u0006\u0010/\u001a\u00020.8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b0\u00101\"\u0004\b2\u00103¨\u00065"}, d2 = {"Lcom/transsion/member/adapter/k;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/memberapi/SkuItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "Lcom/transsion/memberapi/MemberDetail;", "detail", "", "H1", "(Lcom/transsion/memberapi/MemberDetail;)V", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuItem;)V", "", "defaultSelectedPosition", "G1", "(I)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/member/adapter/SkuItemCallback;", "clickCallback", "F1", "(Lkotlin/jvm/functions/Function2;)V", "getItemCount", "()I", "Landroidx/appcompat/widget/AppCompatTextView;", "F", "Landroidx/appcompat/widget/AppCompatTextView;", "redeemBtn", "Landroidx/constraintlayout/widget/ConstraintLayout;", "G", "Landroidx/constraintlayout/widget/ConstraintLayout;", "redeemContainer", "H", "Lcom/transsion/memberapi/SkuItem;", "I", "Lkotlin/jvm/functions/Function2;", "J", "selectedPosition", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "K", "Z", "E1", "(Z)V", "canRedeem", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class k extends BaseQuickAdapter {
    public static final int L = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private AppCompatTextView redeemBtn;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private ConstraintLayout redeemContainer;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private SkuItem item;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private Function2<? super SkuItem, ? super View, Unit> clickCallback;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private int selectedPosition;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean canRedeem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(List<SkuItem> dataList) {
        super(R$layout.item_sku_new, dataList);
        Intrinsics.h(dataList, "dataList");
        this.selectedPosition = -1;
        this.canRedeem = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(k kVar, BaseViewHolder baseViewHolder, SkuItem skuItem, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Should buy now", false, 2, null);
        int i11 = kVar.selectedPosition;
        int adapterPosition = baseViewHolder.getAdapterPosition();
        kVar.selectedPosition = adapterPosition;
        if (i11 != adapterPosition) {
            kVar.notifyItemChanged(i11);
        }
        kVar.notifyItemChanged(kVar.selectedPosition);
        Function2<? super SkuItem, ? super View, Unit> function2 = kVar.clickCallback;
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

    private final void H1(MemberDetail detail) {
        boolean z10 = true;
        if (detail != null && MembershipDetailType.INSTANCE.a(detail.getMemberInfo()) == MembershipDetailType.SUBSCRIPTION_MEMBER) {
            SkuItem skuItem = this.item;
            if (Intrinsics.c(skuItem != null ? skuItem.getCategory() : null, SkuCategory.AUTO_RENEW.getValue())) {
                z10 = false;
            }
        }
        E1(z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(final BaseViewHolder holder, final SkuItem item) {
        Application applicationA;
        int i11;
        Application applicationA2;
        int i12;
        Application applicationA3;
        int i13;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getView(R$id.title);
        appCompatTextView.setText(appCompatTextView.getContext().getString(R$string.member_sku_set_title, item.getDurationCount(), item.getDurationUnitDesc()));
        if (holder.getAbsoluteAdapterPosition() == this.selectedPosition) {
            applicationA = Utils.a();
            i11 = R$color.yellow_dark_90;
        } else {
            applicationA = Utils.a();
            i11 = R$color.white;
        }
        appCompatTextView.setTextColor(applicationA.getColor(i11));
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) holder.getView(R$id.price);
        appCompatTextView2.setText(item.getCurrencySymbol() + n0.a(new BigDecimal(String.valueOf(item.getPrice()))).toPlainString());
        if (holder.getAbsoluteAdapterPosition() == this.selectedPosition) {
            applicationA2 = Utils.a();
            i12 = R$color.yellow_dark_90;
        } else {
            applicationA2 = Utils.a();
            i12 = R$color.white;
        }
        appCompatTextView2.setTextColor(applicationA2.getColor(i12));
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) holder.getView(R$id.tv_per_month_price);
        int price = (StringsKt.F(item.getDuration(), "y", true) || StringsKt.F(item.getDuration(), "m", true)) ? (int) (item.getPrice() / ((double) Integer.parseInt(item.getDurationCount()))) : 0;
        if (price != 0) {
            String str = item.getCurrencySymbol() + n0.a(new BigDecimal(String.valueOf(price))).toPlainString() + " / Mon";
            appCompatTextView3.setVisibility(0);
            appCompatTextView3.setText(str);
        } else {
            appCompatTextView3.setVisibility(8);
        }
        if (holder.getAbsoluteAdapterPosition() == this.selectedPosition) {
            applicationA3 = Utils.a();
            i13 = R$color.yellow_dark_90;
        } else {
            applicationA3 = Utils.a();
            i13 = R$color.white;
        }
        appCompatTextView3.setTextColor(applicationA3.getColor(i13));
        StrokeLinearLayout strokeLinearLayout = (StrokeLinearLayout) holder.getView(R$id.sku_new_root);
        strokeLinearLayout.setSelected(holder.getAdapterPosition() == this.selectedPosition);
        strokeLinearLayout.setStrokeWidth(strokeLinearLayout.isSelected() ? dk.a.b(2) : dk.a.b(1));
        strokeLinearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.adapter.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.D1(this.f46422a, holder, item, view);
            }
        });
        LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.hot_container);
        String hotIcon = item.getHotIcon();
        if (hotIcon == null || hotIcon.length() == 0) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            ImageView imageView = (ImageView) holder.getView(R$id.iv_hot_icon);
            ej.f.a aVar = ej.f.f61882a;
            Context context = linearLayout.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(item.getHotIcon()).i(R$drawable.ic_hot_white).d(imageView);
        }
        int iB = dk.a.b(linearLayout.getVisibility() == 0 ? 10 : 28);
        ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.topMargin = iB;
            appCompatTextView.setLayoutParams(layoutParams2);
        }
        this.item = item;
        H1(item.getMemberDetail());
    }

    public final void F1(Function2<? super SkuItem, ? super View, Unit> clickCallback) {
        Intrinsics.h(clickCallback, "clickCallback");
        this.clickCallback = clickCallback;
    }

    public final void G1(int defaultSelectedPosition) {
        this.selectedPosition = defaultSelectedPosition;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getData().size();
    }
}
