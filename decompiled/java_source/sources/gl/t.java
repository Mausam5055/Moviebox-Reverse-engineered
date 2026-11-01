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
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoordinatorLayout f63841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f63842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f63843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Toolbar f63846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f63847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f63848h;

    private t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f63841a = coordinatorLayout;
        this.f63842b = appBarLayout;
        this.f63843c = appCompatImageView;
        this.f63844d = appCompatImageView2;
        this.f63845e = recyclerView;
        this.f63846f = toolbar;
        this.f63847g = appCompatTextView;
        this.f63848h = appCompatTextView2;
    }

    public static t a(View view) {
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
                                    return new t((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_play_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f63841a;
    }
}
