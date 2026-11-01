package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdTagView f66097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f66098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f66099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f66100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f66101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f66102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f66103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f66104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f66105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ShapeableImageView f66106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f66107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f66108m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f66109n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ShapeableImageView f66110o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f66111p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f66112q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f66113r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f66114s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final LinearLayoutCompat f66115t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final MemberTagView f66116u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final View f66117v;

    private h(ConstraintLayout constraintLayout, AdTagView adTagView, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, ShapeableImageView shapeableImageView2, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView, View view) {
        this.f66096a = constraintLayout;
        this.f66097b = adTagView;
        this.f66098c = constraintLayout2;
        this.f66099d = constraintLayout3;
        this.f66100e = constraintLayout4;
        this.f66101f = frameLayout;
        this.f66102g = frameLayout2;
        this.f66103h = appCompatImageView;
        this.f66104i = appCompatImageView2;
        this.f66105j = linearLayout;
        this.f66106k = shapeableImageView;
        this.f66107l = appCompatTextView;
        this.f66108m = appCompatTextView2;
        this.f66109n = appCompatTextView3;
        this.f66110o = shapeableImageView2;
        this.f66111p = appCompatTextView4;
        this.f66112q = appCompatTextView5;
        this.f66113r = appCompatTextView6;
        this.f66114s = appCompatTextView7;
        this.f66115t = linearLayoutCompat;
        this.f66116u = memberTagView;
        this.f66117v = view;
    }

    public static h a(View view) {
        View viewA;
        int i11 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) g4.b.a(view, i11);
        if (adTagView != null) {
            i11 = R$id.clAdEndLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.clAdInfo;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout2 != null) {
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                    i11 = R$id.container;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.flVolumeContainer;
                        FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout2 != null) {
                            i11 = R$id.ivAdClose;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView != null) {
                                i11 = R$id.ivClose;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView2 != null) {
                                    i11 = R$id.llMember;
                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout != null) {
                                        i11 = R$id.tvAdAvatar;
                                        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                        if (shapeableImageView != null) {
                                            i11 = R$id.tvAdBtn;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView != null) {
                                                i11 = R$id.tvAdDesc;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView2 != null) {
                                                    i11 = R$id.tvAdTitle;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView3 != null) {
                                                        i11 = R$id.tvAvatar;
                                                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                                                        if (shapeableImageView2 != null) {
                                                            i11 = R$id.tvBtn;
                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView4 != null) {
                                                                i11 = R$id.tvCd;
                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView5 != null) {
                                                                    i11 = R$id.tvDesc;
                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView6 != null) {
                                                                        i11 = R$id.tvTitle;
                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView7 != null) {
                                                                            i11 = R$id.viewCd;
                                                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                                                            if (linearLayoutCompat != null) {
                                                                                i11 = R$id.viewMember;
                                                                                MemberTagView memberTagView = (MemberTagView) g4.b.a(view, i11);
                                                                                if (memberTagView != null && (viewA = g4.b.a(view, (i11 = R$id.viewMemberLiner))) != null) {
                                                                                    return new h(constraintLayout3, adTagView, constraintLayout, constraintLayout2, constraintLayout3, frameLayout, frameLayout2, appCompatImageView, appCompatImageView2, linearLayout, shapeableImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, shapeableImageView2, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, linearLayoutCompat, memberTagView, viewA);
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

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_video_unspecified_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66096a;
    }
}
