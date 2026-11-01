package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubjectSingleImgItemProvider extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f44710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final double f44712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BaseViewHolder f44713h;

    public SubjectSingleImgItemProvider(boolean z10) {
        this.f44710e = z10;
        int iMin = Math.min(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c());
        this.f44711f = iMin;
        this.f44712g = ((double) iMin) * 0.5d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(Subject subject, boolean z10, boolean z11, long j11) {
        subject.setLoadCoverSuccess(z10);
        subject.setCoverCache(z11);
        subject.setLoadCoverDuration(j11);
        return Unit.f67061a;
    }

    private final String G(int i11) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i11 / 3600), Integer.valueOf((i11 % 3600) / 60), Integer.valueOf(i11 % 60)}, 3));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0113  */
    /* JADX WARN: Code duplicated, block: B:54:0x012d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0132  */
    /* JADX WARN: Code duplicated, block: B:91:0x021c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0222  */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        String subjectId;
        ResourceDetectors resourceDetector;
        Integer type;
        Integer durationSeconds;
        int iIntValue;
        String url;
        String thumbnail;
        ConstraintLayout constraintLayout;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() == 0) {
            return;
        }
        if (this.f44710e && (constraintLayout = (ConstraintLayout) helper.getViewOrNull(R$id.cl_cover)) != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
            layoutParams.height = dk.a.b(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
            layoutParams.width = ((int) this.f44712g) - dk.a.b(36);
            constraintLayout.setLayoutParams(layoutParams);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            if (feedsSubject.getBuiltIn()) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new SubjectSingleImgItemProvider$convert$2$1(feedsSubject, shapeableImageView, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = feedsSubject.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                Cover cover2 = feedsSubject.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).i(R$color.skeleton).m(this.f44711f).b(new Function3() { // from class: com.transsion.home.adapter.trending.provider.n0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return SubjectSingleImgItemProvider.F(feedsSubject, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                    }
                }).d(shapeableImageView);
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
        Integer subjectType = feedsSubject.getSubjectType();
        int value = SubjectType.MUSIC.getValue();
        boolean z10 = false;
        if (subjectType != null && subjectType.intValue() == value) {
            jg.c.h(helper.getView(R$id.tv_score));
            TextView textView = (TextView) helper.getView(R$id.tv_duration);
            jg.c.k(textView);
            durationSeconds = feedsSubject.getDurationSeconds();
            if (durationSeconds != null) {
                iIntValue = durationSeconds.intValue();
            } else {
                iIntValue = 0;
            }
            textView.setText(G(iIntValue));
        } else {
            Integer subjectType2 = feedsSubject.getSubjectType();
            int value2 = SubjectType.AUDIO.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                jg.c.h(helper.getView(R$id.tv_score));
                TextView textView2 = (TextView) helper.getView(R$id.tv_duration);
                jg.c.k(textView2);
                durationSeconds = feedsSubject.getDurationSeconds();
                if (durationSeconds != null) {
                    iIntValue = durationSeconds.intValue();
                } else {
                    iIntValue = 0;
                }
                textView2.setText(G(iIntValue));
            } else {
                Integer subjectType3 = feedsSubject.getSubjectType();
                int value3 = SubjectType.EDUCATION.getValue();
                if (subjectType3 != null && subjectType3.intValue() == value3) {
                    jg.c.h(helper.getView(R$id.tv_score));
                    TextView textView3 = (TextView) helper.getView(R$id.tv_duration);
                    jg.c.k(textView3);
                    durationSeconds = feedsSubject.getDurationSeconds();
                    if (durationSeconds != null) {
                        iIntValue = durationSeconds.intValue();
                    } else {
                        iIntValue = 0;
                    }
                    textView3.setText(G(iIntValue));
                }
            }
        }
        ((CornerTextView) helper.getView(R$id.tv_tips)).setTextWithType(feedsSubject.getCorner(), feedsSubject.getSubjectType());
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
        if (Intrinsics.c(feedsSubject.getHasResource(), Boolean.TRUE)) {
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                jg.c.k(downloadView);
                if (ak.t.f652a.b()) {
                    Integer subjectType4 = feedsSubject.getSubjectType();
                    int value4 = SubjectType.SHORT_TV.getValue();
                    if (subjectType4 != null && subjectType4.intValue() == value4) {
                        resourceDetector = feedsSubject.getResourceDetector();
                        if (resourceDetector != null) {
                            String subjectId2 = feedsSubject.getSubjectId();
                            String resourceId = resourceDetector.getResourceId();
                            type = resourceDetector.getType();
                            if (type != null && type.intValue() == 1) {
                                z10 = true;
                            }
                            DownloadView.setShowType$default(downloadView, subjectId2, resourceId, Boolean.valueOf(z10), false, 0, 24, null);
                        }
                    } else {
                        downloadView.setShowPlayType();
                    }
                } else {
                    resourceDetector = feedsSubject.getResourceDetector();
                    if (resourceDetector != null) {
                        String subjectId3 = feedsSubject.getSubjectId();
                        String resourceId2 = resourceDetector.getResourceId();
                        type = resourceDetector.getType();
                        if (type != null) {
                            z10 = true;
                        }
                        DownloadView.setShowType$default(downloadView, subjectId3, resourceId2, Boolean.valueOf(z10), false, 0, 24, null);
                    }
                }
            }
        } else {
            helper.setGone(R$id.ll_download, true);
        }
        this.f44713h = helper;
        A(helper, feedsSubject);
    }

    public final View H() {
        BaseViewHolder baseViewHolder = this.f44713h;
        if (baseViewHolder != null) {
            return (DownloadView) baseViewHolder.getViewOrNull(R$id.ll_download);
        }
        return null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.SINGLE_SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_subject_single_img;
    }
}
