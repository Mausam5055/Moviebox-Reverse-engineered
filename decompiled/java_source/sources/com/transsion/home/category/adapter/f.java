package com.transsion.home.category.adapter;

import ak.t;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
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
import com.transsion.home.R$mipmap;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f44846e;

    public f(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f44846e = pageName;
    }

    private final void z(BaseViewHolder baseViewHolder, int i11) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getViewOrNull(R$id.iv_tag);
        if (appCompatImageView != null) {
            if (i11 == 1) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_01);
                AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView != null) {
                    jg.c.g(appCompatTextView);
                    return;
                }
                return;
            }
            if (i11 == 2) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_02);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView2 != null) {
                    jg.c.g(appCompatTextView2);
                    return;
                }
                return;
            }
            if (i11 == 3) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_03);
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView3 != null) {
                    jg.c.g(appCompatTextView3);
                    return;
                }
                return;
            }
            appCompatImageView.setImageResource(R$mipmap.ic_rank_defalut);
            appCompatImageView.setRotationY(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? 180.0f : 0.0f);
            AppCompatTextView appCompatTextView4 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
            if (appCompatTextView4 != null) {
                jg.c.k(appCompatTextView4);
                StringBuilder sb2 = new StringBuilder();
                if (i11 < 10) {
                    sb2.append("0");
                    sb2.append(i11);
                } else {
                    sb2.append(i11);
                }
                appCompatTextView4.setText(sb2);
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_play_list;
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
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_desc);
            if (appCompatTextView2 != null) {
                Subject subject2 = item.getSubject();
                appCompatTextView2.setText(subject2 != null ? subject2.getDescription() : null);
            }
            AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_score);
            if (appCompatTextView3 != null) {
                appCompatTextView3.setText(subject.getImdbRate());
            }
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                downloadView.setPageFrom(this.f44846e);
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    jg.c.k(downloadView);
                } else if (t.f652a.b()) {
                    jg.c.k(downloadView);
                    downloadView.setShowPlayType();
                } else {
                    Subject subject3 = item.getSubject();
                    if (subject3 != null ? Intrinsics.c(subject3.getHasResource(), Boolean.TRUE) : false) {
                        DownloadView downloadView2 = (DownloadView) helper.getViewOrNull(R$id.ll_download);
                        if (downloadView2 != null) {
                            jg.c.k(downloadView2);
                            Subject subject4 = item.getSubject();
                            if (subject4 != null && (resourceDetector = subject4.getResourceDetector()) != null) {
                                Subject subject5 = item.getSubject();
                                String subjectId = subject5 != null ? subject5.getSubjectId() : null;
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
                int i12 = 0;
                for (Object obj : data) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.u();
                    }
                    if (i12 < iG0 && subject.getNonAdDelegate() != null) {
                        i11++;
                    }
                    i12 = i13;
                }
            }
            z(helper, (iG0 + 1) - i11);
            ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(subject.getCorner(), subject.getSubjectType());
        }
    }
}
