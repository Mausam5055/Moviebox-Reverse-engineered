package com.tn.tranpay.adapter;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.tranpay.R$drawable;
import com.tn.lib.tranpay.R$id;
import com.tn.lib.tranpay.R$layout;
import com.tn.tranpay.bean.MediumInputBean;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010JI\u0010\u0018\u001a\u00020\u000e2:\u0010\u0017\u001a6\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u000e0\u0011j\u0002`\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"RN\u0010\u0017\u001a:\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0011j\u0004\u0018\u0001`\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/tn/tranpay/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/tn/tranpay/bean/MediumInputBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "", "canShowFrequentlyTag", "", "usedMethodCode", "<init>", "(Ljava/util/List;ZLjava/lang/String;)V", "holder", WebConstants.FIELD_ITEM, "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/tn/tranpay/bean/MediumInputBean;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/tn/tranpay/adapter/PayMethodCallback;", "clickCallback", "E1", "(Lkotlin/jvm/functions/Function2;)V", "", "getItemCount", "()I", "F", "Z", "G", "Ljava/lang/String;", "H", "Lcom/tn/tranpay/bean/MediumInputBean;", "info", "I", "Lkotlin/jvm/functions/Function2;", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final boolean canShowFrequentlyTag;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final String usedMethodCode;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private MediumInputBean info;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private Function2<? super MediumInputBean, ? super View, Unit> clickCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List<MediumInputBean> dataList, boolean z10, String str) {
        super(R$layout.tran_item_pay_method, dataList);
        Intrinsics.h(dataList, "dataList");
        this.canShowFrequentlyTag = z10;
        this.usedMethodCode = str;
    }

    public /* synthetic */ b(List list, boolean z10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, z10, (i11 & 4) != 0 ? null : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(b this$0, MediumInputBean item, BaseViewHolder holder, View view) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(item, "$item");
        Intrinsics.h(holder, "$holder");
        this$0.info = item;
        Function2<? super MediumInputBean, ? super View, Unit> function2 = this$0.clickCallback;
        if (function2 != null) {
            View view2 = holder.itemView;
            Intrinsics.g(view2, "holder.itemView");
            function2.invoke(item, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(final BaseViewHolder holder, final MediumInputBean item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((AppCompatTextView) holder.getView(R$id.iv_title)).setText(item.getName());
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.iv_icon);
        Glide.with(appCompatImageView.getContext()).load2(item.getLogo()).placeholder(R$drawable.placeholder).transition(DrawableTransitionOptions.withCrossFade()).into(appCompatImageView);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.tranpay.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.D1(this.f41519a, item, holder, view);
            }
        });
        View view = holder.getView(R$id.iv_line);
        if (holder.getBindingAdapterPosition() == getData().size() - 1) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getView(R$id.iv_tag_recommend);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) holder.getView(R$id.iv_tag_frequently);
        if (this.usedMethodCode == null || !this.canShowFrequentlyTag) {
            if (holder.getBindingAdapterPosition() == 0) {
                appCompatTextView.setVisibility(0);
            } else {
                appCompatTextView.setVisibility(8);
            }
            appCompatTextView2.setVisibility(8);
            return;
        }
        if (Intrinsics.c(item.getCode(), this.usedMethodCode)) {
            appCompatTextView2.setVisibility(0);
        } else {
            appCompatTextView2.setVisibility(8);
        }
        appCompatTextView.setVisibility(8);
    }

    public final void E1(Function2<? super MediumInputBean, ? super View, Unit> clickCallback) {
        Intrinsics.h(clickCallback, "clickCallback");
        this.clickCallback = clickCallback;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getData().size();
    }
}
