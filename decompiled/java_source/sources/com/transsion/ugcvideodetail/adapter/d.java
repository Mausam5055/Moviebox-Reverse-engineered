package com.transsion.ugcvideodetail.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR*\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/transsion/ugcvideodetail/adapter/d;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "data", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "F", "I", "C1", "()I", "D1", "(I)V", "selectedIndex", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private int selectedIndex;

    /* JADX WARN: Multi-variable type inference failed */
    public d() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(List<String> data) {
        super(R$layout.item_ugc_imm_video_quality, data);
        Intrinsics.h(data, "data");
        this.selectedIndex = -1;
    }

    public /* synthetic */ d(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new ArrayList() : list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, String item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int adapterPosition = holder.getAdapterPosition();
        boolean z10 = adapterPosition == this.selectedIndex;
        GradientTextView gradientTextView = (GradientTextView) holder.getView(R$id.tvQuality);
        gradientTextView.setText(item);
        Context context = gradientTextView.getContext();
        if (z10) {
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start), androidx.core.content.b.getColor(context, R$color.brand_new_gradient_center), androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end));
        } else {
            int color = androidx.core.content.b.getColor(context, R$color.white_80);
            gradientTextView.setGradientColors(color, color, color);
        }
        holder.setVisible(R$id.vQualityLine, adapterPosition != getItemCount() - 1);
    }

    /* JADX INFO: renamed from: C1, reason: from getter */
    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void D1(int i11) {
        int i12 = this.selectedIndex;
        if (i12 == i11) {
            return;
        }
        this.selectedIndex = i11;
        if (i12 >= 0 && i12 < getItemCount()) {
            notifyItemChanged(i12);
        }
        if (i11 < 0 || i11 >= getItemCount()) {
            return;
        }
        notifyItemChanged(i11);
    }
}
