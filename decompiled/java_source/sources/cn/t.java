package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Barrier f17485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f17486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f17488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f17489f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f17490g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f17491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f17492i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f17493j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f17494k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f17495l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f17496m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f17497n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f17498o;

    private t(ConstraintLayout constraintLayout, Barrier barrier, View view, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view2, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f17484a = constraintLayout;
        this.f17485b = barrier;
        this.f17486c = view;
        this.f17487d = appCompatImageView;
        this.f17488e = shapeableImageView;
        this.f17489f = view2;
        this.f17490g = appCompatImageView2;
        this.f17491h = appCompatImageView3;
        this.f17492i = linearLayout;
        this.f17493j = appCompatTextView;
        this.f17494k = appCompatTextView2;
        this.f17495l = appCompatTextView3;
        this.f17496m = appCompatTextView4;
        this.f17497n = appCompatTextView5;
        this.f17498o = appCompatTextView6;
    }

    public static t a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.barrierMovieCoverBottom;
        Barrier barrier = (Barrier) g4.b.a(view, i11);
        if (barrier != null && (viewA = g4.b.a(view, (i11 = R$id.ivCoverZoom))) != null) {
            i11 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null && (viewA2 = g4.b.a(view, (i11 = R$id.ivMovieCoverMask))) != null) {
                    i11 = R$id.iv_score;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.iv_subtitle_tag;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView3 != null) {
                            i11 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.tvMovieContent;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null) {
                                    i11 = R$id.tvMovieTitle;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tv_score;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            i11 = R$id.tv_subtitle_more;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView4 != null) {
                                                i11 = R$id.tv_subtitle_tag;
                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView5 != null) {
                                                    i11 = R$id.tv_time;
                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView6 != null) {
                                                        return new t((ConstraintLayout) view, barrier, viewA, appCompatImageView, shapeableImageView, viewA2, appCompatImageView2, appCompatImageView3, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_movie_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17484a;
    }
}
