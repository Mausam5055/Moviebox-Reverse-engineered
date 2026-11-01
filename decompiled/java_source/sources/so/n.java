package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f75621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f75622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TabLayout f75623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f75624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f75625f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewPager2 f75626g;

    private n(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, View view, TabLayout tabLayout, ConstraintLayout constraintLayout2, TnTextView tnTextView, ViewPager2 viewPager2) {
        this.f75620a = constraintLayout;
        this.f75621b = appCompatImageView;
        this.f75622c = view;
        this.f75623d = tabLayout;
        this.f75624e = constraintLayout2;
        this.f75625f = tnTextView;
        this.f75626g = viewPager2;
    }

    public static n a(View view) {
        View viewA;
        int i11 = R$id.backIv;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.tabDivider))) != null) {
            i11 = R$id.tabLayout;
            TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
            if (tabLayout != null) {
                i11 = R$id.titleLayout;
                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout != null) {
                    i11 = R$id.titleTv;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        i11 = R$id.viewPager;
                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                        if (viewPager2 != null) {
                            return new n((ConstraintLayout) view, appCompatImageView, viewA, tabLayout, constraintLayout, tnTextView, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_my_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75620a;
    }
}
