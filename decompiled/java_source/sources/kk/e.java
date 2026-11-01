package kk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.task.treasure.TreasureAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollView f66836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreasureAdView f66837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f66838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f66839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f66842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ShapeableImageView f66843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f66844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f66845j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f66846k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f66847l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f66848m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f66849n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f66850o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f66851p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f66852q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f66853r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f66854s;

    private e(ScrollView scrollView, TreasureAdView treasureAdView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ShapeableImageView shapeableImageView, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, View view, View view2) {
        this.f66836a = scrollView;
        this.f66837b = treasureAdView;
        this.f66838c = constraintLayout;
        this.f66839d = constraintLayout2;
        this.f66840e = appCompatImageView;
        this.f66841f = appCompatImageView2;
        this.f66842g = appCompatImageView3;
        this.f66843h = shapeableImageView;
        this.f66844i = linearLayout;
        this.f66845j = linearLayout2;
        this.f66846k = textView;
        this.f66847l = textView2;
        this.f66848m = appCompatTextView;
        this.f66849n = textView3;
        this.f66850o = textView4;
        this.f66851p = textView5;
        this.f66852q = textView6;
        this.f66853r = view;
        this.f66854s = view2;
    }

    public static e a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.cardView;
        TreasureAdView treasureAdView = (TreasureAdView) g4.b.a(view, i11);
        if (treasureAdView != null) {
            i11 = R$id.clMemberModule;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.clPayModule;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout2 != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivLittleTop;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.ivPremium;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView3 != null) {
                                i11 = R$id.ivTop;
                                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                if (shapeableImageView != null) {
                                    i11 = R$id.llContent;
                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout != null) {
                                        i11 = R$id.llOrModule;
                                        LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout2 != null) {
                                            i11 = R$id.tvMoneyDes;
                                            TextView textView = (TextView) g4.b.a(view, i11);
                                            if (textView != null) {
                                                i11 = R$id.tvMoneyNum;
                                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                                if (textView2 != null) {
                                                    i11 = R$id.tvOr;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView != null) {
                                                        i11 = R$id.tvPremium;
                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                        if (textView3 != null) {
                                                            i11 = R$id.tvTitle1;
                                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                                            if (textView4 != null) {
                                                                i11 = R$id.tvTitle2;
                                                                TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                if (textView5 != null) {
                                                                    i11 = R$id.tvTitle3;
                                                                    TextView textView6 = (TextView) g4.b.a(view, i11);
                                                                    if (textView6 != null && (viewA = g4.b.a(view, (i11 = R$id.viewLineL))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewLineR))) != null) {
                                                                        return new e((ScrollView) view, treasureAdView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, shapeableImageView, linearLayout, linearLayout2, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, viewA, viewA2);
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
    public ScrollView getRoot() {
        return this.f66836a;
    }
}
