package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.MemberGuideBannerView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BubbleTextView f17355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppBarLayout f17356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DownloadView f17357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoordinatorLayout f17358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f17359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f17360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f17361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FrameLayout f17362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MemberGuideBannerView f17363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FrameLayout f17364k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatImageView f17365l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatImageView f17366m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ho.h f17367n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final MagicIndicator f17368o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ViewPager2 f17369p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final FrameLayout f17370q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final FrameLayout f17371r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final CollapsingToolbarLayout f17372s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final GradientTextView f17373t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f17374u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final View f17375v;

    private h(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, MemberGuideBannerView memberGuideBannerView, FrameLayout frameLayout5, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ho.h hVar, MagicIndicator magicIndicator, ViewPager2 viewPager2, FrameLayout frameLayout6, FrameLayout frameLayout7, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view, View view2) {
        this.f17354a = constraintLayout;
        this.f17355b = bubbleTextView;
        this.f17356c = appBarLayout;
        this.f17357d = downloadView;
        this.f17358e = coordinatorLayout;
        this.f17359f = frameLayout;
        this.f17360g = frameLayout2;
        this.f17361h = frameLayout3;
        this.f17362i = frameLayout4;
        this.f17363j = memberGuideBannerView;
        this.f17364k = frameLayout5;
        this.f17365l = appCompatImageView;
        this.f17366m = appCompatImageView2;
        this.f17367n = hVar;
        this.f17368o = magicIndicator;
        this.f17369p = viewPager2;
        this.f17370q = frameLayout6;
        this.f17371r = frameLayout7;
        this.f17372s = collapsingToolbarLayout;
        this.f17373t = gradientTextView;
        this.f17374u = view;
        this.f17375v = view2;
    }

    public static h a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) g4.b.a(view, i11);
        if (bubbleTextView != null) {
            i11 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
            if (appBarLayout != null) {
                i11 = R$id.btn_download;
                DownloadView downloadView = (DownloadView) g4.b.a(view, i11);
                if (downloadView != null) {
                    i11 = R$id.cdl;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                    if (coordinatorLayout != null) {
                        i11 = R$id.fl_bottom_dialog_container;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.fl_full_player_container;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                i11 = R$id.fl_player;
                                FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout3 != null) {
                                    i11 = R$id.flPortraitPremium;
                                    FrameLayout frameLayout4 = (FrameLayout) g4.b.a(view, i11);
                                    if (frameLayout4 != null) {
                                        i11 = R$id.flPremiumGroup;
                                        MemberGuideBannerView memberGuideBannerView = (MemberGuideBannerView) g4.b.a(view, i11);
                                        if (memberGuideBannerView != null) {
                                            i11 = R$id.game_container;
                                            FrameLayout frameLayout5 = (FrameLayout) g4.b.a(view, i11);
                                            if (frameLayout5 != null) {
                                                i11 = R$id.ivBack;
                                                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                                if (appCompatImageView != null) {
                                                    i11 = R$id.iv_publish;
                                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                                    if (appCompatImageView2 != null && (viewA = g4.b.a(view, (i11 = R$id.layout_sync_adjust))) != null) {
                                                        ho.h hVarA = ho.h.a(viewA);
                                                        i11 = R$id.magic_indicator;
                                                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                                        if (magicIndicator != null) {
                                                            i11 = R$id.rec_view_pager;
                                                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                            if (viewPager2 != null) {
                                                                i11 = R$id.resourceDetectorGroup;
                                                                FrameLayout frameLayout6 = (FrameLayout) g4.b.a(view, i11);
                                                                if (frameLayout6 != null) {
                                                                    i11 = R$id.subjectDetailLayout;
                                                                    FrameLayout frameLayout7 = (FrameLayout) g4.b.a(view, i11);
                                                                    if (frameLayout7 != null) {
                                                                        i11 = R$id.toolbar_layout;
                                                                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                                        if (collapsingToolbarLayout != null) {
                                                                            i11 = R$id.tv_post;
                                                                            GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                                                            if (gradientTextView != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_player_bottom_space))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_top_space))) != null) {
                                                                                return new h((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, memberGuideBannerView, frameLayout5, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, viewPager2, frameLayout6, frameLayout7, collapsingToolbarLayout, gradientTextView, viewA2, viewA3);
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

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_movie_detail_v2_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17354a;
    }
}
