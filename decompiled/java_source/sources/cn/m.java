package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.WatchModeTipsView;

/* JADX INFO: loaded from: classes5.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f17411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f17412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f17413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f17414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f17415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f17416g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f17417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProgressBar f17418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WatchModeTipsView f17419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RecyclerView f17420k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final BLTextView f17421l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final BLTextView f17422m;

    private m(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, FrameLayout frameLayout, LinearLayout linearLayout, ProgressBar progressBar, WatchModeTipsView watchModeTipsView, RecyclerView recyclerView, BLTextView bLTextView2, BLTextView bLTextView3) {
        this.f17410a = constraintLayout;
        this.f17411b = appCompatImageView;
        this.f17412c = appCompatTextView;
        this.f17413d = appCompatTextView2;
        this.f17414e = appCompatTextView3;
        this.f17415f = bLTextView;
        this.f17416g = frameLayout;
        this.f17417h = linearLayout;
        this.f17418i = progressBar;
        this.f17419j = watchModeTipsView;
        this.f17420k = recyclerView;
        this.f17421l = bLTextView2;
        this.f17422m = bLTextView3;
    }

    public static m a(View view) {
        int i11 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.innerTvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.iv_seasons;
                        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                        if (bLTextView != null) {
                            i11 = R$id.lf_loading;
                            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout != null) {
                                i11 = R$id.llLanguage;
                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout != null) {
                                    i11 = R$id.load_view;
                                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                    if (progressBar != null) {
                                        i11 = R$id.modeTipsLayout;
                                        WatchModeTipsView watchModeTipsView = (WatchModeTipsView) g4.b.a(view, i11);
                                        if (watchModeTipsView != null) {
                                            i11 = R$id.resourceRv;
                                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                            if (recyclerView != null) {
                                                i11 = R$id.tvLanguage;
                                                BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                                                if (bLTextView2 != null) {
                                                    i11 = R$id.tv_more;
                                                    BLTextView bLTextView3 = (BLTextView) g4.b.a(view, i11);
                                                    if (bLTextView3 != null) {
                                                        return new m((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, frameLayout, linearLayout, progressBar, watchModeTipsView, recyclerView, bLTextView2, bLTextView3);
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

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_resource_detector_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17410a;
    }
}
