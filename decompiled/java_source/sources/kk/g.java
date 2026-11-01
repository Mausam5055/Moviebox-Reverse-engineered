package kk;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f66864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f66865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f66868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f66869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f66870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f66871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f66872k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f66873l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ShapeableImageView f66874m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final FrameLayout f66875n;

    private g(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ConstraintLayout constraintLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, View view, ShapeableImageView shapeableImageView, FrameLayout frameLayout) {
        this.f66862a = linearLayout;
        this.f66863b = appCompatImageView;
        this.f66864c = appCompatImageView2;
        this.f66865d = appCompatImageView3;
        this.f66866e = appCompatImageView4;
        this.f66867f = appCompatImageView5;
        this.f66868g = constraintLayout;
        this.f66869h = linearLayout2;
        this.f66870i = textView;
        this.f66871j = textView2;
        this.f66872k = textView3;
        this.f66873l = view;
        this.f66874m = shapeableImageView;
        this.f66875n = frameLayout;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.ivBg1;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivClose;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivLeftWing;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.ivRightWing;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView4 != null) {
                        i11 = R$id.ivTreasureAvatar;
                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView5 != null) {
                            i11 = R$id.llContent;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i11 = R$id.tvClaimNow;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null) {
                                    i11 = R$id.tvStateTitle;
                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                    if (textView2 != null) {
                                        i11 = R$id.tvStateTitlePrize;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null && (viewA = g4.b.a(view, (i11 = R$id.viewBg1))) != null) {
                                            i11 = R$id.viewBg2;
                                            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                            if (shapeableImageView != null) {
                                                i11 = R$id.viewClaim;
                                                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                                if (frameLayout != null) {
                                                    return new g(linearLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, constraintLayout, linearLayout, textView, textView2, textView3, viewA, shapeableImageView, frameLayout);
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
    public LinearLayout getRoot() {
        return this.f66862a;
    }
}
