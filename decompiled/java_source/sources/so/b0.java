package so;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.MemberGuideBannerView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.LocalVideoMiddleHeaderView;
import com.transsion.publish.view.PublishStateView;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 implements g4.a {
    public final TextView A;
    public final TextView B;
    public final AppCompatTextView C;
    public final TextView D;
    public final TextView E;
    public final TextView F;
    public final View G;
    public final SimpleSubtitleView H;
    public final SimpleSubtitleView I;
    public final LinearLayout J;
    public final AppCompatTextView K;
    public final AppCompatImageView L;
    public final Group M;
    public final AppCompatImageView N;
    public final AppCompatImageView O;
    public final SecondariesSeekBar P;
    public final LinearLayout Q;
    public final TextView R;
    public final FrameLayout S;
    public final View T;
    public final ViewStub U;
    public final ViewStub V;
    public final ViewStub W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f75427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoordinatorLayout f75428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f75429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f75430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MemberGuideBannerView f75431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f75432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f75433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayoutCompat f75434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f75435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f75436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatImageView f75437l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final PublishStateView f75438m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final View f75439n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f75440o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final po.a f75441p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final fu.j f75442q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final MagicIndicator f75443r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ConstraintLayout f75444s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final NativeCardPageView f75445t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ViewPager2 f75446u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final LocalVideoMiddleHeaderView f75447v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final FrameLayout f75448w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final CollapsingToolbarLayout f75449x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final TextView f75450y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final TextView f75451z;

    private b0(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, MemberGuideBannerView memberGuideBannerView, FrameLayout frameLayout3, FrameLayout frameLayout4, LinearLayoutCompat linearLayoutCompat, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, PublishStateView publishStateView, View view2, View view3, po.a aVar, fu.j jVar, MagicIndicator magicIndicator, ConstraintLayout constraintLayout2, NativeCardPageView nativeCardPageView, ViewPager2 viewPager2, LocalVideoMiddleHeaderView localVideoMiddleHeaderView, FrameLayout frameLayout5, CollapsingToolbarLayout collapsingToolbarLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView, TextView textView5, TextView textView6, TextView textView7, View view4, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, LinearLayout linearLayout, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView3, Group group, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, SecondariesSeekBar secondariesSeekBar, LinearLayout linearLayout2, TextView textView8, FrameLayout frameLayout6, View view5, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3) {
        this.f75426a = constraintLayout;
        this.f75427b = appBarLayout;
        this.f75428c = coordinatorLayout;
        this.f75429d = frameLayout;
        this.f75430e = frameLayout2;
        this.f75431f = memberGuideBannerView;
        this.f75432g = frameLayout3;
        this.f75433h = frameLayout4;
        this.f75434i = linearLayoutCompat;
        this.f75435j = view;
        this.f75436k = appCompatImageView;
        this.f75437l = appCompatImageView2;
        this.f75438m = publishStateView;
        this.f75439n = view2;
        this.f75440o = view3;
        this.f75441p = aVar;
        this.f75442q = jVar;
        this.f75443r = magicIndicator;
        this.f75444s = constraintLayout2;
        this.f75445t = nativeCardPageView;
        this.f75446u = viewPager2;
        this.f75447v = localVideoMiddleHeaderView;
        this.f75448w = frameLayout5;
        this.f75449x = collapsingToolbarLayout;
        this.f75450y = textView;
        this.f75451z = textView2;
        this.A = textView3;
        this.B = textView4;
        this.C = appCompatTextView;
        this.D = textView5;
        this.E = textView6;
        this.F = textView7;
        this.G = view4;
        this.H = simpleSubtitleView;
        this.I = simpleSubtitleView2;
        this.J = linearLayout;
        this.K = appCompatTextView2;
        this.L = appCompatImageView3;
        this.M = group;
        this.N = appCompatImageView4;
        this.O = appCompatImageView5;
        this.P = secondariesSeekBar;
        this.Q = linearLayout2;
        this.R = textView8;
        this.S = frameLayout6;
        this.T = view5;
        this.U = viewStub;
        this.V = viewStub2;
        this.W = viewStub3;
    }

    public static b0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        int i11 = R$id.appBar;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            i11 = R$id.cdl;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
            if (coordinatorLayout != null) {
                i11 = R$id.fl_content_loading;
                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout != null) {
                    i11 = R$id.fl_download_tips;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        i11 = R$id.flPremiumGroup;
                        MemberGuideBannerView memberGuideBannerView = (MemberGuideBannerView) g4.b.a(view, i11);
                        if (memberGuideBannerView != null) {
                            i11 = R$id.flRootSubtitle;
                            FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout3 != null) {
                                i11 = R$id.fl_series_list_container;
                                FrameLayout frameLayout4 = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout4 != null) {
                                    i11 = R$id.flSubtitle;
                                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                    if (linearLayoutCompat != null && (viewA = g4.b.a(view, (i11 = R$id.guideline))) != null) {
                                        i11 = R$id.iv_feedback;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView != null) {
                                            i11 = R$id.iv_float;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                            if (appCompatImageView2 != null) {
                                                i11 = R$id.ivPublish;
                                                PublishStateView publishStateView = (PublishStateView) g4.b.a(view, i11);
                                                if (publishStateView != null && (viewA2 = g4.b.a(view, (i11 = R$id.land_view1))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.land_view2))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.layout_bv))) != null) {
                                                    po.a aVarA = po.a.a(viewA4);
                                                    i11 = R$id.layout_sync_adjust;
                                                    View viewA7 = g4.b.a(view, i11);
                                                    if (viewA7 != null) {
                                                        fu.j jVarA = fu.j.a(viewA7);
                                                        i11 = R$id.magic_indicator;
                                                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                                        if (magicIndicator != null) {
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                            i11 = R$id.nativeSlideshowView;
                                                            NativeCardPageView nativeCardPageView = (NativeCardPageView) g4.b.a(view, i11);
                                                            if (nativeCardPageView != null) {
                                                                i11 = R$id.rec_view_pager;
                                                                ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                                if (viewPager2 != null) {
                                                                    i11 = R$id.resourceHeaderView;
                                                                    LocalVideoMiddleHeaderView localVideoMiddleHeaderView = (LocalVideoMiddleHeaderView) g4.b.a(view, i11);
                                                                    if (localVideoMiddleHeaderView != null) {
                                                                        i11 = R$id.subjectDetailLayout;
                                                                        FrameLayout frameLayout5 = (FrameLayout) g4.b.a(view, i11);
                                                                        if (frameLayout5 != null) {
                                                                            i11 = R$id.toolbar_layout;
                                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                                            if (collapsingToolbarLayout != null) {
                                                                                i11 = R$id.tv_download_btn;
                                                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                                                if (textView != null) {
                                                                                    i11 = R$id.tv_download_tips;
                                                                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                                                                    if (textView2 != null) {
                                                                                        i11 = R$id.tvHelpTip;
                                                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                                                        if (textView3 != null) {
                                                                                            i11 = R$id.tv_loading;
                                                                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                                                                            if (textView4 != null) {
                                                                                                i11 = R$id.tvPressSpeed;
                                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                if (appCompatTextView != null) {
                                                                                                    i11 = R$id.tv_speed;
                                                                                                    TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                                                    if (textView5 != null) {
                                                                                                        i11 = R$id.tv_toast_1;
                                                                                                        TextView textView6 = (TextView) g4.b.a(view, i11);
                                                                                                        if (textView6 != null) {
                                                                                                            i11 = R$id.tv_toast_2;
                                                                                                            TextView textView7 = (TextView) g4.b.a(view, i11);
                                                                                                            if (textView7 != null && (viewA5 = g4.b.a(view, (i11 = R$id.v_gesture))) != null) {
                                                                                                                i11 = R$id.vSubtitleBottom;
                                                                                                                SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) g4.b.a(view, i11);
                                                                                                                if (simpleSubtitleView != null) {
                                                                                                                    i11 = R$id.vSubtitleTop;
                                                                                                                    SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) g4.b.a(view, i11);
                                                                                                                    if (simpleSubtitleView2 != null) {
                                                                                                                        i11 = R$id.vd_land_bottom_controller;
                                                                                                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                                                                                        if (linearLayout != null) {
                                                                                                                            i11 = R$id.vd_land_center_progress;
                                                                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                                            if (appCompatTextView2 != null) {
                                                                                                                                i11 = R$id.vd_land_iv_back;
                                                                                                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                                                                                                                if (appCompatImageView3 != null) {
                                                                                                                                    i11 = R$id.vd_land_toolbar;
                                                                                                                                    Group group = (Group) g4.b.a(view, i11);
                                                                                                                                    if (group != null) {
                                                                                                                                        i11 = R$id.vd_pause;
                                                                                                                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                                                                                                                                        if (appCompatImageView4 != null) {
                                                                                                                                            i11 = R$id.vd_screen_change;
                                                                                                                                            AppCompatImageView appCompatImageView5 = (AppCompatImageView) g4.b.a(view, i11);
                                                                                                                                            if (appCompatImageView5 != null) {
                                                                                                                                                i11 = R$id.vd_seekbar;
                                                                                                                                                SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) g4.b.a(view, i11);
                                                                                                                                                if (secondariesSeekBar != null) {
                                                                                                                                                    i11 = R$id.vd_surface_loading;
                                                                                                                                                    LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                                                                                                                                    if (linearLayout2 != null) {
                                                                                                                                                        i11 = R$id.vd_video_time;
                                                                                                                                                        TextView textView8 = (TextView) g4.b.a(view, i11);
                                                                                                                                                        if (textView8 != null) {
                                                                                                                                                            i11 = R$id.video_land_surface;
                                                                                                                                                            FrameLayout frameLayout6 = (FrameLayout) g4.b.a(view, i11);
                                                                                                                                                            if (frameLayout6 != null && (viewA6 = g4.b.a(view, (i11 = R$id.video_middle_player_bg))) != null) {
                                                                                                                                                                i11 = R$id.vs_forward_middle;
                                                                                                                                                                ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                                                                                                                                if (viewStub != null) {
                                                                                                                                                                    i11 = R$id.vs_load_failed;
                                                                                                                                                                    ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
                                                                                                                                                                    if (viewStub2 != null) {
                                                                                                                                                                        i11 = R$id.vs_replay;
                                                                                                                                                                        ViewStub viewStub3 = (ViewStub) g4.b.a(view, i11);
                                                                                                                                                                        if (viewStub3 != null) {
                                                                                                                                                                            return new b0(constraintLayout, appBarLayout, coordinatorLayout, frameLayout, frameLayout2, memberGuideBannerView, frameLayout3, frameLayout4, linearLayoutCompat, viewA, appCompatImageView, appCompatImageView2, publishStateView, viewA2, viewA3, aVarA, jVarA, magicIndicator, constraintLayout, nativeCardPageView, viewPager2, localVideoMiddleHeaderView, frameLayout5, collapsingToolbarLayout, textView, textView2, textView3, textView4, appCompatTextView, textView5, textView6, textView7, viewA5, simpleSubtitleView, simpleSubtitleView2, linearLayout, appCompatTextView2, appCompatImageView3, group, appCompatImageView4, appCompatImageView5, secondariesSeekBar, linearLayout2, textView8, frameLayout6, viewA6, viewStub, viewStub2, viewStub3);
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

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75426a;
    }
}
