package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.noober.background.view.BLView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailAboutCourseView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UGCVideoDetailAboutCourseView f73760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppBarLayout f73761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoordinatorLayout f73762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UGCVideoDetailInfoView f73763e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f73764f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f73765g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f73766h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f73767i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f73768j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final UGCLocalVideoDetailInfoView f73769k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final MagicIndicator f73770l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final NativeCardPageView f73771m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final UGCVideoDetailPlayListView f73772n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final CollapsingToolbarLayout f73773o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final BLView f73774p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f73775q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f73776r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ViewPager2 f73777s;

    private i(ConstraintLayout constraintLayout, UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, UGCVideoDetailInfoView uGCVideoDetailInfoView, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, AppCompatImageView appCompatImageView, LinearLayout linearLayout, UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView, MagicIndicator magicIndicator, NativeCardPageView nativeCardPageView, UGCVideoDetailPlayListView uGCVideoDetailPlayListView, CollapsingToolbarLayout collapsingToolbarLayout, BLView bLView, View view, View view2, ViewPager2 viewPager2) {
        this.f73759a = constraintLayout;
        this.f73760b = uGCVideoDetailAboutCourseView;
        this.f73761c = appBarLayout;
        this.f73762d = coordinatorLayout;
        this.f73763e = uGCVideoDetailInfoView;
        this.f73764f = frameLayout;
        this.f73765g = frameLayout2;
        this.f73766h = frameLayout3;
        this.f73767i = appCompatImageView;
        this.f73768j = linearLayout;
        this.f73769k = uGCLocalVideoDetailInfoView;
        this.f73770l = magicIndicator;
        this.f73771m = nativeCardPageView;
        this.f73772n = uGCVideoDetailPlayListView;
        this.f73773o = collapsingToolbarLayout;
        this.f73774p = bLView;
        this.f73775q = view;
        this.f73776r = view2;
        this.f73777s = viewPager2;
    }

    public static i a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.aboutCourseView;
        UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView = (UGCVideoDetailAboutCourseView) g4.b.a(view, i11);
        if (uGCVideoDetailAboutCourseView != null) {
            i11 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
            if (appBarLayout != null) {
                i11 = R$id.cdl;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                if (coordinatorLayout != null) {
                    i11 = R$id.detailInfoView;
                    UGCVideoDetailInfoView uGCVideoDetailInfoView = (UGCVideoDetailInfoView) g4.b.a(view, i11);
                    if (uGCVideoDetailInfoView != null) {
                        i11 = R$id.flBottomDialogContainer;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.fl_player;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                i11 = R$id.gameContainer;
                                FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout3 != null) {
                                    i11 = R$id.ivBack;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView != null) {
                                        i11 = R$id.llDetailContent;
                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout != null) {
                                            i11 = R$id.localDetailInfoView;
                                            UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView = (UGCLocalVideoDetailInfoView) g4.b.a(view, i11);
                                            if (uGCLocalVideoDetailInfoView != null) {
                                                i11 = R$id.magicIndicator;
                                                MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                                if (magicIndicator != null) {
                                                    i11 = R$id.nativeSlideshowView;
                                                    NativeCardPageView nativeCardPageView = (NativeCardPageView) g4.b.a(view, i11);
                                                    if (nativeCardPageView != null) {
                                                        i11 = R$id.playListView;
                                                        UGCVideoDetailPlayListView uGCVideoDetailPlayListView = (UGCVideoDetailPlayListView) g4.b.a(view, i11);
                                                        if (uGCVideoDetailPlayListView != null) {
                                                            i11 = R$id.toolbar_layout;
                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                            if (collapsingToolbarLayout != null) {
                                                                i11 = R$id.v_player_bottom_space;
                                                                BLView bLView = (BLView) g4.b.a(view, i11);
                                                                if (bLView != null && (viewA = g4.b.a(view, (i11 = R$id.vTabLine))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_top_space))) != null) {
                                                                    i11 = R$id.viewPager;
                                                                    ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                                    if (viewPager2 != null) {
                                                                        return new i((ConstraintLayout) view, uGCVideoDetailAboutCourseView, appBarLayout, coordinatorLayout, uGCVideoDetailInfoView, frameLayout, frameLayout2, frameLayout3, appCompatImageView, linearLayout, uGCLocalVideoDetailInfoView, magicIndicator, nativeCardPageView, uGCVideoDetailPlayListView, collapsingToolbarLayout, bLView, viewA, viewA2, viewPager2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73759a;
    }
}
