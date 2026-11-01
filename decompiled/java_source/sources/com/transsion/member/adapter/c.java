package com.transsion.member.adapter;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.member.R$drawable;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J?\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/transsion/member/adapter/c;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/member/h;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "Landroid/widget/LinearLayout;", "container", "Landroid/widget/ImageView;", "iconView", "Landroidx/appcompat/widget/AppCompatTextView;", "textView", "Lcom/transsion/member/i;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "isBasic", "", RequestParameters.POSITION, "", "C1", "(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/member/i;ZI)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "F1", "(Landroid/view/View;ZI)V", "holder", "G1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", WebConstants.FIELD_ITEM, "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/member/h;)V", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class c extends BaseQuickAdapter {
    public static final int F = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(List<com.transsion.member.h> dataList) {
        super(R$layout.item_member_feature, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    private final void C1(LinearLayout container, ImageView iconView, AppCompatTextView textView, com.transsion.member.i value, boolean isBasic, int position) {
        F1(container, isBasic, position);
        if (Intrinsics.c(value, com.transsion.member.i.b.f46581b)) {
            iconView.setVisibility(0);
            textView.setVisibility(8);
            iconView.setImageResource(R$mipmap.icon_feature_fail);
        } else if (Intrinsics.c(value, com.transsion.member.i.d.f46583b)) {
            iconView.setVisibility(0);
            textView.setVisibility(8);
            iconView.setImageResource(isBasic ? R$mipmap.icon_feature_basic_support : R$mipmap.icon_feature_pro_support);
        } else {
            if (!(value instanceof com.transsion.member.i.c)) {
                throw new NoWhenBranchMatchedException();
            }
            iconView.setVisibility(8);
            textView.setVisibility(0);
            textView.setText(String.valueOf(((com.transsion.member.i.c) value).a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(com.transsion.member.h hVar, View view) {
        if (TextUtils.isEmpty(hVar.e())) {
            return;
        }
        ak.k.g(hVar.e(), "");
    }

    private final void F1(View view, boolean isBasic, int position) {
        if (position == getItemCount() - 1) {
            view.setBackgroundResource(isBasic ? R$drawable.bg_feature_basic_btm : R$drawable.bg_feature_pro_btm);
        } else {
            view.setBackgroundResource(isBasic ? R$drawable.bg_feature_basic_mid : R$drawable.bg_feature_pro_mid);
        }
    }

    private final void G1(BaseViewHolder holder, int position) {
        int iA = a0.a(12.0f);
        int iA2 = a0.a(16.0f);
        LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.layout_info);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        LinearLayout linearLayout2 = (LinearLayout) holder.getView(R$id.fl_basic_value);
        LinearLayout linearLayout3 = (LinearLayout) holder.getView(R$id.fl_pro_value);
        if (position == getItemCount() - 1) {
            layoutParams2.bottomMargin = iA;
            linearLayout.requestLayout();
            linearLayout2.setPadding(0, iA2, 0, iA);
            linearLayout3.setPadding(0, iA2, 0, iA);
            return;
        }
        layoutParams2.bottomMargin = 0;
        linearLayout.requestLayout();
        linearLayout2.setPadding(0, iA2, 0, 0);
        linearLayout3.setPadding(0, iA2, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final com.transsion.member.h item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((AppCompatTextView) holder.getView(R$id.tv_feature_name)).setText(item.c());
        holder.getView(R$id.iv_feature_question).setVisibility(item.e().length() > 0 ? 0 : 8);
        ej.f.f61882a.m(getContext()).g(item.b()).d((ImageView) holder.getView(R$id.iv_feature_icon));
        C1((LinearLayout) holder.getView(R$id.fl_basic_value), (ImageView) holder.getView(R$id.iv_basic_value), (AppCompatTextView) holder.getView(R$id.tv_basic_value), item.a(), true, holder.getAbsoluteAdapterPosition());
        C1((LinearLayout) holder.getView(R$id.fl_pro_value), (ImageView) holder.getView(R$id.iv_pro_value), (AppCompatTextView) holder.getView(R$id.tv_pro_value), item.d(), false, holder.getAbsoluteAdapterPosition());
        G1(holder, holder.getAbsoluteAdapterPosition());
        ((ImageView) holder.getView(R$id.iv_feature_question)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.adapter.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.E1(item, view);
            }
        });
    }
}
