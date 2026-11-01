package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Barrier f66390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f66391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f66392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f66393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f66395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f66396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayoutCompat f66397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f66398j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f66399k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f66400l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f66401m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f66402n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f66403o;

    private g(ConstraintLayout constraintLayout, Barrier barrier, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, View view, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f66389a = constraintLayout;
        this.f66390b = barrier;
        this.f66391c = appCompatImageView;
        this.f66392d = shapeableImageView;
        this.f66393e = view;
        this.f66394f = appCompatImageView2;
        this.f66395g = appCompatImageView3;
        this.f66396h = linearLayout;
        this.f66397i = linearLayoutCompat;
        this.f66398j = appCompatTextView;
        this.f66399k = appCompatTextView2;
        this.f66400l = appCompatTextView3;
        this.f66401m = appCompatTextView4;
        this.f66402n = appCompatTextView5;
        this.f66403o = appCompatTextView6;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.barrierMovieCoverBottom;
        Barrier barrier = (Barrier) g4.b.a(view, i11);
        if (barrier != null) {
            i11 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.ivMovieCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null && (viewA = g4.b.a(view, (i11 = R$id.ivMovieCoverMask))) != null) {
                    i11 = R$id.iv_score;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.iv_subtitle_tag;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView3 != null) {
                            i11 = R$id.ll_score;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.tv_header_toolbar;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                if (linearLayoutCompat != null) {
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
                                                            return new g((ConstraintLayout) view, barrier, appCompatImageView, shapeableImageView, viewA, appCompatImageView2, appCompatImageView3, linearLayout, linearLayoutCompat, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_detail_info, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66389a;
    }
}
