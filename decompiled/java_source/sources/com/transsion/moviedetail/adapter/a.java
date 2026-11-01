package com.transsion.moviedetail.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/moviedetail/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Staff;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "staffList", "<init>", "(Ljava/util/List;)V", "holder", "", RequestParameters.POSITION, "", "w0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Staff;)V", "F", "I", "screenWidth", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class a extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int screenWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(List<? extends Staff> staffList) {
        super(R$layout.adapter_crew, CollectionsKt.U0(staffList));
        Intrinsics.h(staffList, "staffList");
        this.screenWidth = y.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Staff item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) holder.getView(R$id.tv_staff_name);
        String name = item.getName();
        boolean z10 = true;
        textView.setVisibility(!(name == null || name.length() == 0) ? 0 : 8);
        textView.setText(item.getName());
        TextView textView2 = (TextView) holder.getView(R$id.tv_staff_job);
        String character = item.getCharacter();
        if (character != null && character.length() != 0) {
            z10 = false;
        }
        textView2.setVisibility(z10 ? 8 : 0);
        textView2.setText(item.getCharacter());
        ImageView imageView = (ImageView) holder.getView(R$id.iv_staff_avatar);
        int i11 = this.screenWidth / 4;
        ej.f.f61882a.m(getContext()).g(item.getAvatarUrl()).m(i11).c((i11 * 4) / 3).d(imageView);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: w0 */
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        Intrinsics.h(holder, "holder");
        super.onBindViewHolder(holder, position);
    }
}
