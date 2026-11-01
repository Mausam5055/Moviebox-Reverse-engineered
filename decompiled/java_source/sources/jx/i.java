package jx;

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
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BubbleTextView f66423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppBarLayout f66424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DownloadView f66425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoordinatorLayout f66426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f66427f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f66428g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f66429h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FrameLayout f66430i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MemberGuideBannerView f66431j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FrameLayout f66432k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatImageView f66433l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatImageView f66434m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ho.h f66435n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final MagicIndicator f66436o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final NativeCardPageView f66437p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ViewPager2 f66438q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final FrameLayout f66439r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final FrameLayout f66440s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CollapsingToolbarLayout f66441t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final GradientTextView f66442u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final View f66443v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final View f66444w;

    private i(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, MemberGuideBannerView memberGuideBannerView, FrameLayout frameLayout5, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ho.h hVar, MagicIndicator magicIndicator, NativeCardPageView nativeCardPageView, ViewPager2 viewPager2, FrameLayout frameLayout6, FrameLayout frameLayout7, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view, View view2) {
        this.f66422a = constraintLayout;
        this.f66423b = bubbleTextView;
        this.f66424c = appBarLayout;
        this.f66425d = downloadView;
        this.f66426e = coordinatorLayout;
        this.f66427f = frameLayout;
        this.f66428g = frameLayout2;
        this.f66429h = frameLayout3;
        this.f66430i = frameLayout4;
        this.f66431j = memberGuideBannerView;
        this.f66432k = frameLayout5;
        this.f66433l = appCompatImageView;
        this.f66434m = appCompatImageView2;
        this.f66435n = hVar;
        this.f66436o = magicIndicator;
        this.f66437p = nativeCardPageView;
        this.f66438q = viewPager2;
        this.f66439r = frameLayout6;
        this.f66440s = frameLayout7;
        this.f66441t = collapsingToolbarLayout;
        this.f66442u = gradientTextView;
        this.f66443v = view;
        this.f66444w = view2;
    }

    public static i a(View view) {
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
                                                            i11 = R$id.nativeSlideshowView;
                                                            NativeCardPageView nativeCardPageView = (NativeCardPageView) g4.b.a(view, i11);
                                                            if (nativeCardPageView != null) {
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
                                                                                    return new i((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, memberGuideBannerView, frameLayout5, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, nativeCardPageView, viewPager2, frameLayout6, frameLayout7, collapsingToolbarLayout, gradientTextView, viewA2, viewA3);
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

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66422a;
    }
}
