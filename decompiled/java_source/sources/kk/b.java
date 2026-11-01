package kk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.commercialization.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f66796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f66797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f66798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66800f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f66801g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f66802h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConstraintLayout f66803i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final NativeWrapperAdView f66804j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f66805k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f66806l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f66807m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f66808n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f66809o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f66810p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f66811q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f66812r;

    private b(LinearLayout linearLayout, CardView cardView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout3, NativeWrapperAdView nativeWrapperAdView, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2) {
        this.f66795a = linearLayout;
        this.f66796b = cardView;
        this.f66797c = constraintLayout;
        this.f66798d = constraintLayout2;
        this.f66799e = appCompatImageView;
        this.f66800f = appCompatImageView2;
        this.f66801g = appCompatTextView;
        this.f66802h = appCompatImageView3;
        this.f66803i = constraintLayout3;
        this.f66804j = nativeWrapperAdView;
        this.f66805k = textView;
        this.f66806l = textView2;
        this.f66807m = appCompatTextView2;
        this.f66808n = textView3;
        this.f66809o = textView4;
        this.f66810p = textView5;
        this.f66811q = view;
        this.f66812r = view2;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.cardView;
        CardView cardView = (CardView) g4.b.a(view, i11);
        if (cardView != null) {
            i11 = R$id.change_group;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.cl2MemberInfo;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout2 != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivIcon;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.ivPremium;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.ivRefresh;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView3 != null) {
                                    i11 = R$id.llContent;
                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) g4.b.a(view, i11);
                                    if (constraintLayout3 != null) {
                                        i11 = R$id.nativeWrapperAdView;
                                        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
                                        if (nativeWrapperAdView != null) {
                                            i11 = R$id.tvGetAd;
                                            TextView textView = (TextView) g4.b.a(view, i11);
                                            if (textView != null) {
                                                i11 = R$id.tvGetAdSec;
                                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                                if (textView2 != null) {
                                                    i11 = R$id.tvOr;
                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView2 != null) {
                                                        i11 = R$id.tvTips;
                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                        if (textView3 != null) {
                                                            i11 = R$id.tvTipsSec;
                                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                                            if (textView4 != null) {
                                                                i11 = R$id.tvTryMore;
                                                                TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                if (textView5 != null && (viewA = g4.b.a(view, (i11 = R$id.viewLineL))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewLineR))) != null) {
                                                                    return new b((LinearLayout) view, cardView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatImageView3, constraintLayout3, nativeWrapperAdView, textView, textView2, appCompatTextView2, textView3, textView4, textView5, viewA, viewA2);
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
    public LinearLayout getRoot() {
        return this.f66795a;
    }
}
