package com.transsion.search_pugc.fragment.result.provider;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$plurals;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends BaseItemProvider implements t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ t f52429e;

    public c(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f52429e = reportable;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchResultItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (Intrinsics.c(item.getTopicType(), "UGC_COLLECTION")) {
            y(helper, item);
        } else {
            z(helper, item);
        }
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void a(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52429e.a(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void c(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52429e.c(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void d(SearchResultItem item, int i11) {
        Intrinsics.h(item, "item");
        this.f52429e.d(item, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void e(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52429e.e(ugcVideo, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return SearchType.UGC_VIDEO.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_common;
    }

    public final void y(BaseViewHolder helper, SearchResultItem item) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        UGCCollection collection = item.getCollection();
        if (collection == null || (videos = collection.getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) {
            return;
        }
        boolean zC = Intrinsics.c(uGCVideo.getCategory(), UGCVideoType.EDUCATION.getValue());
        boolean zC2 = Intrinsics.c(uGCVideo.getCategory(), UGCVideoType.SHORT_TV.getValue());
        ej.f.b bVarM = ej.f.f61882a.m(k());
        Cover cover = uGCVideo.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        Cover cover2 = uGCVideo.getCover();
        if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG.l(str).d((ImageView) helper.getView(R$id.iv_cover));
        int i11 = R$id.tv_title;
        String title = collection.getTitle();
        helper.setText(i11, title != null ? com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f52478h.a(k()).e()) : null);
        Integer videoNum = collection.getVideoNum();
        if (videoNum != null) {
            int iIntValue = videoNum.intValue();
            helper.setText(R$id.tv_view_resource_tag, k().getResources().getQuantityString(zC2 ? R$plurals.episodes_count_text : R$plurals.videos_count_text, iIntValue, Integer.valueOf(iIntValue)));
        }
        if (zC) {
            helper.setGone(R$id.iv_view_resource_tag, false);
        } else {
            UGCVideoTypeKt.i((ImageView) helper.getView(R$id.iv_view_resource_tag), uGCVideo, null, 4, null);
        }
        helper.setVisible(R$id.v_corner, false);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String watchNum = collection.getWatchNum();
        String strL = watchNum != null ? com.transsion.search_pugc.constant.a.l(watchNum) : null;
        spannableStringBuilder.append((CharSequence) (strL + " " + k().getString(R$string.views)));
        String string = k().getString(UGCVideoTypeKt.g(uGCVideo.getCategory()));
        Intrinsics.g(string, "getString(...)");
        helper.setText(R$id.tv_info, com.transsion.baseui.util.q.g(CollectionsKt.q(new com.transsion.baseui.util.k.b(string, Integer.valueOf(R$color.white_80)), new com.transsion.baseui.util.k.b(com.transsion.baseui.util.j.c(uGCVideo.getWatchNum(), k()), Integer.valueOf(R$color.white_60))), k(), false, 4, null));
        UGCVideoTypeKt.i((ImageView) helper.getView(R$id.ivInfoIcon), uGCVideo, null, 4, null);
    }

    public final void z(BaseViewHolder helper, SearchResultItem item) {
        String url;
        String watchNum;
        Long duration;
        String title;
        Cover cover;
        String thumbnail;
        Cover cover2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.ivInfoIcon);
        UGCVideo video = item.getVideo();
        if (video != null) {
            jg.c.k(appCompatImageView);
            UGCVideoTypeKt.i(appCompatImageView, video, null, 4, null);
        } else {
            jg.c.g(appCompatImageView);
        }
        ej.f.b bVarM = ej.f.f61882a.m(k());
        UGCVideo video2 = item.getVideo();
        String str = "";
        if (video2 == null || (cover2 = video2.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        UGCVideo video3 = item.getVideo();
        if (video3 != null && (cover = video3.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG.l(str).d((ImageView) helper.getView(R$id.iv_cover));
        int i11 = R$id.tv_title;
        UGCVideo video4 = item.getVideo();
        helper.setText(i11, (video4 == null || (title = video4.getTitle()) == null) ? null : com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f52478h.a(k()).e()));
        int i12 = R$id.tv_view_resource_tag;
        UGCVideo video5 = item.getVideo();
        helper.setText(i12, (video5 == null || (duration = video5.getDuration()) == null) ? null : com.transsion.search_pugc.constant.a.j(duration.longValue()));
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) helper.getView(R$id.iv_view_resource_tag);
        UGCVideo video6 = item.getVideo();
        appCompatImageView2.setVisibility(video6 != null ? video6.isVerticalImmStyle() : false ? 0 : 8);
        appCompatImageView2.setImageResource(R$drawable.ic_tag_ugc_shorts_search);
        int i13 = R$id.v_corner;
        UGCVideo video7 = item.getVideo();
        String corner = video7 != null ? video7.getCorner() : null;
        helper.setVisible(i13, !(corner == null || corner.length() == 0));
        int i14 = R$id.tv_view_resource_corner;
        UGCVideo video8 = item.getVideo();
        helper.setText(i14, video8 != null ? video8.getCorner() : null);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        UGCVideo video9 = item.getVideo();
        String strL = (video9 == null || (watchNum = video9.getWatchNum()) == null) ? null : com.transsion.search_pugc.constant.a.l(watchNum);
        spannableStringBuilder.append((CharSequence) (strL + " " + k().getString(R$string.views)));
        Context contextK = k();
        UGCVideo video10 = item.getVideo();
        String string = contextK.getString(UGCVideoTypeKt.g(video10 != null ? video10.getCategory() : null));
        Intrinsics.g(string, "getString(...)");
        com.transsion.baseui.util.k.b bVar = new com.transsion.baseui.util.k.b(string, Integer.valueOf(R$color.white_80));
        UGCVideo video11 = item.getVideo();
        helper.setText(R$id.tv_info, com.transsion.baseui.util.q.g(CollectionsKt.q(bVar, new com.transsion.baseui.util.k.b(com.transsion.baseui.util.j.c(video11 != null ? video11.getWatchNum() : null, k()), Integer.valueOf(R$color.white_60))), k(), false, 4, null));
    }
}
