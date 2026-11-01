package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f66336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f66337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f66338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProgressBar f66339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f66340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f66341g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLTextView f66342h;

    private b(ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, BLTextView bLTextView) {
        this.f66335a = constraintLayout;
        this.f66336b = view;
        this.f66337c = frameLayout;
        this.f66338d = appCompatImageView;
        this.f66339e = progressBar;
        this.f66340f = recyclerView;
        this.f66341g = appCompatTextView;
        this.f66342h = bLTextView;
    }

    public static b a(View view) {
        int i11 = R$id.divider;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.fl_season_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.iv_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.pb_loading;
                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                    if (progressBar != null) {
                        i11 = R$id.f57563rv;
                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                        if (recyclerView != null) {
                            i11 = R$id.tv_all_episodes;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_title;
                                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                                if (bLTextView != null) {
                                    return new b((ConstraintLayout) view, viewA, frameLayout, appCompatImageView, progressBar, recyclerView, appCompatTextView, bLTextView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_all_episodes, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66335a;
    }
}
