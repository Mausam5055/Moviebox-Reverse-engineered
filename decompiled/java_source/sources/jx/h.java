package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f66405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f66406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f66407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f66410g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CustomTextViewGroup f66411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f66412i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f66413j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CustomTextViewGroup f66414k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f66415l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CustomTextViewGroup f66416m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f66417n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final CustomTextViewGroup f66418o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CustomTextViewGroup f66419p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f66420q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f66421r;

    private h(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, CustomTextViewGroup customTextViewGroup2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup3, AppCompatTextView appCompatTextView4, CustomTextViewGroup customTextViewGroup4, CustomTextViewGroup customTextViewGroup5, View view, View view2) {
        this.f66404a = constraintLayout;
        this.f66405b = frameLayout;
        this.f66406c = appCompatImageView;
        this.f66407d = shapeableImageView;
        this.f66408e = appCompatImageView2;
        this.f66409f = appCompatImageView3;
        this.f66410g = linearLayout;
        this.f66411h = customTextViewGroup;
        this.f66412i = appCompatTextView;
        this.f66413j = appCompatTextView2;
        this.f66414k = customTextViewGroup2;
        this.f66415l = appCompatTextView3;
        this.f66416m = customTextViewGroup3;
        this.f66417n = appCompatTextView4;
        this.f66418o = customTextViewGroup4;
        this.f66419p = customTextViewGroup5;
        this.f66420q = view;
        this.f66421r = view2;
    }

    public static h a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.iv_preview;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.iv_score;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView3 != null) {
                            i11 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.tv_country;
                                CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) g4.b.a(view, i11);
                                if (customTextViewGroup != null) {
                                    i11 = R$id.tvMovieInfo;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView != null) {
                                        i11 = R$id.tvMovieTitle;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            i11 = R$id.tv_restrict;
                                            CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) g4.b.a(view, i11);
                                            if (customTextViewGroup2 != null) {
                                                i11 = R$id.tv_score;
                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView3 != null) {
                                                    i11 = R$id.tv_seasons;
                                                    CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                    if (customTextViewGroup3 != null) {
                                                        i11 = R$id.tv_seasons_2;
                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView4 != null) {
                                                            i11 = R$id.tv_time;
                                                            CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                            if (customTextViewGroup4 != null) {
                                                                i11 = R$id.tv_type;
                                                                CustomTextViewGroup customTextViewGroup5 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                                if (customTextViewGroup5 != null && (viewA = g4.b.a(view, (i11 = R$id.v_detail_hot_zone))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_seasons_line_2))) != null) {
                                                                    return new h((ConstraintLayout) view, frameLayout, appCompatImageView, shapeableImageView, appCompatImageView2, appCompatImageView3, linearLayout, customTextViewGroup, appCompatTextView, appCompatTextView2, customTextViewGroup2, appCompatTextView3, customTextViewGroup3, appCompatTextView4, customTextViewGroup4, customTextViewGroup5, viewA, viewA2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66404a;
    }
}
