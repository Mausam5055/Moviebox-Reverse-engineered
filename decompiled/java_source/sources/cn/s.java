package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;

/* JADX INFO: loaded from: classes5.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f17471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f17472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f17474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CustomTextViewGroup f17475f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f17476g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayoutCompat f17477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CustomTextViewGroup f17478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f17479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f17480k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CustomTextViewGroup f17481l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CustomTextViewGroup f17482m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CustomTextViewGroup f17483n;

    private s(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, CustomTextViewGroup customTextViewGroup2, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView2, CustomTextViewGroup customTextViewGroup3, CustomTextViewGroup customTextViewGroup4, CustomTextViewGroup customTextViewGroup5) {
        this.f17470a = constraintLayout;
        this.f17471b = frameLayout;
        this.f17472c = appCompatImageView;
        this.f17473d = appCompatImageView2;
        this.f17474e = linearLayout;
        this.f17475f = customTextViewGroup;
        this.f17476g = appCompatTextView;
        this.f17477h = linearLayoutCompat;
        this.f17478i = customTextViewGroup2;
        this.f17479j = appCompatImageView3;
        this.f17480k = appCompatTextView2;
        this.f17481l = customTextViewGroup3;
        this.f17482m = customTextViewGroup4;
        this.f17483n = customTextViewGroup5;
    }

    public static s a(View view) {
        int i11 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_score;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.ll_score;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.tv_country;
                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) g4.b.a(view, i11);
                        if (customTextViewGroup != null) {
                            i11 = R$id.tvMovieTitle;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_movie_title_container;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                if (linearLayoutCompat != null) {
                                    i11 = R$id.tv_restrict;
                                    CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) g4.b.a(view, i11);
                                    if (customTextViewGroup2 != null) {
                                        i11 = R$id.tv_right;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView3 != null) {
                                            i11 = R$id.tv_score;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView2 != null) {
                                                i11 = R$id.tv_seasons;
                                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                if (customTextViewGroup3 != null) {
                                                    i11 = R$id.tv_time;
                                                    CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                    if (customTextViewGroup4 != null) {
                                                        i11 = R$id.tv_type;
                                                        CustomTextViewGroup customTextViewGroup5 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                        if (customTextViewGroup5 != null) {
                                                            return new s((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, linearLayout, customTextViewGroup, appCompatTextView, linearLayoutCompat, customTextViewGroup2, appCompatImageView3, appCompatTextView2, customTextViewGroup3, customTextViewGroup4, customTextViewGroup5);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17470a;
    }
}
