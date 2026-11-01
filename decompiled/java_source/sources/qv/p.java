package qv;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class p implements g4.a {
    public final View A;
    public final View B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f73823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Barrier f73824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLTextView f73825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Group f73826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Group f73827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f73828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f73829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f73830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShapeableImageView f73831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f73832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProgressBar f73833k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RecyclerView f73834l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f73835m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final BLTextView f73836n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f73837o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f73838p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f73839q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f73840r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final BLTextView f73841s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final BLTextView f73842t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AppCompatTextView f73843u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AppCompatTextView f73844v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final AppCompatTextView f73845w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AppCompatTextView f73846x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final AppCompatTextView f73847y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AppCompatTextView f73848z;

    private p(View view, Barrier barrier, BLTextView bLTextView, Group group, Group group2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ShapeableImageView shapeableImageView, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, BLTextView bLTextView3, BLTextView bLTextView4, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, View view2, View view3) {
        this.f73823a = view;
        this.f73824b = barrier;
        this.f73825c = bLTextView;
        this.f73826d = group;
        this.f73827e = group2;
        this.f73828f = appCompatImageView;
        this.f73829g = appCompatImageView2;
        this.f73830h = appCompatImageView3;
        this.f73831i = shapeableImageView;
        this.f73832j = linearLayout;
        this.f73833k = progressBar;
        this.f73834l = recyclerView;
        this.f73835m = appCompatTextView;
        this.f73836n = bLTextView2;
        this.f73837o = appCompatTextView2;
        this.f73838p = appCompatTextView3;
        this.f73839q = appCompatTextView4;
        this.f73840r = appCompatTextView5;
        this.f73841s = bLTextView3;
        this.f73842t = bLTextView4;
        this.f73843u = appCompatTextView6;
        this.f73844v = appCompatTextView7;
        this.f73845w = appCompatTextView8;
        this.f73846x = appCompatTextView9;
        this.f73847y = appCompatTextView10;
        this.f73848z = appCompatTextView11;
        this.A = view2;
        this.B = view3;
    }

    public static p a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.barrierButtons;
        Barrier barrier = (Barrier) g4.b.a(view, i11);
        if (barrier != null) {
            i11 = R$id.bgAutoplay;
            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
            if (bLTextView != null) {
                i11 = R$id.groupAutoplay;
                Group group = (Group) g4.b.a(view, i11);
                if (group != null) {
                    i11 = R$id.groupStandardButtons;
                    Group group2 = (Group) g4.b.a(view, i11);
                    if (group2 != null) {
                        i11 = R$id.ivAutoplayClose;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.ivAutoplayIcon;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.ivPostType;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView3 != null) {
                                    i11 = R$id.ivUserCover;
                                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                    if (shapeableImageView != null) {
                                        i11 = R$id.llKidsModeButtons;
                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout != null) {
                                            i11 = R$id.pbSubscribeLoading;
                                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                            if (progressBar != null) {
                                                i11 = R$id.recyclerTag;
                                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                if (recyclerView != null) {
                                                    i11 = R$id.tvAddList;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView != null) {
                                                        i11 = R$id.tvAutoplayGo;
                                                        BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                                                        if (bLTextView2 != null) {
                                                            i11 = R$id.tvAutoplayText;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView2 != null) {
                                                                i11 = R$id.tvDes;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView3 != null) {
                                                                    i11 = R$id.tvDetailMore;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView4 != null) {
                                                                        i11 = R$id.tvDownload;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView5 != null) {
                                                                            i11 = R$id.tvDownloadKids;
                                                                            BLTextView bLTextView3 = (BLTextView) g4.b.a(view, i11);
                                                                            if (bLTextView3 != null) {
                                                                                i11 = R$id.tvFollow;
                                                                                BLTextView bLTextView4 = (BLTextView) g4.b.a(view, i11);
                                                                                if (bLTextView4 != null) {
                                                                                    i11 = R$id.tvLike;
                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView6 != null) {
                                                                                        i11 = R$id.tvShare;
                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                        if (appCompatTextView7 != null) {
                                                                                            i11 = R$id.tvTime;
                                                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                            if (appCompatTextView8 != null) {
                                                                                                i11 = R$id.tvTitle;
                                                                                                AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                if (appCompatTextView9 != null) {
                                                                                                    i11 = R$id.tvUsername;
                                                                                                    AppCompatTextView appCompatTextView10 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                    if (appCompatTextView10 != null) {
                                                                                                        i11 = R$id.tvViews;
                                                                                                        AppCompatTextView appCompatTextView11 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                                        if (appCompatTextView11 != null && (viewA = g4.b.a(view, (i11 = R$id.vIconLine1))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.vIconLine2))) != null) {
                                                                                                            return new p(view, barrier, bLTextView, group, group2, appCompatImageView, appCompatImageView2, appCompatImageView3, shapeableImageView, linearLayout, progressBar, recyclerView, appCompatTextView, bLTextView2, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, bLTextView3, bLTextView4, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, viewA, viewA2);
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
    public View getRoot() {
        return this.f73823a;
    }
}
