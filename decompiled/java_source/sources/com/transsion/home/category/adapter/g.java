package com.transsion.home.category.adapter;

import ak.t;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f44847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44848f;

    public g(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f44847e = pageName;
        this.f44848f = z10;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_play_list_music;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, CategoryItemBean item) {
        List<Object> data;
        ResourceDetectors resourceDetector;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject subject = item.getSubject();
        if (subject != null) {
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            int i11 = 0;
            int iG0 = baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.g0(item) : 0;
            AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
            if (appCompatTextView != null) {
                appCompatTextView.setText(subject.getTitle());
            }
            ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
            if (shapeableImageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = subject.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                Cover cover2 = subject.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).d(shapeableImageView);
            }
            TextView textView = (TextView) helper.getViewOrNull(R$id.tvRankNum);
            if (textView != null) {
                textView.setVisibility(this.f44848f ? 0 : 8);
                if (this.f44848f) {
                    int i12 = iG0 + 1;
                    textView.setText(String.valueOf(i12));
                    textView.setTextSize(i12 > 99 ? 14.0f : i12 > 9 ? 18.0f : 20.0f);
                }
            }
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                downloadView.setPageFrom(this.f44847e);
                if (t.f652a.b()) {
                    jg.c.k(downloadView);
                    downloadView.setShowPlayType();
                } else {
                    Subject subject2 = item.getSubject();
                    if (subject2 != null ? Intrinsics.c(subject2.getHasResource(), Boolean.TRUE) : false) {
                        DownloadView downloadView2 = (DownloadView) helper.getViewOrNull(R$id.ll_download);
                        if (downloadView2 != null) {
                            jg.c.k(downloadView2);
                            Subject subject3 = item.getSubject();
                            if (subject3 != null && (resourceDetector = subject3.getResourceDetector()) != null) {
                                Subject subject4 = item.getSubject();
                                String subjectId = subject4 != null ? subject4.getSubjectId() : null;
                                String resourceId = resourceDetector.getResourceId();
                                Integer type = resourceDetector.getType();
                                DownloadView.setShowType$default(downloadView2, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
                            }
                        }
                    } else {
                        helper.setGone(R$id.ll_download, true);
                    }
                }
            }
            if (iG0 == 0) {
                View viewOrNull = helper.getViewOrNull(R$id.divider);
                if (viewOrNull != null) {
                    jg.c.k(viewOrNull);
                }
                View viewOrNull2 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull2 != null) {
                    jg.c.k(viewOrNull2);
                }
                View viewOrNull3 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull3 != null) {
                    viewOrNull3.setBackgroundResource(R$drawable.bg_category_first_item);
                }
            } else {
                View viewOrNull4 = helper.getViewOrNull(R$id.divider);
                if (viewOrNull4 != null) {
                    jg.c.g(viewOrNull4);
                }
                View viewOrNull5 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull5 != null) {
                    jg.c.g(viewOrNull5);
                }
                View viewOrNull6 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull6 != null) {
                    viewOrNull6.setBackgroundColor(androidx.core.content.b.getColor(k(), R$color.bg_01));
                }
            }
            BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
            if (baseProviderMultiAdapterG2 != null && (data = baseProviderMultiAdapterG2.getData()) != null) {
                for (Object obj : data) {
                    int i13 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    if (i11 < iG0) {
                        subject.getNonAdDelegate();
                    }
                    i11 = i13;
                }
            }
            ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(subject.getCorner(), subject.getSubjectType());
        }
    }
}
