package ey;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.activate.ui.LongVodActivateAdView;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LongVodActivateAdView f62057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f62058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f62059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f62060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f62061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f62063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f62064i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f62065j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f62066k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f62067l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f62068m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final View f62069n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f62070o;

    private a(LinearLayout linearLayout, LongVodActivateAdView longVodActivateAdView, CardView cardView, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2, TextView textView3, TextView textView4, View view, View view2) {
        this.f62056a = linearLayout;
        this.f62057b = longVodActivateAdView;
        this.f62058c = cardView;
        this.f62059d = constraintLayout;
        this.f62060e = appCompatImageView;
        this.f62061f = appCompatImageView2;
        this.f62062g = appCompatTextView;
        this.f62063h = constraintLayout2;
        this.f62064i = textView;
        this.f62065j = textView2;
        this.f62066k = appCompatTextView2;
        this.f62067l = textView3;
        this.f62068m = textView4;
        this.f62069n = view;
        this.f62070o = view2;
    }

    public static a a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.adView;
        LongVodActivateAdView longVodActivateAdView = (LongVodActivateAdView) g4.b.a(view, i11);
        if (longVodActivateAdView != null) {
            i11 = R$id.cardView;
            CardView cardView = (CardView) g4.b.a(view, i11);
            if (cardView != null) {
                i11 = R$id.cl2MemberInfo;
                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivIcon;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.ivPremium;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.llContent;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                if (constraintLayout2 != null) {
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
                                                    if (textView4 != null && (viewA = g4.b.a(view, (i11 = R$id.viewLineL))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewLineR))) != null) {
                                                        return new a((LinearLayout) view, longVodActivateAdView, cardView, constraintLayout, appCompatImageView, appCompatImageView2, appCompatTextView, constraintLayout2, textView, textView2, appCompatTextView2, textView3, textView4, viewA, viewA2);
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
        return this.f62056a;
    }
}
