package com.transsion.commercialization.aha.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.TnTextView;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/commercialization/aha/adapter/d;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/bean/AhaGameAllGames;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "datas", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V", "", "F", "I", "itemWidth", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(List<AhaGameAllGames> datas) {
        super(R$layout.adapter_people_playing, datas);
        Intrinsics.h(datas, "datas");
        this.itemWidth = (Math.min(y.e(), y.c()) - a0.a(56.0f)) / 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, AhaGameAllGames item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) holder.getViewOrNull(R$id.item_root);
        if (linearLayoutCompat != null) {
            ViewGroup.LayoutParams layoutParams = linearLayoutCompat.getLayoutParams();
            layoutParams.width = this.itemWidth;
            layoutParams.height = -2;
            linearLayoutCompat.setLayoutParams(layoutParams);
        }
        TnTextView tnTextView = (TnTextView) holder.getViewOrNull(R$id.tv_name);
        if (tnTextView != null) {
            tnTextView.setTextWithString(item.getName());
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            ViewGroup.LayoutParams layoutParams2 = shapeableImageView.getLayoutParams();
            int i11 = this.itemWidth;
            layoutParams2.width = i11;
            layoutParams2.height = i11;
            shapeableImageView.setLayoutParams(layoutParams2);
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            String iconPictureLink = item.getIconPictureLink();
            if (iconPictureLink == null) {
                iconPictureLink = "";
            }
            bVarM.g(iconPictureLink).m(this.itemWidth).c(this.itemWidth).d(shapeableImageView);
        }
    }
}
