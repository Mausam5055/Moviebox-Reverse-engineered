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
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;

/* JADX INFO: loaded from: classes5.dex */
public final class p implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f17431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f17432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InfoExtendView f17433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f17434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ShapeableImageView f17435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f17436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f17437h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f17438i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f17439j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CustomTextViewGroup f17440k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinearLayoutCompat f17441l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f17442m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CustomTextViewGroup f17443n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f17444o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f17445p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final CustomTextViewGroup f17446q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final CustomTextViewGroup f17447r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f17448s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final View f17449t;

    private p(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, AppCompatImageView appCompatImageView3, CustomTextViewGroup customTextViewGroup, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup3, CustomTextViewGroup customTextViewGroup4, View view2, View view3) {
        this.f17430a = constraintLayout;
        this.f17431b = frameLayout;
        this.f17432c = frameLayout2;
        this.f17433d = infoExtendView;
        this.f17434e = appCompatImageView;
        this.f17435f = shapeableImageView;
        this.f17436g = view;
        this.f17437h = appCompatImageView2;
        this.f17438i = linearLayout;
        this.f17439j = appCompatImageView3;
        this.f17440k = customTextViewGroup;
        this.f17441l = linearLayoutCompat;
        this.f17442m = appCompatTextView;
        this.f17443n = customTextViewGroup2;
        this.f17444o = appCompatTextView2;
        this.f17445p = appCompatTextView3;
        this.f17446q = customTextViewGroup3;
        this.f17447r = customTextViewGroup4;
        this.f17448s = view2;
        this.f17449t = view3;
    }

    public static p a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.fl_starring;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.game_container;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.infoExtendView;
                InfoExtendView infoExtendView = (InfoExtendView) g4.b.a(view, i11);
                if (infoExtendView != null) {
                    i11 = R$id.ivMovieContent;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivMovieCover;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                        if (shapeableImageView != null && (viewA = g4.b.a(view, (i11 = R$id.ivMovieCoverMask))) != null) {
                            i11 = R$id.iv_score;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.ll_score;
                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout != null) {
                                    i11 = R$id.tv_close;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView3 != null) {
                                        i11 = R$id.tv_country;
                                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) g4.b.a(view, i11);
                                        if (customTextViewGroup != null) {
                                            i11 = R$id.tv_header_toolbar;
                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                            if (linearLayoutCompat != null) {
                                                i11 = R$id.tvMovieTitle;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView != null) {
                                                    i11 = R$id.tv_restrict;
                                                    CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                    if (customTextViewGroup2 != null) {
                                                        i11 = R$id.tv_score;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView2 != null) {
                                                            i11 = R$id.tv_seasons;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView3 != null) {
                                                                i11 = R$id.tv_time;
                                                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                                if (customTextViewGroup3 != null) {
                                                                    i11 = R$id.tv_type;
                                                                    CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                                    if (customTextViewGroup4 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_seasons_line))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.view_separator))) != null) {
                                                                        return new p((ConstraintLayout) view, frameLayout, frameLayout2, infoExtendView, appCompatImageView, shapeableImageView, viewA, appCompatImageView2, linearLayout, appCompatImageView3, customTextViewGroup, linearLayoutCompat, appCompatTextView, customTextViewGroup2, appCompatTextView2, appCompatTextView3, customTextViewGroup3, customTextViewGroup4, viewA2, viewA3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_detail_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17430a;
    }
}
