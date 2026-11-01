package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsnet/downloader/adapter/v0;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "datas", "<init>", "(Ljava/util/List;)V", "holder", "", RequestParameters.POSITION, "", "w0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class v0 extends BaseQuickAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(List<Subject> datas) {
        super(R$layout.item_movie_rec, datas);
        Intrinsics.h(datas, "datas");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, Subject item) {
        boolean z10;
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
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
        holder.setText(R$id.tv_score, item.getImdbRate());
        holder.setText(R$id.tv_title, item.getTitle());
        DownloadView downloadView = (DownloadView) holder.getViewOrNull(R$id.download);
        if (downloadView != null) {
            if (ak.t.f652a.b()) {
                downloadView.setShowPlayType();
            } else if (Intrinsics.c(item.getHasResource(), Boolean.TRUE)) {
                jg.c.k(downloadView);
                ResourceDetectors resourceDetector = item.getResourceDetector();
                if (resourceDetector != null) {
                    String subjectId = item.getSubjectId();
                    String resourceId = resourceDetector.getResourceId();
                    Integer type = resourceDetector.getType();
                    if (type != null) {
                        z10 = type.intValue() == 1;
                    }
                    DownloadView.setShowType$default(downloadView, subjectId, resourceId, Boolean.valueOf(z10), false, 0, 24, null);
                }
            } else {
                jg.c.g(downloadView);
            }
        }
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getViewOrNull(R$id.icon_download);
        if (appCompatImageView != null) {
            if (ak.t.f652a.b()) {
                jg.c.g(appCompatImageView);
            } else {
                jg.c.k(appCompatImageView);
            }
        }
        ((CornerTextView) holder.getView(R$id.tv_download_corner)).setTextWithType(item.getCorner(), item.getSubjectType());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: w0 */
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        Intrinsics.h(holder, "holder");
        super.onBindViewHolder(holder, position);
        ConstraintLayout constraintLayout = (ConstraintLayout) holder.getViewOrNull(R$id.item);
        if (constraintLayout != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            RecyclerView.n nVar = (RecyclerView.n) layoutParams;
            if (position == 0) {
                nVar.setMarginStart(com.blankj.utilcode.util.a0.a(16.0f));
                nVar.setMarginEnd(0);
            } else if (position == getItemCount() - 1) {
                nVar.setMarginStart(com.blankj.utilcode.util.a0.a(8.0f));
                nVar.setMarginEnd(com.blankj.utilcode.util.a0.a(16.0f));
            } else {
                nVar.setMarginStart(com.blankj.utilcode.util.a0.a(8.0f));
                nVar.setMarginEnd(0);
            }
        }
    }
}
