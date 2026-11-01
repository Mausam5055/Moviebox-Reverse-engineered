package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f16732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f16733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f16734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f16735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TabLayout f16736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewPager2 f16738h;

    private d(ConstraintLayout constraintLayout, View view, View view2, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, TabLayout tabLayout, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f16731a = constraintLayout;
        this.f16732b = view;
        this.f16733c = view2;
        this.f16734d = appCompatImageView;
        this.f16735e = constraintLayout2;
        this.f16736f = tabLayout;
        this.f16737g = appCompatTextView;
        this.f16738h = viewPager2;
    }

    public static d a(View view) {
        View viewA;
        int i11 = R$id.divider_line;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null && (viewA = g4.b.a(view, (i11 = R$id.divider_line_1))) != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.mTitleLayout;
                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout != null) {
                    i11 = R$id.tabLayout;
                    TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                    if (tabLayout != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.viewPager2;
                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                            if (viewPager2 != null) {
                                return new d((ConstraintLayout) view, viewA2, viewA, appCompatImageView, constraintLayout, tabLayout, appCompatTextView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_likes_viewpager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16731a;
    }
}
