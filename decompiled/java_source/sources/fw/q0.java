package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class q0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f62858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f62859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ExpandView f62860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLFrameLayout f62861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f62862f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f62863g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f62864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShapeableImageView f62865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f62866j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f62867k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f62868l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final LinearLayout f62869m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final MagicIndicator f62870n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final PileLayout f62871o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final LinearLayout f62872p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f62873q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f62874r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RoomJoinAnimationView f62875s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final RoomJoinAnimationView f62876t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f62877u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final View f62878v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final TnTextView f62879w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ViewPager2 f62880x;

    private q0(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, ExpandView expandView, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, View view, ImageView imageView, LinearLayout linearLayout, MagicIndicator magicIndicator, PileLayout pileLayout, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RoomJoinAnimationView roomJoinAnimationView, RoomJoinAnimationView roomJoinAnimationView2, View view2, View view3, TnTextView tnTextView, ViewPager2 viewPager2) {
        this.f62857a = constraintLayout;
        this.f62858b = appBarLayout;
        this.f62859c = constraintLayout2;
        this.f62860d = expandView;
        this.f62861e = bLFrameLayout;
        this.f62862f = frameLayout;
        this.f62863g = appCompatImageView;
        this.f62864h = appCompatImageView2;
        this.f62865i = shapeableImageView;
        this.f62866j = appCompatImageView3;
        this.f62867k = view;
        this.f62868l = imageView;
        this.f62869m = linearLayout;
        this.f62870n = magicIndicator;
        this.f62871o = pileLayout;
        this.f62872p = linearLayout2;
        this.f62873q = appCompatTextView;
        this.f62874r = appCompatTextView2;
        this.f62875s = roomJoinAnimationView;
        this.f62876t = roomJoinAnimationView2;
        this.f62877u = view2;
        this.f62878v = view3;
        this.f62879w = tnTextView;
        this.f62880x = viewPager2;
    }

    public static q0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            i11 = R$id.cl_top_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.ev_room_des;
                ExpandView expandView = (ExpandView) g4.b.a(view, i11);
                if (expandView != null) {
                    i11 = R$id.fl_tab;
                    BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                    if (bLFrameLayout != null) {
                        i11 = R$id.flTabBg;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.iv_back;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView != null) {
                                i11 = R$id.iv_publish;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView2 != null) {
                                    i11 = R$id.iv_room_cover;
                                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                    if (shapeableImageView != null) {
                                        i11 = R$id.iv_share;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView3 != null && (viewA = g4.b.a(view, (i11 = R$id.iv_top_bg))) != null) {
                                            i11 = R$id.iv_top_bg_mask;
                                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                                            if (imageView != null) {
                                                i11 = R$id.ll_header_root;
                                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                if (linearLayout != null) {
                                                    i11 = R$id.magic_indicator;
                                                    MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                                    if (magicIndicator != null) {
                                                        i11 = R$id.pl_member_ic;
                                                        PileLayout pileLayout = (PileLayout) g4.b.a(view, i11);
                                                        if (pileLayout != null) {
                                                            i11 = R$id.titleContainer;
                                                            LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                                            if (linearLayout2 != null) {
                                                                i11 = R$id.tv_member;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView != null) {
                                                                    i11 = R$id.tv_title;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView2 != null) {
                                                                        i11 = R$id.v_join;
                                                                        RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) g4.b.a(view, i11);
                                                                        if (roomJoinAnimationView != null) {
                                                                            i11 = R$id.v_join_collapsed;
                                                                            RoomJoinAnimationView roomJoinAnimationView2 = (RoomJoinAnimationView) g4.b.a(view, i11);
                                                                            if (roomJoinAnimationView2 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_title_bar_bg))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_top_bg_color))) != null) {
                                                                                i11 = R$id.videoCountText;
                                                                                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                                                                                if (tnTextView != null) {
                                                                                    i11 = R$id.view_pager;
                                                                                    ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                                                    if (viewPager2 != null) {
                                                                                        return new q0((ConstraintLayout) view, appBarLayout, constraintLayout, expandView, bLFrameLayout, frameLayout, appCompatImageView, appCompatImageView2, shapeableImageView, appCompatImageView3, viewA, imageView, linearLayout, magicIndicator, pileLayout, linearLayout2, appCompatTextView, appCompatTextView2, roomJoinAnimationView, roomJoinAnimationView2, viewA2, viewA3, tnTextView, viewPager2);
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

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62857a;
    }
}
