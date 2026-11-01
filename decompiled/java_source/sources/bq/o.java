package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f16822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f16823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ExpandView f16824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f16825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Group f16826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f16827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f16828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShapeableImageView f16829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f16830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f16831k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinearLayout f16832l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final MagicIndicator f16833m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final PileLayout f16834n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f16835o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final GradientTextView f16836p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f16837q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final RoomJoinAnimationView f16838r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f16839s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ViewPager2 f16840t;

    private o(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, ExpandView expandView, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, ImageView imageView, LinearLayout linearLayout, MagicIndicator magicIndicator, PileLayout pileLayout, AppCompatTextView appCompatTextView, GradientTextView gradientTextView, AppCompatTextView appCompatTextView2, RoomJoinAnimationView roomJoinAnimationView, View view, ViewPager2 viewPager2) {
        this.f16821a = constraintLayout;
        this.f16822b = appBarLayout;
        this.f16823c = constraintLayout2;
        this.f16824d = expandView;
        this.f16825e = frameLayout;
        this.f16826f = group;
        this.f16827g = appCompatImageView;
        this.f16828h = appCompatImageView2;
        this.f16829i = shapeableImageView;
        this.f16830j = appCompatImageView3;
        this.f16831k = imageView;
        this.f16832l = linearLayout;
        this.f16833m = magicIndicator;
        this.f16834n = pileLayout;
        this.f16835o = appCompatTextView;
        this.f16836p = gradientTextView;
        this.f16837q = appCompatTextView2;
        this.f16838r = roomJoinAnimationView;
        this.f16839s = view;
        this.f16840t = viewPager2;
    }

    public static o a(View view) {
        View viewA;
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
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.group_member;
                        Group group = (Group) g4.b.a(view, i11);
                        if (group != null) {
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
                                        if (appCompatImageView3 != null) {
                                            i11 = R$id.iv_top_bg;
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
                                                            i11 = R$id.tv_member;
                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView != null) {
                                                                i11 = R$id.tv_post;
                                                                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                                                if (gradientTextView != null) {
                                                                    i11 = R$id.tv_title;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView2 != null) {
                                                                        i11 = R$id.v_join;
                                                                        RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) g4.b.a(view, i11);
                                                                        if (roomJoinAnimationView != null && (viewA = g4.b.a(view, (i11 = R$id.v_title_bar_bg))) != null) {
                                                                            i11 = R$id.view_pager;
                                                                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                                            if (viewPager2 != null) {
                                                                                return new o((ConstraintLayout) view, appBarLayout, constraintLayout, expandView, frameLayout, group, appCompatImageView, appCompatImageView2, shapeableImageView, appCompatImageView3, imageView, linearLayout, magicIndicator, pileLayout, appCompatTextView, gradientTextView, appCompatTextView2, roomJoinAnimationView, viewA, viewPager2);
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

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_detail_new, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16821a;
    }
}
