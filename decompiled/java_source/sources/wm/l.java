package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f77797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f77798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f77799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f77801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77802g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77803h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77804i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f77805j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f77806k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f77807l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f77808m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f77809n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f77810o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final View f77811p;

    private l(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, View view) {
        this.f77796a = frameLayout;
        this.f77797b = linearLayout;
        this.f77798c = linearLayout2;
        this.f77799d = textView;
        this.f77800e = textView2;
        this.f77801f = appCompatTextView;
        this.f77802g = textView3;
        this.f77803h = textView4;
        this.f77804i = textView5;
        this.f77805j = textView6;
        this.f77806k = textView7;
        this.f77807l = textView8;
        this.f77808m = textView9;
        this.f77809n = textView10;
        this.f77810o = textView11;
        this.f77811p = view;
    }

    public static l a(View view) {
        View viewA;
        int i11 = R$id.llDiscount;
        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
        if (linearLayout != null) {
            i11 = R$id.llTime;
            LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout2 != null) {
                i11 = R$id.tvBillingPeriod;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvDiscount;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.tvDiscountPrice;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tvEndsIn;
                            TextView textView3 = (TextView) g4.b.a(view, i11);
                            if (textView3 != null) {
                                i11 = R$id.tvHour;
                                TextView textView4 = (TextView) g4.b.a(view, i11);
                                if (textView4 != null) {
                                    i11 = R$id.tvLater;
                                    TextView textView5 = (TextView) g4.b.a(view, i11);
                                    if (textView5 != null) {
                                        i11 = R$id.tvMinute;
                                        TextView textView6 = (TextView) g4.b.a(view, i11);
                                        if (textView6 != null) {
                                            i11 = R$id.tvOriginalPrice;
                                            TextView textView7 = (TextView) g4.b.a(view, i11);
                                            if (textView7 != null) {
                                                i11 = R$id.tvPremiumDesc;
                                                TextView textView8 = (TextView) g4.b.a(view, i11);
                                                if (textView8 != null) {
                                                    i11 = R$id.tvRenew;
                                                    TextView textView9 = (TextView) g4.b.a(view, i11);
                                                    if (textView9 != null) {
                                                        i11 = R$id.tvSecond;
                                                        TextView textView10 = (TextView) g4.b.a(view, i11);
                                                        if (textView10 != null) {
                                                            i11 = R$id.tvTitle;
                                                            TextView textView11 = (TextView) g4.b.a(view, i11);
                                                            if (textView11 != null && (viewA = g4.b.a(view, (i11 = R$id.viewStar))) != null) {
                                                                return new l((FrameLayout) view, linearLayout, linearLayout2, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, viewA);
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
        return this.f77796a;
    }
}
