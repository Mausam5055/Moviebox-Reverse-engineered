package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsnet.downloader.widget.DownloadView;
import java.util.Calendar;
import java.util.Date;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubjectItemProvider extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f44704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44705f = Math.min(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f44706g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BaseViewHolder f44707h;

    public SubjectItemProvider(boolean z10) {
        this.f44704e = z10;
        this.f44706g = com.blankj.utilcode.util.a0.a(z10 ? 146.40001f : 122.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(Subject subject, boolean z10, boolean z11, long j11) {
        subject.setLoadCoverSuccess(z10);
        subject.setCoverCache(z11);
        subject.setLoadCoverDuration(j11);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:131:0x028c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0292  */
    /* JADX WARN: Code duplicated, block: B:139:0x02a8  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        String subjectId;
        ResourceDetectors resourceDetector;
        Cover cover;
        Cover cover2;
        Cover cover3;
        Cover cover4;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() == 0) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) helper.getViewOrNull(R$id.cl_cover);
        if (constraintLayout != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
            int i11 = this.f44706g;
            layoutParams.height = i11;
            layoutParams.width = (i11 / 4) * 3;
            constraintLayout.setLayoutParams(layoutParams);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            if (feedsSubject.getBuiltIn()) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new SubjectItemProvider$convert$2$1(feedsSubject, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover5 = feedsSubject.getCover();
                if (cover5 == null || (url = cover5.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarI = bVarM.g(url).m(this.f44705f).i(R$color.skeleton);
                Cover cover6 = feedsSubject.getCover();
                if (cover6 == null || (thumbnail = cover6.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarI.l(thumbnail).b(new Function3() { // from class: com.transsion.home.adapter.trending.provider.m0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return SubjectItemProvider.F(feedsSubject, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                    }
                }).d(shapeableImageView);
            }
        }
        ShapeableImageView shapeableImageView2 = (ShapeableImageView) helper.getViewOrNull(R$id.iv_stills);
        if (shapeableImageView2 != null) {
            ViewGroup.LayoutParams layoutParams2 = shapeableImageView2.getLayoutParams();
            layoutParams2.height = this.f44706g;
            shapeableImageView2.setLayoutParams(layoutParams2);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Trailer trailer = feedsSubject.getTrailer();
            T url2 = (trailer == null || (cover4 = trailer.getCover()) == null) ? 0 : cover4.getUrl();
            objectRef.element = url2;
            CharSequence charSequence = (CharSequence) url2;
            if (charSequence == null || charSequence.length() == 0) {
                Cover stills = feedsSubject.getStills();
                String url3 = stills != null ? stills.getUrl() : null;
                objectRef.element = (url3 == null || url3.length() == 0 ? (cover = feedsSubject.getCover()) == null : (cover = feedsSubject.getStills()) == null) ? 0 : cover.getUrl();
            }
            Trailer trailer2 = feedsSubject.getTrailer();
            String thumbnail2 = (trailer2 == null || (cover3 = trailer2.getCover()) == null) ? null : cover3.getThumbnail();
            if (thumbnail2 == null || thumbnail2.length() == 0) {
                Cover stills2 = feedsSubject.getStills();
                String thumbnail3 = stills2 != null ? stills2.getThumbnail() : null;
                thumbnail2 = (thumbnail3 == null || thumbnail3.length() == 0 ? (cover2 = feedsSubject.getCover()) == null : (cover2 = feedsSubject.getStills()) == null) ? null : cover2.getThumbnail();
            }
            if (feedsSubject.getBuiltIn()) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new SubjectItemProvider$convert$3$1(objectRef, shapeableImageView2, null), 3, null);
            } else {
                ej.f.a aVar2 = ej.f.f61882a;
                Context context2 = shapeableImageView2.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarM2 = aVar2.m(context2);
                String str = (String) objectRef.element;
                if (str == null) {
                    str = "";
                }
                bVarM2.g(str).i(R$color.skeleton).l(thumbnail2 != null ? thumbnail2 : "").d(shapeableImageView2);
            }
        }
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getViewOrNull(R$id.ic_player);
        if (appCompatImageView != null) {
            if (feedsSubject.getTrailer() == null) {
                jg.c.g(appCompatImageView);
            } else {
                jg.c.k(appCompatImageView);
            }
        }
        helper.setText(R$id.tv_subject, feedsSubject.getTitle());
        Date dateL = com.blankj.utilcode.util.c0.l(feedsSubject.getReleaseDate(), "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_subject_year);
        if (appCompatTextView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
            String countryName = feedsSubject.getCountryName();
            if (countryName != null && countryName.length() != 0) {
                spannableStringBuilder.append((CharSequence) " • ").append((CharSequence) feedsSubject.getCountryName());
            }
            String genre = feedsSubject.getGenre();
            if (genre != null && genre.length() != 0) {
                SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) " • ");
                String genre2 = feedsSubject.getGenre();
                spannableStringBuilderAppend.append((CharSequence) (genre2 != null ? StringsKt.Q(genre2, "，", " • ", false, 4, null) : null));
            }
            appCompatTextView.setText(spannableStringBuilder.toString());
            Drawable drawable = androidx.core.content.b.getDrawable(appCompatTextView.getContext(), com.transsion.moviedetailapi.g.a(feedsSubject.getSubjectType()));
            if (drawable != null) {
                drawable.setTint(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_40));
            }
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        helper.setText(com.transsion.baseui.R$id.tv_subject, feedsSubject.getTitle());
        if (Intrinsics.c(feedsSubject.getHasResource(), Boolean.TRUE)) {
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                jg.c.k(downloadView);
                if (ak.t.f652a.b()) {
                    Integer subjectType = feedsSubject.getSubjectType();
                    int value = SubjectType.SHORT_TV.getValue();
                    if (subjectType != null && subjectType.intValue() == value) {
                        resourceDetector = feedsSubject.getResourceDetector();
                        if (resourceDetector != null) {
                            String subjectId2 = feedsSubject.getSubjectId();
                            String resourceId = resourceDetector.getResourceId();
                            Integer type = resourceDetector.getType();
                            DownloadView.setShowType$default(downloadView, subjectId2, resourceId, Boolean.valueOf(type == null && type.intValue() == 1), false, 0, 24, null);
                        }
                    } else {
                        downloadView.setShowPlayType();
                    }
                } else {
                    resourceDetector = feedsSubject.getResourceDetector();
                    if (resourceDetector != null) {
                        String subjectId3 = feedsSubject.getSubjectId();
                        String resourceId2 = resourceDetector.getResourceId();
                        Integer type2 = resourceDetector.getType();
                        DownloadView.setShowType$default(downloadView, subjectId3, resourceId2, Boolean.valueOf(type2 == null && type2.intValue() == 1), false, 0, 24, null);
                    }
                }
            }
        } else {
            helper.setGone(R$id.ll_download, true);
        }
        this.f44707h = helper;
        A(helper, feedsSubject);
    }

    public final View G() {
        BaseViewHolder baseViewHolder = this.f44707h;
        if (baseViewHolder != null) {
            return (DownloadView) baseViewHolder.getViewOrNull(R$id.ll_download);
        }
        return null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_subject;
    }
}
