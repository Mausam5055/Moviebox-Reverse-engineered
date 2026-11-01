package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.noober.background.view.BLFrameLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayoutCompat f72599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoordinatorLayout f72600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLFrameLayout f72601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f72602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f72603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f72604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f72605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f72606i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f72607j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProgressBar f72608k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ProgressBar f72609l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TabLayout f72610m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f72611n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f72612o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f72613p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f72614q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f72615r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f72616s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final View f72617t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f72618u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ProgressBar f72619v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ViewPager2 f72620w;

    private b0(FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, View view, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, TabLayout tabLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view2, View view3, ProgressBar progressBar3, ViewPager2 viewPager2) {
        this.f72598a = frameLayout;
        this.f72599b = linearLayoutCompat;
        this.f72600c = coordinatorLayout;
        this.f72601d = bLFrameLayout;
        this.f72602e = frameLayout2;
        this.f72603f = appCompatImageView;
        this.f72604g = appCompatImageView2;
        this.f72605h = imageView;
        this.f72606i = view;
        this.f72607j = linearLayout;
        this.f72608k = progressBar;
        this.f72609l = progressBar2;
        this.f72610m = tabLayout;
        this.f72611n = appCompatTextView;
        this.f72612o = appCompatTextView2;
        this.f72613p = appCompatTextView3;
        this.f72614q = appCompatTextView4;
        this.f72615r = appCompatTextView5;
        this.f72616s = appCompatTextView6;
        this.f72617t = view2;
        this.f72618u = view3;
        this.f72619v = progressBar3;
        this.f72620w = viewPager2;
    }

    public static b0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.btn_download;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
        if (linearLayoutCompat != null) {
            i11 = R$id.cl_root;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
            if (coordinatorLayout != null) {
                i11 = R$id.fl_loading;
                BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                if (bLFrameLayout != null) {
                    i11 = R$id.fl_select_all_bg;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.iv_btn_download_icon;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.iv_check;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.iv_close;
                                ImageView imageView = (ImageView) g4.b.a(view, i11);
                                if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                                    i11 = R$id.ll_not_net;
                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout != null) {
                                        i11 = R$id.progress_bar_btn_download;
                                        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                        if (progressBar != null) {
                                            i11 = R$id.progress_bar_select_all;
                                            ProgressBar progressBar2 = (ProgressBar) g4.b.a(view, i11);
                                            if (progressBar2 != null) {
                                                i11 = R$id.subjectTab;
                                                TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                                                if (tabLayout != null) {
                                                    i11 = R$id.tv_btn_download;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView != null) {
                                                        i11 = R$id.tv_no_network_content;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView2 != null) {
                                                            i11 = R$id.tv_retry;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView3 != null) {
                                                                i11 = R$id.tv_select_all;
                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView4 != null) {
                                                                    i11 = R$id.tv_tips;
                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView5 != null) {
                                                                        i11 = R$id.tv_title;
                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView6 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_bottom))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_content_gap))) != null) {
                                                                            i11 = R$id.view_load;
                                                                            ProgressBar progressBar3 = (ProgressBar) g4.b.a(view, i11);
                                                                            if (progressBar3 != null) {
                                                                                i11 = R$id.vp_content;
                                                                                ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                                                if (viewPager2 != null) {
                                                                                    return new b0((FrameLayout) view, linearLayoutCompat, coordinatorLayout, bLFrameLayout, frameLayout, appCompatImageView, appCompatImageView2, imageView, viewA, linearLayout, progressBar, progressBar2, tabLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, viewA2, viewA3, progressBar3, viewPager2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_multi, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72598a;
    }
}
