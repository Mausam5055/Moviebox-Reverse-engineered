package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoordinatorLayout f69936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f69937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f69939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f69940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Toolbar f69941f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f69942g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f69943h;

    private v(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f69936a = coordinatorLayout;
        this.f69937b = appBarLayout;
        this.f69938c = appCompatImageView;
        this.f69939d = appCompatImageView2;
        this.f69940e = recyclerView;
        this.f69941f = toolbar;
        this.f69942g = appCompatTextView;
        this.f69943h = appCompatTextView2;
    }

    public static v a(View view) {
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
                                    return new v((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_category, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f69936a;
    }
}
