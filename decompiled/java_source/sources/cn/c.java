package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetail.view.MovieDetailShareView;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f17313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoordinatorLayout f17314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InfoExtendView f17315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f17316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ShapeableImageView f17317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f17318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MovieDetailShareView f17319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f17320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f17321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RecyclerView f17322k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Space f17323l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Toolbar f17324m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CollapsingToolbarLayout f17325n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f17326o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f17327p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f17328q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f17329r;

    private c(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, MovieDetailShareView movieDetailShareView, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, RecyclerView recyclerView, Space space, Toolbar toolbar, CollapsingToolbarLayout collapsingToolbarLayout, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f17312a = constraintLayout;
        this.f17313b = appBarLayout;
        this.f17314c = coordinatorLayout;
        this.f17315d = infoExtendView;
        this.f17316e = appCompatImageView;
        this.f17317f = shapeableImageView;
        this.f17318g = appCompatImageView2;
        this.f17319h = movieDetailShareView;
        this.f17320i = appCompatImageView3;
        this.f17321j = appCompatImageView4;
        this.f17322k = recyclerView;
        this.f17323l = space;
        this.f17324m = toolbar;
        this.f17325n = collapsingToolbarLayout;
        this.f17326o = textView;
        this.f17327p = appCompatTextView;
        this.f17328q = appCompatTextView2;
        this.f17329r = appCompatTextView3;
    }

    public static c a(View view) {
        int i11 = R$id.appBar;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            i11 = R$id.cdl;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
            if (coordinatorLayout != null) {
                i11 = R$id.infoExtendView;
                InfoExtendView infoExtendView = (InfoExtendView) g4.b.a(view, i11);
                if (infoExtendView != null) {
                    i11 = R$id.ivBack;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivCoverSmall;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                        if (shapeableImageView != null) {
                            i11 = R$id.ivDownload;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.ivShare;
                                MovieDetailShareView movieDetailShareView = (MovieDetailShareView) g4.b.a(view, i11);
                                if (movieDetailShareView != null) {
                                    i11 = R$id.iv_staff;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView3 != null) {
                                        i11 = R$id.iv_want_see;
                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView4 != null) {
                                            i11 = R$id.f46915rv;
                                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                            if (recyclerView != null) {
                                                i11 = R$id.f46916sp;
                                                Space space = (Space) g4.b.a(view, i11);
                                                if (space != null) {
                                                    i11 = R$id.toolbar;
                                                    Toolbar toolbar = (Toolbar) g4.b.a(view, i11);
                                                    if (toolbar != null) {
                                                        i11 = R$id.toolbar_layout;
                                                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                        if (collapsingToolbarLayout != null) {
                                                            i11 = R$id.tv_filmography;
                                                            TextView textView = (TextView) g4.b.a(view, i11);
                                                            if (textView != null) {
                                                                i11 = R$id.tv_staff_desc;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView != null) {
                                                                    i11 = R$id.tv_staff_name;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView2 != null) {
                                                                        i11 = R$id.tvTitle;
                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView3 != null) {
                                                                            return new c((ConstraintLayout) view, appBarLayout, coordinatorLayout, infoExtendView, appCompatImageView, shapeableImageView, appCompatImageView2, movieDetailShareView, appCompatImageView3, appCompatImageView4, recyclerView, space, toolbar, collapsingToolbarLayout, textView, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_staff, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17312a;
    }
}
