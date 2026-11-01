package com.transsion.home.adapter.operateUGC.provider;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.wrapperad.R$color;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class FeedsGridUGCProvider extends com.transsion.home.adapter.trending.provider.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44310f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f44311g = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.operateUGC.provider.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FeedsGridUGCProvider.I(this.f44355a);
        }
    });

    public FeedsGridUGCProvider(int i11, int i12) {
        this.f44309e = i12;
        this.f44310f = (com.blankj.utilcode.util.y.e() - dk.a.a(((i11 - 1) * 8) + 24.0f)) / i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(OperateItem operateItem, FeedsGridUGCProvider feedsGridUGCProvider, BaseViewHolder baseViewHolder, View view) {
        UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
        if (feedsUGCVideo != null) {
            Integer numValueOf = Integer.valueOf(feedsGridUGCProvider.f44309e);
            String opId = operateItem.getOpId();
            if (opId == null) {
                OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
                opId = originalOperateItem != null ? originalOperateItem.getOpId() : null;
            }
            ov.c.h(feedsUGCVideo, numValueOf, opId);
        }
        hl.d.f64525c.c(baseViewHolder.getLayoutPosition(), operateItem, feedsGridUGCProvider.f44309e);
    }

    private final hl.d H() {
        return (hl.d) this.f44311g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hl.d I(FeedsGridUGCProvider feedsGridUGCProvider) {
        return new hl.d(SubTabFragment.INSTANCE.a(feedsGridUGCProvider.f44309e));
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0144  */
    /* JADX WARN: Code duplicated, block: B:55:0x015a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0160  */
    /* JADX WARN: Code duplicated, block: B:58:0x0165  */
    /* JADX WARN: Code duplicated, block: B:60:0x016b  */
    /* JADX WARN: Code duplicated, block: B:62:0x0171  */
    /* JADX WARN: Code duplicated, block: B:63:0x0176  */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final OperateItem item) {
        String ugcVideoId;
        Long publishTime;
        long jLongValue;
        String strI;
        List listQ;
        Long publishTime2;
        long jLongValue2;
        String nickname;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        UGCVideo feedsUGCVideo = item.getFeedsUGCVideo();
        if (feedsUGCVideo == null || (ugcVideoId = feedsUGCVideo.getUgcVideoId()) == null || ugcVideoId.length() == 0) {
            return;
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.main_op_trending_grid_image);
        String str = "";
        if (shapeableImageView != null) {
            if (feedsUGCVideo.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new FeedsGridUGCProvider$convert$1$1(feedsUGCVideo, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = feedsUGCVideo.getCover();
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarM2 = bVarM.g(url).m(this.f44310f);
                Cover cover2 = feedsUGCVideo.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarM2.l(thumbnail).i(R$color.module_01).d(shapeableImageView);
            }
        }
        TextView textView = (TextView) helper.getViewOrNull(R$id.main_op_trending_grid_title);
        if (textView != null) {
            textView.setText(feedsUGCVideo.getTitle());
        }
        helper.setText(R$id.main_op_trending_grid_corner, feedsUGCVideo.getCorner());
        int i11 = this.f44309e;
        HomeTabId.Companion companion = HomeTabId.INSTANCE;
        if (i11 == companion.g()) {
            ImageView imageView = (ImageView) helper.getViewOrNull(R$id.main_op_trending_grid_type_icon);
            if (imageView != null) {
                UGCVideoTypeKt.i(imageView, feedsUGCVideo, null, 4, null);
            }
        } else {
            helper.setGone(R$id.main_op_trending_grid_type_icon, true);
        }
        helper.setText(R$id.main_op_trending_grid_time_text, feedsUGCVideo.getTimeOrCount(k()));
        helper.setText(R$id.main_op_trending_grid_title, feedsUGCVideo.getTitle());
        if (feedsUGCVideo.isVerticalImmStyle()) {
            listQ = CollectionsKt.q("special_#shorts_icon", Utils.a().getString(R$string.ugc_video_shorts), com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k()));
        } else if (companion.h(Integer.valueOf(this.f44309e), false)) {
            UGCVideoCreator creator = feedsUGCVideo.getCreator();
            String nickname2 = creator != null ? creator.getNickname() : null;
            if (nickname2 == null || nickname2.length() == 0) {
                String strC = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
                if (this.f44309e == HomeTabId.UGC_Trending.getValue()) {
                    publishTime2 = feedsUGCVideo.getPublishTime();
                    if (publishTime2 != null) {
                        jLongValue2 = publishTime2.longValue();
                    } else {
                        jLongValue2 = 0;
                    }
                    strI = TimeUtilKt.j(jLongValue2);
                } else {
                    publishTime = feedsUGCVideo.getPublishTime();
                    if (publishTime != null) {
                        jLongValue = publishTime.longValue();
                    } else {
                        jLongValue = 0;
                    }
                    strI = TimeUtilKt.i(jLongValue);
                }
                listQ = CollectionsKt.q(strC, strI);
            } else {
                String strC2 = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
                UGCVideoCreator creator2 = feedsUGCVideo.getCreator();
                if (creator2 != null && (nickname = creator2.getNickname()) != null) {
                    str = nickname;
                }
                listQ = CollectionsKt.q(strC2, "special_#user_icon", str);
            }
        } else {
            String strC3 = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
            if (this.f44309e == HomeTabId.UGC_Trending.getValue()) {
                publishTime2 = feedsUGCVideo.getPublishTime();
                if (publishTime2 != null) {
                    jLongValue2 = publishTime2.longValue();
                } else {
                    jLongValue2 = 0;
                }
                strI = TimeUtilKt.j(jLongValue2);
            } else {
                publishTime = feedsUGCVideo.getPublishTime();
                if (publishTime != null) {
                    jLongValue = publishTime.longValue();
                } else {
                    jLongValue = 0;
                }
                strI = TimeUtilKt.i(jLongValue);
            }
            listQ = CollectionsKt.q(strC3, strI);
        }
        helper.setText(R$id.main_op_trending_grid_subtitle, com.transsion.baseui.util.q.e(listQ, k()));
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeedsGridUGCProvider.G(item, this, helper, view);
            }
        });
        if (this.f44309e != HomeTabId.UGC_Trending.getValue()) {
            H().a(item, helper.getLayoutPosition(), 0L);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.TRENDING_FEES_GRID.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_item_grid;
    }
}
