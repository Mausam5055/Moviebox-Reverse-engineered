package au;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.tabs.TabLayout;
import com.transsion.subroom.R$id;
import com.transsion.subroom.R$layout;
import com.transsion.wrapperad.view.secondfloor.SecondFloorArcCoverView;
import com.transsion.wrapperad.view.secondfloor.TrendingTwoLevelIrregularView;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecondFloorArcCoverView f16127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f16128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f16129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Group f16130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f16131f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f16132g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f16133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f16134i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f16135j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TrendingTwoLevelIrregularView f16136k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f16137l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TabLayout f16138m;

    private a(ConstraintLayout constraintLayout, SecondFloorArcCoverView secondFloorArcCoverView, View view, FrameLayout frameLayout, Group group, View view2, ImageView imageView, View view3, View view4, ImageView imageView2, TrendingTwoLevelIrregularView trendingTwoLevelIrregularView, ImageView imageView3, TabLayout tabLayout) {
        this.f16126a = constraintLayout;
        this.f16127b = secondFloorArcCoverView;
        this.f16128c = view;
        this.f16129d = frameLayout;
        this.f16130e = group;
        this.f16131f = view2;
        this.f16132g = imageView;
        this.f16133h = view3;
        this.f16134i = view4;
        this.f16135j = imageView2;
        this.f16136k = trendingTwoLevelIrregularView;
        this.f16137l = imageView3;
        this.f16138m = tabLayout;
    }

    public static a a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.arcCover;
        SecondFloorArcCoverView secondFloorArcCoverView = (SecondFloorArcCoverView) g4.b.a(view, i11);
        if (secondFloorArcCoverView != null && (viewA = g4.b.a(view, (i11 = R$id.centerBg))) != null) {
            i11 = R$id.container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.largeBottomBg;
                Group group = (Group) g4.b.a(view, i11);
                if (group != null && (viewA2 = g4.b.a(view, (i11 = R$id.leftBg))) != null) {
                    i11 = R$id.leftTwoBg;
                    ImageView imageView = (ImageView) g4.b.a(view, i11);
                    if (imageView != null && (viewA3 = g4.b.a(view, (i11 = R$id.main_bottom_view))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.rightBg))) != null) {
                        i11 = R$id.rightTwoBg;
                        ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                        if (imageView2 != null) {
                            i11 = R$id.secondFloorAdView;
                            TrendingTwoLevelIrregularView trendingTwoLevelIrregularView = (TrendingTwoLevelIrregularView) g4.b.a(view, i11);
                            if (trendingTwoLevelIrregularView != null) {
                                i11 = R$id.tabBg;
                                ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                                if (imageView3 != null) {
                                    i11 = R$id.tab_bottom;
                                    TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                                    if (tabLayout != null) {
                                        return new a((ConstraintLayout) view, secondFloorArcCoverView, viewA, frameLayout, group, viewA2, imageView, viewA3, viewA4, imageView2, trendingTwoLevelIrregularView, imageView3, tabLayout);
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

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16126a;
    }
}
