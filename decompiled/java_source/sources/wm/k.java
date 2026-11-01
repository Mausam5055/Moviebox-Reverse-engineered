package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f77775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f77776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f77777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f77778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f77779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f77780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f77781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GradientTextView f77783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f77784k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f77785l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f77786m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f77787n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f77788o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f77789p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f77790q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f77791r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final TextView f77792s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f77793t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f77794u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f77795v;

    private k(FrameLayout frameLayout, ConstraintLayout constraintLayout, LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, GradientTextView gradientTextView, TextView textView2, TextView textView3, AppCompatTextView appCompatTextView, TextView textView4, TextView textView5, TextView textView6, TextView textView7, AppCompatTextView appCompatTextView2, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.f77774a = frameLayout;
        this.f77775b = constraintLayout;
        this.f77776c = linearLayout;
        this.f77777d = appCompatImageView;
        this.f77778e = appCompatImageView2;
        this.f77779f = linearLayout2;
        this.f77780g = linearLayout3;
        this.f77781h = linearLayout4;
        this.f77782i = textView;
        this.f77783j = gradientTextView;
        this.f77784k = textView2;
        this.f77785l = textView3;
        this.f77786m = appCompatTextView;
        this.f77787n = textView4;
        this.f77788o = textView5;
        this.f77789p = textView6;
        this.f77790q = textView7;
        this.f77791r = appCompatTextView2;
        this.f77792s = textView8;
        this.f77793t = textView9;
        this.f77794u = textView10;
        this.f77795v = textView11;
    }

    public static k a(View view) {
        int i11 = R$id.clContent;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.clEquitiesList;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.ivClose;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ivIcon;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.llDiscount;
                        LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout2 != null) {
                            i11 = R$id.llTime;
                            LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout3 != null) {
                                i11 = R$id.llTitle;
                                LinearLayout linearLayout4 = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout4 != null) {
                                    i11 = R$id.tvBillingPeriod;
                                    TextView textView = (TextView) g4.b.a(view, i11);
                                    if (textView != null) {
                                        i11 = R$id.tvDiscountPrice;
                                        GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                        if (gradientTextView != null) {
                                            i11 = R$id.tvDiscountRate;
                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                            if (textView2 != null) {
                                                i11 = R$id.tvEndsIn;
                                                TextView textView3 = (TextView) g4.b.a(view, i11);
                                                if (textView3 != null) {
                                                    i11 = R$id.tvExclusive;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView != null) {
                                                        i11 = R$id.tvHM;
                                                        TextView textView4 = (TextView) g4.b.a(view, i11);
                                                        if (textView4 != null) {
                                                            i11 = R$id.tvHour;
                                                            TextView textView5 = (TextView) g4.b.a(view, i11);
                                                            if (textView5 != null) {
                                                                i11 = R$id.tvMS;
                                                                TextView textView6 = (TextView) g4.b.a(view, i11);
                                                                if (textView6 != null) {
                                                                    i11 = R$id.tvMinute;
                                                                    TextView textView7 = (TextView) g4.b.a(view, i11);
                                                                    if (textView7 != null) {
                                                                        i11 = R$id.tvNewUserOffer;
                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView2 != null) {
                                                                            i11 = R$id.tvOriginalPrice;
                                                                            TextView textView8 = (TextView) g4.b.a(view, i11);
                                                                            if (textView8 != null) {
                                                                                i11 = R$id.tvPayNow;
                                                                                TextView textView9 = (TextView) g4.b.a(view, i11);
                                                                                if (textView9 != null) {
                                                                                    i11 = R$id.tvPremiumDesc;
                                                                                    TextView textView10 = (TextView) g4.b.a(view, i11);
                                                                                    if (textView10 != null) {
                                                                                        i11 = R$id.tvSecond;
                                                                                        TextView textView11 = (TextView) g4.b.a(view, i11);
                                                                                        if (textView11 != null) {
                                                                                            return new k((FrameLayout) view, constraintLayout, linearLayout, appCompatImageView, appCompatImageView2, linearLayout2, linearLayout3, linearLayout4, textView, gradientTextView, textView2, textView3, appCompatTextView, textView4, textView5, textView6, textView7, appCompatTextView2, textView8, textView9, textView10, textView11);
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
    public FrameLayout getRoot() {
        return this.f77774a;
    }
}
