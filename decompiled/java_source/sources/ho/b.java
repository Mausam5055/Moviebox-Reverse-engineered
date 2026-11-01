package ho;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.member.ResolutionAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f64542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResolutionAdView f64543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f64544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f64545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f64546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f64547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f64548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f64549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f64550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f64551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f64552k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f64553l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f64554m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f64555n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f64556o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f64557p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f64558q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f64559r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f64560s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final View f64561t;

    private b(FrameLayout frameLayout, ResolutionAdView resolutionAdView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, View view, View view2) {
        this.f64542a = frameLayout;
        this.f64543b = resolutionAdView;
        this.f64544c = constraintLayout;
        this.f64545d = constraintLayout2;
        this.f64546e = appCompatImageView;
        this.f64547f = appCompatImageView2;
        this.f64548g = appCompatImageView3;
        this.f64549h = linearLayout;
        this.f64550i = linearLayout2;
        this.f64551j = linearLayout3;
        this.f64552k = textView;
        this.f64553l = textView2;
        this.f64554m = appCompatTextView;
        this.f64555n = textView3;
        this.f64556o = textView4;
        this.f64557p = textView5;
        this.f64558q = textView6;
        this.f64559r = textView7;
        this.f64560s = view;
        this.f64561t = view2;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.cardAdView;
        ResolutionAdView resolutionAdView = (ResolutionAdView) g4.b.a(view, i11);
        if (resolutionAdView != null) {
            i11 = R$id.clMemberModule;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.clPayModule;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout2 != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivPremium;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.ivTypeLotteryDisableTop;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView3 != null) {
                                i11 = R$id.llOrModule;
                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout != null) {
                                    i11 = R$id.llTypeLottery;
                                    LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout2 != null) {
                                        i11 = R$id.llTypeLotteryDisable;
                                        LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout3 != null) {
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
                                                            i11 = R$id.tvTitle11;
                                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                                            if (textView4 != null) {
                                                                i11 = R$id.tvTitle12;
                                                                TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                if (textView5 != null) {
                                                                    i11 = R$id.tvTitle21;
                                                                    TextView textView6 = (TextView) g4.b.a(view, i11);
                                                                    if (textView6 != null) {
                                                                        i11 = R$id.tvTitle22;
                                                                        TextView textView7 = (TextView) g4.b.a(view, i11);
                                                                        if (textView7 != null && (viewA = g4.b.a(view, (i11 = R$id.viewLineL))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewLineR))) != null) {
                                                                            return new b((FrameLayout) view, resolutionAdView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayout, linearLayout2, linearLayout3, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, textView7, viewA, viewA2);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.long_vod_fragment_resolution_unlock, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f64542a;
    }
}
