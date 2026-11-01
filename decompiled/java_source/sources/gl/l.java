package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoordinatorLayout f63765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f63766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f63767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Toolbar f63770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f63771g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f63772h;

    private l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f63765a = coordinatorLayout;
        this.f63766b = appBarLayout;
        this.f63767c = appCompatImageView;
        this.f63768d = appCompatImageView2;
        this.f63769e = recyclerView;
        this.f63770f = toolbar;
        this.f63771g = appCompatTextView;
        this.f63772h = appCompatTextView2;
    }

    public static l a(View view) {
        int i11 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            i11 = R$id.ivBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_cover;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.toolbar;
                        Toolbar toolbar = (Toolbar) g4.b.a(view, i11);
                        if (toolbar != null) {
                            i11 = R$id.tvTitle;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tvTitle_expand;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    return new l((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_category, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f63765a;
    }
}
