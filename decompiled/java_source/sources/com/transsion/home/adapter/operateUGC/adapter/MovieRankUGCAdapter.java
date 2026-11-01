package com.transsion.home.adapter.operateUGC.adapter;

import ak.k;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.q;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B+\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001fR\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001f¨\u0006#"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;IZ)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", WebConstants.FIELD_ITEM, "pos", "", "F1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "E1", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "itemWidth", "itemHeight", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MovieRankUGCAdapter extends BaseQuickAdapter {
    public static final int J = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemHeight;

    public MovieRankUGCAdapter(int i11, OperateItem operateItem, int i12, boolean z10) {
        super(i11, null, 2, null);
        this.operateItem = operateItem;
        this.tabId = i12;
        int i13 = z10 ? 3 : 2;
        int iA = a0.a(((((a0.b(RangesKt.i(y.e(), y.c())) - 12) - (i13 * 8)) - 12) * 1.0f) / i13);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * 0.56f);
    }

    public /* synthetic */ MovieRankUGCAdapter(int i11, OperateItem operateItem, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_ugc_movie_rank : i11, operateItem, i12, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(UGCVideo uGCVideo, MovieRankUGCAdapter movieRankUGCAdapter, int i11, View view) {
        Integer numValueOf = Integer.valueOf(movieRankUGCAdapter.tabId);
        OperateItem operateItem = movieRankUGCAdapter.operateItem;
        ov.c.h(uGCVideo, numValueOf, operateItem != null ? operateItem.getOpId() : null);
        movieRankUGCAdapter.E1(uGCVideo, i11);
    }

    private final void E1(UGCVideo item, int pos) {
        hl.d.a.g(hl.d.f64525c, this.tabId, pos, this.operateItem, item, null, 16, null);
    }

    private final void F1(UGCVideo item, int pos) {
        hl.d.a.e(hl.d.f64525c, this.tabId, pos, this.operateItem, item, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:46:0x012f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0147  */
    /* JADX WARN: Code duplicated, block: B:50:0x014d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0156  */
    /* JADX WARN: Code duplicated, block: B:54:0x015c  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x012f, please report this as an issue */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCContent item) {
        String strI;
        List listQ;
        String nickname;
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final int iE = k.e(getData(), item);
        z(holder, getItemViewType(iE));
        final UGCVideo video = item.getVideo();
        if (video == null) {
            return;
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.home_ugc_movie_rank_image);
        String str = "";
        if (shapeableImageView != null) {
            if (video.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new MovieRankUGCAdapter$convert$1$1(video, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = video.getCover();
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                Cover cover2 = video.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).m(this.itemWidth).d(shapeableImageView);
            }
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.home_ugc_movie_rank_title);
        if (textView != null) {
            textView.setText(video.getTitle());
        }
        holder.setText(R$id.home_ugc_movie_rank_corner, video.getCorner());
        ImageView imageView = (ImageView) holder.getViewOrNull(R$id.home_ugc_movie_rank_type_icon);
        if (imageView != null) {
            UGCVideoTypeKt.i(imageView, video, null, 4, null);
        }
        holder.setText(R$id.home_ugc_movie_rank_time_text, video.getTimeOrCount(getContext()));
        holder.setText(R$id.home_ugc_movie_rank_title, video.getTitle());
        if (video.isVerticalImmStyle()) {
            listQ = CollectionsKt.q("special_#shorts_icon", Utils.a().getString(R$string.ugc_video_shorts), j.c(video.getWatchNum(), getContext()));
        } else if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), false)) {
            UGCVideoCreator creator = video.getCreator();
            String nickname2 = creator != null ? creator.getNickname() : null;
            if (nickname2 == null || nickname2.length() == 0) {
                String strC = j.c(video.getWatchNum(), getContext());
                if (this.tabId == HomeTabId.UGC_Trending.getValue()) {
                    Long publishTime = video.getPublishTime();
                    strI = TimeUtilKt.j(publishTime != null ? publishTime.longValue() : 0L);
                } else {
                    Long publishTime2 = video.getPublishTime();
                    strI = TimeUtilKt.i(publishTime2 != null ? publishTime2.longValue() : 0L);
                }
                listQ = CollectionsKt.q(strC, strI);
            } else {
                String strC2 = j.c(video.getWatchNum(), getContext());
                UGCVideoCreator creator2 = video.getCreator();
                if (creator2 != null && (nickname = creator2.getNickname()) != null) {
                    str = nickname;
                }
                listQ = CollectionsKt.q(strC2, "special_#user_icon", str);
            }
        } else {
            String strC3 = j.c(video.getWatchNum(), getContext());
            if (this.tabId == HomeTabId.UGC_Trending.getValue()) {
                Long publishTime3 = video.getPublishTime();
                strI = TimeUtilKt.j(publishTime3 != null ? publishTime3.longValue() : 0L);
            } else {
                Long publishTime4 = video.getPublishTime();
                strI = TimeUtilKt.i(publishTime4 != null ? publishTime4.longValue() : 0L);
            }
            listQ = CollectionsKt.q(strC3, strI);
        }
        holder.setText(R$id.home_ugc_movie_rank_subtitle, q.e(listQ, getContext()));
        F1(video, iE);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.adapter.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieRankUGCAdapter.D1(video, this, iE, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
        ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolderY0.getViewOrNull(R$id.home_ugc_movie_rank_image);
        if (shapeableImageView != null) {
            shapeableImageView.getLayoutParams().width = this.itemWidth;
            shapeableImageView.getLayoutParams().height = this.itemHeight;
        }
        return baseViewHolderY0;
    }
}
