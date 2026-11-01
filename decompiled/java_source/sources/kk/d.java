package kk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.commercialization.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f66821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f66822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f66823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f66826g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayoutCompat f66827h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayoutCompat f66828i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f66829j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RecyclerView f66830k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f66831l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f66832m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f66833n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f66834o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f66835p;

    private d(LinearLayout linearLayout, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, h hVar, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.f66820a = linearLayout;
        this.f66821b = constraintLayout;
        this.f66822c = constraintLayout2;
        this.f66823d = appCompatImageView;
        this.f66824e = appCompatImageView2;
        this.f66825f = appCompatTextView;
        this.f66826g = appCompatImageView3;
        this.f66827h = linearLayoutCompat;
        this.f66828i = linearLayoutCompat2;
        this.f66829j = hVar;
        this.f66830k = recyclerView;
        this.f66831l = textView;
        this.f66832m = textView2;
        this.f66833n = textView3;
        this.f66834o = textView4;
        this.f66835p = textView5;
    }

    public static d a(View view) {
        View viewA;
        int i11 = R$id.adGroup;
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
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                if (linearLayoutCompat != null) {
                                    i11 = R$id.llLine;
                                    LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) g4.b.a(view, i11);
                                    if (linearLayoutCompat2 != null && (viewA = g4.b.a(view, (i11 = R$id.rewarded_layout))) != null) {
                                        h hVarA = h.a(viewA);
                                        i11 = R$id.f43737rv;
                                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                        if (recyclerView != null) {
                                            i11 = R$id.tvGetAd;
                                            TextView textView = (TextView) g4.b.a(view, i11);
                                            if (textView != null) {
                                                i11 = R$id.tvGetAdSec;
                                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                                if (textView2 != null) {
                                                    i11 = R$id.tvTips;
                                                    TextView textView3 = (TextView) g4.b.a(view, i11);
                                                    if (textView3 != null) {
                                                        i11 = R$id.tvTipsSec;
                                                        TextView textView4 = (TextView) g4.b.a(view, i11);
                                                        if (textView4 != null) {
                                                            i11 = R$id.tvTryMore;
                                                            TextView textView5 = (TextView) g4.b.a(view, i11);
                                                            if (textView5 != null) {
                                                                return new d((LinearLayout) view, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatImageView3, linearLayoutCompat, linearLayoutCompat2, hVarA, recyclerView, textView, textView2, textView3, textView4, textView5);
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
        return this.f66820a;
    }
}
