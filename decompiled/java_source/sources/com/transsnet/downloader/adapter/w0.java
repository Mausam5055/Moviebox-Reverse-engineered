package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsnet/downloader/adapter/w0;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "", "C1", "()[I", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class w0 extends BaseQuickAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(List<Subject> dataList) {
        super(R$layout.item_movie_rec_footview, dataList);
        Intrinsics.h(dataList, "dataList");
    }

    private final int[] C1() {
        int iA = com.blankj.utilcode.util.a0.a(6.0f);
        int iA2 = com.blankj.utilcode.util.a0.a(8.0f);
        int i11 = com.transsion.baseui.util.b.a(getContext()) ? 4 : 3;
        int iE = ((com.blankj.utilcode.util.y.e() - ((iA * 2) * i11)) - (iA2 * 2)) / i11;
        return new int[]{iE, (int) (iE * 1.3925234f)};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Subject item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int[] iArrC1 = C1();
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        boolean z10 = true;
        if (shapeableImageView != null) {
            ViewGroup.LayoutParams layoutParams = shapeableImageView.getLayoutParams();
            layoutParams.width = iArrC1[0];
            layoutParams.height = iArrC1[1];
            shapeableImageView.setLayoutParams(layoutParams);
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover cover2 = item.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).d(shapeableImageView);
        }
        holder.setText(R$id.tv_title, item.getTitle());
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getViewOrNull(R$id.icon_download);
        if (appCompatImageView != null) {
            if (ak.t.f652a.b()) {
                jg.c.g(appCompatImageView);
            } else {
                jg.c.k(appCompatImageView);
            }
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.tv_download_foryou_corner);
        if (textView != null) {
            textView.setText(item.getCorner());
        }
        if (textView != null) {
            String corner = item.getCorner();
            if (corner != null && corner.length() != 0) {
                z10 = false;
            }
            textView.setVisibility(z10 ? 8 : 0);
        }
    }
}
