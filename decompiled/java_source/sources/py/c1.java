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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLLinearLayout;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c1 implements g4.a {
    public final ProgressBar A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f72635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f72636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLLinearLayout f72637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLConstraintLayout f72638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f72639f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f72640g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLFrameLayout f72641h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f72642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f72643j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f72644k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f72645l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f72646m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinearLayout f72647n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ProgressBar f72648o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final RecyclerView f72649p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final RecyclerView f72650q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f72651r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f72652s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f72653t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AppCompatTextView f72654u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AppCompatTextView f72655v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final AppCompatTextView f72656w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AppCompatTextView f72657x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f72658y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final DownloadMovieAdView f72659z;

    private c1(FrameLayout frameLayout, ConstraintLayout constraintLayout, LinearLayoutCompat linearLayoutCompat, BLLinearLayout bLLinearLayout, BLConstraintLayout bLConstraintLayout, View view, View view2, BLFrameLayout bLFrameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, RecyclerView recyclerView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view3, DownloadMovieAdView downloadMovieAdView, ProgressBar progressBar2) {
        this.f72634a = frameLayout;
        this.f72635b = constraintLayout;
        this.f72636c = linearLayoutCompat;
        this.f72637d = bLLinearLayout;
        this.f72638e = bLConstraintLayout;
        this.f72639f = view;
        this.f72640g = view2;
        this.f72641h = bLFrameLayout;
        this.f72642i = appCompatImageView;
        this.f72643j = appCompatImageView2;
        this.f72644k = imageView;
        this.f72645l = imageView2;
        this.f72646m = imageView3;
        this.f72647n = linearLayout;
        this.f72648o = progressBar;
        this.f72649p = recyclerView;
        this.f72650q = recyclerView2;
        this.f72651r = appCompatTextView;
        this.f72652s = appCompatTextView2;
        this.f72653t = textView;
        this.f72654u = appCompatTextView3;
        this.f72655v = appCompatTextView4;
        this.f72656w = appCompatTextView5;
        this.f72657x = appCompatTextView6;
        this.f72658y = view3;
        this.f72659z = downloadMovieAdView;
        this.A = progressBar2;
    }

    public static c1 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.bottomBar;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.btnDownload;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.btnResolution;
                BLLinearLayout bLLinearLayout = (BLLinearLayout) g4.b.a(view, i11);
                if (bLLinearLayout != null) {
                    i11 = R$id.clContent;
                    BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
                    if (bLConstraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.dividerLine))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.dividerLine1))) != null) {
                        i11 = R$id.flLoading;
                        BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                        if (bLFrameLayout != null) {
                            i11 = R$id.ivBtnDownloadIcon;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView != null) {
                                i11 = R$id.ivCheck;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView2 != null) {
                                    i11 = R$id.ivClose;
                                    ImageView imageView = (ImageView) g4.b.a(view, i11);
                                    if (imageView != null) {
                                        i11 = R$id.ivResolutionArrow;
                                        ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                        if (imageView2 != null) {
                                            i11 = R$id.ivResolutionIcon;
                                            ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                                            if (imageView3 != null) {
                                                i11 = R$id.llNotNet;
                                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                if (linearLayout != null) {
                                                    i11 = R$id.progressBarBtnDownload;
                                                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                                    if (progressBar != null) {
                                                        i11 = R$id.recyclerView;
                                                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                        if (recyclerView != null) {
                                                            i11 = R$id.rvTabs;
                                                            RecyclerView recyclerView2 = (RecyclerView) g4.b.a(view, i11);
                                                            if (recyclerView2 != null) {
                                                                i11 = R$id.tvBtnDownload;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView != null) {
                                                                    i11 = R$id.tv_no_network_content;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView2 != null) {
                                                                        i11 = R$id.tvResolution;
                                                                        TextView textView = (TextView) g4.b.a(view, i11);
                                                                        if (textView != null) {
                                                                            i11 = R$id.tv_retry;
                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                            if (appCompatTextView3 != null) {
                                                                                i11 = R$id.tvSelectAll;
                                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                if (appCompatTextView4 != null) {
                                                                                    i11 = R$id.tv_tips;
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i11 = R$id.tvTitle;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                        if (appCompatTextView6 != null && (viewA3 = g4.b.a(view, (i11 = R$id.vContentGap))) != null) {
                                                                                            i11 = R$id.viewAd;
                                                                                            DownloadMovieAdView downloadMovieAdView = (DownloadMovieAdView) g4.b.a(view, i11);
                                                                                            if (downloadMovieAdView != null) {
                                                                                                i11 = R$id.view_load;
                                                                                                ProgressBar progressBar2 = (ProgressBar) g4.b.a(view, i11);
                                                                                                if (progressBar2 != null) {
                                                                                                    return new c1((FrameLayout) view, constraintLayout, linearLayoutCompat, bLLinearLayout, bLConstraintLayout, viewA, viewA2, bLFrameLayout, appCompatImageView, appCompatImageView2, imageView, imageView2, imageView3, linearLayout, progressBar, recyclerView, recyclerView2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, viewA3, downloadMovieAdView, progressBar2);
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

    public static c1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.ugc_dialog_download_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72634a;
    }
}
