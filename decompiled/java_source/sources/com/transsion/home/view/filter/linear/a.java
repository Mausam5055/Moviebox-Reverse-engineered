package com.transsion.home.view.filter.linear;

import android.graphics.Typeface;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/home/view/filter/linear/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Ltl/a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "", "datas", "<init>", "(ILjava/util/List;)V", "holder", RequestParameters.POSITION, "", "w0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ltl/a;)V", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseQuickAdapter {
    public static final int F = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int i11, List<tl.a> datas) {
        super(i11, datas);
        Intrinsics.h(datas, "datas");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, tl.a item) {
        Typeface typefaceDefaultFromStyle;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) holder.getView(R$id.filter_item_name);
        textView.setText(item.a());
        if (item.d()) {
            textView.setBackgroundResource(R$drawable.bg_selected_filter_item);
            textView.setTextColor(androidx.core.content.b.getColor(textView.getContext(), R$color.text_01));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(1);
        } else {
            textView.setBackgroundResource(R$color.transparent);
            textView.setTextColor(androidx.core.content.b.getColor(textView.getContext(), R$color.text_02));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(0);
        }
        textView.setTypeface(typefaceDefaultFromStyle);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: w0 */
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        Intrinsics.h(holder, "holder");
        super.onBindViewHolder(holder, position);
        ConstraintLayout constraintLayout = (ConstraintLayout) holder.getView(R$id.root);
        int iA = a0.a(6.0f);
        if (position == 0) {
            constraintLayout.setPaddingRelative(a0.a(12.0f), iA, 0, iA);
        } else if (position == getItemCount() - 1) {
            constraintLayout.setPaddingRelative(a0.a(10.0f), iA, a0.a(12.0f), iA);
        } else {
            constraintLayout.setPaddingRelative(a0.a(10.0f), iA, 0, iA);
        }
    }
}
