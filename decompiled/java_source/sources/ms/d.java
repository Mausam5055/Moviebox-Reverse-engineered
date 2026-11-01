package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ui.widget.ShortTvDownloadInfoExtendView;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final View E;
    public final View F;
    public final BLView G;
    public final ProgressBar H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f69729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f69730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f69731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f69732d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoordinatorLayout f69733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLFrameLayout f69734f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f69735g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f69736h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShortTvDownloadInfoExtendView f69737i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f69738j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f69739k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f69740l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ShapeableImageView f69741m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final BLImageView f69742n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final BLImageView f69743o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ProgressBar f69744p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ProgressBar f69745q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final RecyclerView f69746r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f69747s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TabLayout f69748t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f69749u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AppCompatTextView f69750v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final AppCompatTextView f69751w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final TextView f69752x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final AppCompatTextView f69753y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AppCompatTextView f69754z;

    private d(BLConstraintLayout bLConstraintLayout, AppBarLayout appBarLayout, View view, LinearLayoutCompat linearLayoutCompat, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ShapeableImageView shapeableImageView, BLImageView bLImageView, BLImageView bLImageView2, ProgressBar progressBar, ProgressBar progressBar2, RecyclerView recyclerView, RecyclerView recyclerView2, TabLayout tabLayout, View view2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, View view3, View view4, BLView bLView, ProgressBar progressBar3) {
        this.f69729a = bLConstraintLayout;
        this.f69730b = appBarLayout;
        this.f69731c = view;
        this.f69732d = linearLayoutCompat;
        this.f69733e = coordinatorLayout;
        this.f69734f = bLFrameLayout;
        this.f69735g = frameLayout;
        this.f69736h = frameLayout2;
        this.f69737i = shortTvDownloadInfoExtendView;
        this.f69738j = appCompatImageView;
        this.f69739k = appCompatImageView2;
        this.f69740l = imageView;
        this.f69741m = shapeableImageView;
        this.f69742n = bLImageView;
        this.f69743o = bLImageView2;
        this.f69744p = progressBar;
        this.f69745q = progressBar2;
        this.f69746r = recyclerView;
        this.f69747s = recyclerView2;
        this.f69748t = tabLayout;
        this.f69749u = view2;
        this.f69750v = appCompatTextView;
        this.f69751w = appCompatTextView2;
        this.f69752x = textView;
        this.f69753y = appCompatTextView3;
        this.f69754z = appCompatTextView4;
        this.A = appCompatTextView5;
        this.B = appCompatTextView6;
        this.C = appCompatTextView7;
        this.D = appCompatTextView8;
        this.E = view3;
        this.F = view4;
        this.G = bLView;
        this.H = progressBar3;
    }

    public static d a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null && (viewA = g4.b.a(view, (i11 = R$id.bottom_line))) != null) {
            i11 = R$id.btn_download;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.cl_root;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                if (coordinatorLayout != null) {
                    i11 = R$id.fl_download_loading;
                    BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                    if (bLFrameLayout != null) {
                        i11 = R$id.fl_select_all_bg;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.fl_state;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                i11 = R$id.iev_info;
                                ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView = (ShortTvDownloadInfoExtendView) g4.b.a(view, i11);
                                if (shortTvDownloadInfoExtendView != null) {
                                    i11 = R$id.iv_btn_download_icon;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView != null) {
                                        i11 = R$id.iv_check;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView2 != null) {
                                            i11 = R$id.iv_close;
                                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                                            if (imageView != null) {
                                                i11 = R$id.iv_cover;
                                                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                                if (shapeableImageView != null) {
                                                    i11 = R$id.iv_favorite;
                                                    BLImageView bLImageView = (BLImageView) g4.b.a(view, i11);
                                                    if (bLImageView != null) {
                                                        i11 = R$id.iv_share;
                                                        BLImageView bLImageView2 = (BLImageView) g4.b.a(view, i11);
                                                        if (bLImageView2 != null) {
                                                            i11 = R$id.progress_bar_btn_download;
                                                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                                            if (progressBar != null) {
                                                                i11 = R$id.progress_bar_select_all;
                                                                ProgressBar progressBar2 = (ProgressBar) g4.b.a(view, i11);
                                                                if (progressBar2 != null) {
                                                                    i11 = R$id.recycler_view;
                                                                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                                    if (recyclerView != null) {
                                                                        i11 = R$id.recycler_view_tags;
                                                                        RecyclerView recyclerView2 = (RecyclerView) g4.b.a(view, i11);
                                                                        if (recyclerView2 != null) {
                                                                            i11 = R$id.tab_ep_title;
                                                                            TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                                                                            if (tabLayout != null && (viewA2 = g4.b.a(view, (i11 = R$id.title_line))) != null) {
                                                                                i11 = R$id.tv_btn_download;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                                if (appCompatTextView != null) {
                                                                                    i11 = R$id.tv_download_ep_count;
                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView2 != null) {
                                                                                        i11 = R$id.tv_download_title;
                                                                                        TextView textView = (TextView) g4.b.a(view, i11);
                                                                                        if (textView != null) {
                                                                                            i11 = R$id.tv_genre;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                            if (appCompatTextView3 != null) {
                                                                                                i11 = R$id.tv_play_title;
                                                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                if (appCompatTextView4 != null) {
                                                                                                    i11 = R$id.tv_select_all;
                                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                    if (appCompatTextView5 != null) {
                                                                                                        i11 = R$id.tv_tips;
                                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                        if (appCompatTextView6 != null) {
                                                                                                            i11 = R$id.tv_title;
                                                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                            if (appCompatTextView7 != null) {
                                                                                                                i11 = R$id.tv_title_2;
                                                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                                if (appCompatTextView8 != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_bottom))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.v_content_gap))) != null) {
                                                                                                                    i11 = R$id.v_play;
                                                                                                                    BLView bLView = (BLView) g4.b.a(view, i11);
                                                                                                                    if (bLView != null) {
                                                                                                                        i11 = R$id.view_load;
                                                                                                                        ProgressBar progressBar3 = (ProgressBar) g4.b.a(view, i11);
                                                                                                                        if (progressBar3 != null) {
                                                                                                                            return new d((BLConstraintLayout) view, appBarLayout, viewA, linearLayoutCompat, coordinatorLayout, bLFrameLayout, frameLayout, frameLayout2, shortTvDownloadInfoExtendView, appCompatImageView, appCompatImageView2, imageView, shapeableImageView, bLImageView, bLImageView2, progressBar, progressBar2, recyclerView, recyclerView2, tabLayout, viewA2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, viewA3, viewA4, bLView, progressBar3);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_fragment_download_res, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f69729a;
    }
}
