package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class t0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f62910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLView f62911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f62912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f62913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f62914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLView f62915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f62916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GradientTextView f62917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TnTextView f62918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TnTextView f62919j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TnTextView f62920k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Guideline f62921l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final BLView f62922m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TnTextView f62923n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TnTextView f62924o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TnTextView f62925p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final BLView f62926q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final GradientBorderView f62927r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final TnTextView f62928s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final GradientTextView f62929t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final RecyclerView f62930u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final GradientBorderView f62931v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final BLView f62932w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AppCompatImageView f62933x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final TnTextView f62934y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AppCompatImageView f62935z;

    private t0(BLConstraintLayout bLConstraintLayout, BLView bLView, TnTextView tnTextView, TnTextView tnTextView2, TnTextView tnTextView3, BLView bLView2, TnTextView tnTextView4, GradientTextView gradientTextView, TnTextView tnTextView5, TnTextView tnTextView6, TnTextView tnTextView7, Guideline guideline, BLView bLView3, TnTextView tnTextView8, TnTextView tnTextView9, TnTextView tnTextView10, BLView bLView4, GradientBorderView gradientBorderView, TnTextView tnTextView11, GradientTextView gradientTextView2, RecyclerView recyclerView, GradientBorderView gradientBorderView2, BLView bLView5, AppCompatImageView appCompatImageView, TnTextView tnTextView12, AppCompatImageView appCompatImageView2) {
        this.f62910a = bLConstraintLayout;
        this.f62911b = bLView;
        this.f62912c = tnTextView;
        this.f62913d = tnTextView2;
        this.f62914e = tnTextView3;
        this.f62915f = bLView2;
        this.f62916g = tnTextView4;
        this.f62917h = gradientTextView;
        this.f62918i = tnTextView5;
        this.f62919j = tnTextView6;
        this.f62920k = tnTextView7;
        this.f62921l = guideline;
        this.f62922m = bLView3;
        this.f62923n = tnTextView8;
        this.f62924o = tnTextView9;
        this.f62925p = tnTextView10;
        this.f62926q = bLView4;
        this.f62927r = gradientBorderView;
        this.f62928s = tnTextView11;
        this.f62929t = gradientTextView2;
        this.f62930u = recyclerView;
        this.f62931v = gradientBorderView2;
        this.f62932w = bLView5;
        this.f62933x = appCompatImageView;
        this.f62934y = tnTextView12;
        this.f62935z = appCompatImageView2;
    }

    public static t0 a(View view) {
        int i11 = R$id.basicColumnBackground;
        BLView bLView = (BLView) g4.b.a(view, i11);
        if (bLView != null) {
            i11 = R$id.basicColumnTitle;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                i11 = R$id.basicLinkedCount;
                TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                if (tnTextView2 != null) {
                    i11 = R$id.basicLinkedLabel;
                    TnTextView tnTextView3 = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView3 != null) {
                        i11 = R$id.basicPlanBackground;
                        BLView bLView2 = (BLView) g4.b.a(view, i11);
                        if (bLView2 != null) {
                            i11 = R$id.basicPlanSubtitle;
                            TnTextView tnTextView4 = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView4 != null) {
                                i11 = R$id.basicPlanTitle;
                                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                if (gradientTextView != null) {
                                    i11 = R$id.basicSubtitle;
                                    TnTextView tnTextView5 = (TnTextView) g4.b.a(view, i11);
                                    if (tnTextView5 != null) {
                                        i11 = R$id.basicTitle;
                                        TnTextView tnTextView6 = (TnTextView) g4.b.a(view, i11);
                                        if (tnTextView6 != null) {
                                            i11 = R$id.featuresTitle;
                                            TnTextView tnTextView7 = (TnTextView) g4.b.a(view, i11);
                                            if (tnTextView7 != null) {
                                                i11 = R$id.planDivider;
                                                Guideline guideline = (Guideline) g4.b.a(view, i11);
                                                if (guideline != null) {
                                                    i11 = R$id.proColumnBackground;
                                                    BLView bLView3 = (BLView) g4.b.a(view, i11);
                                                    if (bLView3 != null) {
                                                        i11 = R$id.proColumnTitle;
                                                        TnTextView tnTextView8 = (TnTextView) g4.b.a(view, i11);
                                                        if (tnTextView8 != null) {
                                                            i11 = R$id.proLinkedCount;
                                                            TnTextView tnTextView9 = (TnTextView) g4.b.a(view, i11);
                                                            if (tnTextView9 != null) {
                                                                i11 = R$id.proLinkedLabel;
                                                                TnTextView tnTextView10 = (TnTextView) g4.b.a(view, i11);
                                                                if (tnTextView10 != null) {
                                                                    i11 = R$id.proPlanBackground;
                                                                    BLView bLView4 = (BLView) g4.b.a(view, i11);
                                                                    if (bLView4 != null) {
                                                                        i11 = R$id.proPlanBorder;
                                                                        GradientBorderView gradientBorderView = (GradientBorderView) g4.b.a(view, i11);
                                                                        if (gradientBorderView != null) {
                                                                            i11 = R$id.proPlanSubtitle;
                                                                            TnTextView tnTextView11 = (TnTextView) g4.b.a(view, i11);
                                                                            if (tnTextView11 != null) {
                                                                                i11 = R$id.proPlanTitle;
                                                                                GradientTextView gradientTextView2 = (GradientTextView) g4.b.a(view, i11);
                                                                                if (gradientTextView2 != null) {
                                                                                    i11 = R$id.rightsList;
                                                                                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                                                    if (recyclerView != null) {
                                                                                        i11 = R$id.scanButtonBorder;
                                                                                        GradientBorderView gradientBorderView2 = (GradientBorderView) g4.b.a(view, i11);
                                                                                        if (gradientBorderView2 != null) {
                                                                                            i11 = R$id.unlockProButton;
                                                                                            BLView bLView5 = (BLView) g4.b.a(view, i11);
                                                                                            if (bLView5 != null) {
                                                                                                i11 = R$id.unlockProIcon;
                                                                                                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                                                                                if (appCompatImageView != null) {
                                                                                                    i11 = R$id.unlockProText;
                                                                                                    TnTextView tnTextView12 = (TnTextView) g4.b.a(view, i11);
                                                                                                    if (tnTextView12 != null) {
                                                                                                        i11 = R$id.upgradeArrow;
                                                                                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                                                                                        if (appCompatImageView2 != null) {
                                                                                                            return new t0((BLConstraintLayout) view, bLView, tnTextView, tnTextView2, tnTextView3, bLView2, tnTextView4, gradientTextView, tnTextView5, tnTextView6, tnTextView7, guideline, bLView3, tnTextView8, tnTextView9, tnTextView10, bLView4, gradientBorderView, tnTextView11, gradientTextView2, recyclerView, gradientBorderView2, bLView5, appCompatImageView, tnTextView12, appCompatImageView2);
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

    public static t0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_device_management_basic_rights, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f62910a;
    }
}
