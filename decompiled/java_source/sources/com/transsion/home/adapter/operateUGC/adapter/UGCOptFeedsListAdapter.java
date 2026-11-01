package com.transsion.home.adapter.operateUGC.adapter;

import ak.k;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.home.R$dimen;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/adapter/UGCOptFeedsListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "tabId", "<init>", "(Lcom/transsion/home/bean/OperateItem;I)V", "holder", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", WebConstants.FIELD_ITEM, "pos", "G1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "F1", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCOptFeedsListAdapter extends BaseQuickAdapter {
    public static final int H = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    public UGCOptFeedsListAdapter(OperateItem operateItem, int i11) {
        super(R$layout.item_ugc_feeds_list, null, 2, null);
        this.operateItem = operateItem;
        this.tabId = i11;
    }

    private final void C1(BaseViewHolder holder, UGCVideo ugcVideo) {
        RecyclerView recyclerView = (RecyclerView) holder.getViewOrNull(R$id.recyclerTag);
        if (recyclerView == null) {
            return;
        }
        List<UGCVideoHashTag> filteredHashTags = ugcVideo.getFilteredHashTags();
        List<UGCVideoHashTag> list = filteredHashTags;
        if (list == null || list.isEmpty()) {
            recyclerView.setAdapter(null);
            recyclerView.setVisibility(8);
            return;
        }
        recyclerView.setVisibility(0);
        if (recyclerView.getLayoutManager() == null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            recyclerView.setNestedScrollingEnabled(false);
        }
        recyclerView.setAdapter(new f(filteredHashTags));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(UGCVideo uGCVideo, UGCOptFeedsListAdapter uGCOptFeedsListAdapter, int i11, View view) {
        Integer numValueOf = Integer.valueOf(uGCOptFeedsListAdapter.tabId);
        OperateItem operateItem = uGCOptFeedsListAdapter.operateItem;
        ov.c.h(uGCVideo, numValueOf, operateItem != null ? operateItem.getOpId() : null);
        uGCOptFeedsListAdapter.F1(uGCVideo, i11);
    }

    private final void F1(UGCVideo item, int pos) {
        hl.d.a.g(hl.d.f64525c, this.tabId, pos, this.operateItem, item, null, 16, null);
    }

    private final void G1(UGCVideo item, int pos) {
        hl.d.a.e(hl.d.f64525c, this.tabId, pos, this.operateItem, item, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCContent item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final int iE = k.e(getData(), item);
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.bottomMargin = iE == CollectionsKt.n(getData()) ? 0 : holder.itemView.getContext().getResources().getDimensionPixelSize(R$dimen.dp_10);
            holder.itemView.setLayoutParams(marginLayoutParams);
        }
        z(holder, getItemViewType(iE));
        final UGCVideo video = item.getVideo();
        if (video == null) {
            return;
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.feedsListCover);
        if (shapeableImageView != null) {
            if (video.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new UGCOptFeedsListAdapter$convert$1$1(video, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = video.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                Cover cover2 = video.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).d(shapeableImageView);
            }
        }
        holder.setText(R$id.feedsListCorner, video.getCorner());
        int iE2 = UGCVideoTypeKt.e(video.getCategory());
        ImageView imageView = (ImageView) holder.getViewOrNull(R$id.feedsListTypeIcon);
        if (imageView != null) {
            imageView.setImageResource(iE2);
        }
        holder.setText(R$id.feedsListDuration, video.getTimeOrCount(getContext()));
        holder.setText(R$id.feedsListTitle, video.getTitle());
        C1(holder, video);
        ImageView imageView2 = (ImageView) holder.getViewOrNull(R$id.feedsListStatsIcon);
        if (imageView2 != null) {
            imageView2.setImageResource(iE2);
        }
        holder.setText(R$id.feedsListViews, j.c(video.getWatchNum(), getContext()));
        int i11 = R$id.feedsListTime;
        Long publishTime = video.getPublishTime();
        holder.setText(i11, TimeUtilKt.i(publishTime != null ? publishTime.longValue() : 0L));
        G1(video, iE);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.adapter.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCOptFeedsListAdapter.E1(video, this, iE, view);
            }
        });
    }
}
