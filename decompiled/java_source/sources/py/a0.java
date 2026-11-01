package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadGridTabView;
import com.transsnet.downloader.widget.DownloadResolutionTabView;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 implements g4.a {
    public final DownloadResolutionTabView A;
    public final DownloadMovieAdView B;
    public final ProgressBar C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayoutCompat f72568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLConstraintLayout f72569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoordinatorLayout f72570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f72571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLFrameLayout f72572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f72573g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f72574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f72575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f72576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f72577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f72578l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final LinearLayout f72579m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinearLayout f72580n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ProgressBar f72581o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ProgressBar f72582p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f72583q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f72584r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f72585s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AppCompatTextView f72586t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AppCompatTextView f72587u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AppCompatTextView f72588v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final AppCompatTextView f72589w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final LinearLayout f72590x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f72591y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final DownloadGridTabView f72592z;

    private a0(FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, BLConstraintLayout bLConstraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout2, BLFrameLayout bLFrameLayout, FrameLayout frameLayout3, FrameLayout frameLayout4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, View view, LinearLayout linearLayout, LinearLayout linearLayout2, ProgressBar progressBar, ProgressBar progressBar2, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, LinearLayout linearLayout3, View view2, DownloadGridTabView downloadGridTabView, DownloadResolutionTabView downloadResolutionTabView, DownloadMovieAdView downloadMovieAdView, ProgressBar progressBar3) {
        this.f72567a = frameLayout;
        this.f72568b = linearLayoutCompat;
        this.f72569c = bLConstraintLayout;
        this.f72570d = coordinatorLayout;
        this.f72571e = frameLayout2;
        this.f72572f = bLFrameLayout;
        this.f72573g = frameLayout3;
        this.f72574h = frameLayout4;
        this.f72575i = appCompatImageView;
        this.f72576j = appCompatImageView2;
        this.f72577k = imageView;
        this.f72578l = view;
        this.f72579m = linearLayout;
        this.f72580n = linearLayout2;
        this.f72581o = progressBar;
        this.f72582p = progressBar2;
        this.f72583q = appCompatTextView;
        this.f72584r = textView;
        this.f72585s = appCompatTextView2;
        this.f72586t = appCompatTextView3;
        this.f72587u = appCompatTextView4;
        this.f72588v = appCompatTextView5;
        this.f72589w = appCompatTextView6;
        this.f72590x = linearLayout3;
        this.f72591y = view2;
        this.f72592z = downloadGridTabView;
        this.A = downloadResolutionTabView;
        this.B = downloadMovieAdView;
        this.C = progressBar3;
    }

    public static a0 a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.btn_download;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
        if (linearLayoutCompat != null) {
            i11 = R$id.cl_content;
            BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
            if (bLConstraintLayout != null) {
                i11 = R$id.cl_root;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                if (coordinatorLayout != null) {
                    i11 = R$id.fl_content;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.fl_loading;
                        BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                        if (bLFrameLayout != null) {
                            i11 = R$id.flSelectAll;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                i11 = R$id.fl_select_all_bg;
                                FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout3 != null) {
                                    i11 = R$id.iv_btn_download_icon;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView != null) {
                                        i11 = R$id.iv_check;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView2 != null) {
                                            i11 = R$id.iv_close;
                                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                                            if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                                                i11 = R$id.llFreeDownloadTimes;
                                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                if (linearLayout != null) {
                                                    i11 = R$id.ll_not_net;
                                                    LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                                    if (linearLayout2 != null) {
                                                        i11 = R$id.progress_bar_btn_download;
                                                        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                                        if (progressBar != null) {
                                                            i11 = R$id.progress_bar_select_all;
                                                            ProgressBar progressBar2 = (ProgressBar) g4.b.a(view, i11);
                                                            if (progressBar2 != null) {
                                                                i11 = R$id.tv_btn_download;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView != null) {
                                                                    i11 = R$id.tvFreeTimes;
                                                                    TextView textView = (TextView) g4.b.a(view, i11);
                                                                    if (textView != null) {
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
                                                                                        if (appCompatTextView6 != null) {
                                                                                            i11 = R$id.v_bottom;
                                                                                            LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                                                                                            if (linearLayout3 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_content_gap))) != null) {
                                                                                                i11 = R$id.vGridTab;
                                                                                                DownloadGridTabView downloadGridTabView = (DownloadGridTabView) g4.b.a(view, i11);
                                                                                                if (downloadGridTabView != null) {
                                                                                                    i11 = R$id.v_language_resolution;
                                                                                                    DownloadResolutionTabView downloadResolutionTabView = (DownloadResolutionTabView) g4.b.a(view, i11);
                                                                                                    if (downloadResolutionTabView != null) {
                                                                                                        i11 = R$id.viewAd;
                                                                                                        DownloadMovieAdView downloadMovieAdView = (DownloadMovieAdView) g4.b.a(view, i11);
                                                                                                        if (downloadMovieAdView != null) {
                                                                                                            i11 = R$id.view_load;
                                                                                                            ProgressBar progressBar3 = (ProgressBar) g4.b.a(view, i11);
                                                                                                            if (progressBar3 != null) {
                                                                                                                return new a0((FrameLayout) view, linearLayoutCompat, bLConstraintLayout, coordinatorLayout, frameLayout, bLFrameLayout, frameLayout2, frameLayout3, appCompatImageView, appCompatImageView2, imageView, viewA, linearLayout, linearLayout2, progressBar, progressBar2, appCompatTextView, textView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, linearLayout3, viewA2, downloadGridTabView, downloadResolutionTabView, downloadMovieAdView, progressBar3);
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
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_group_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72567a;
    }
}
