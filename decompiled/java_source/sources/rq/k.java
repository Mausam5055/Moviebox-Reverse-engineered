package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f74666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f74667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f74668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TabLayout f74669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f74670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewPager2 f74671f;

    private k(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, RecyclerView recyclerView, TabLayout tabLayout, View view, ViewPager2 viewPager2) {
        this.f74666a = constraintLayout;
        this.f74667b = appBarLayout;
        this.f74668c = recyclerView;
        this.f74669d = tabLayout;
        this.f74670e = view;
        this.f74671f = viewPager2;
    }

    public static k a(View view) {
        View viewA;
        int i11 = R$id.appBarLayout;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            i11 = R$id.rvRank;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.tabs;
                TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                if (tabLayout != null && (viewA = g4.b.a(view, (i11 = R$id.viewLine))) != null) {
                    i11 = R$id.viewPager;
                    ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                    if (viewPager2 != null) {
                        return new k((ConstraintLayout) view, appBarLayout, recyclerView, tabLayout, viewA, viewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_values_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f74666a;
    }
}
