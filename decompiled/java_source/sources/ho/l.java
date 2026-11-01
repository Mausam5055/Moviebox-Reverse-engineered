package ho;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.player.longvideo.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f64663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f64664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f64665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f64666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f64667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f64668g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f64669h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f64670i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f64671j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f64672k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f64673l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final f f64674m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SecondariesSeekBar f64675n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f64676o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ViewStub f64677p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ViewStub f64678q;

    private l(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ImageView imageView, d dVar, LinearLayout linearLayout, View view, View view2, View view3, f fVar, SecondariesSeekBar secondariesSeekBar, TextView textView, ViewStub viewStub, ViewStub viewStub2) {
        this.f64662a = constraintLayout;
        this.f64663b = frameLayout;
        this.f64664c = appCompatImageView;
        this.f64665d = appCompatImageView2;
        this.f64666e = appCompatImageView3;
        this.f64667f = appCompatImageView4;
        this.f64668g = imageView;
        this.f64669h = dVar;
        this.f64670i = linearLayout;
        this.f64671j = view;
        this.f64672k = view2;
        this.f64673l = view3;
        this.f64674m = fVar;
        this.f64675n = secondariesSeekBar;
        this.f64676o = textView;
        this.f64677p = viewStub;
        this.f64678q = viewStub2;
    }

    public static l a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i11 = R$id.flUGCAutoPlayGroup;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_float;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.iv_middle_pause;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView3 != null) {
                        i11 = R$id.iv_middle_screen_change;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView4 != null) {
                            i11 = R$id.ivUGCAutoPlayBtn;
                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                            if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.layout_loading))) != null) {
                                d dVarA = d.a(viewA);
                                i11 = R$id.ll_middle_bottom_controller;
                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout != null && (viewA2 = g4.b.a(view, (i11 = R$id.middle_gradient_bottom))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.middle_gradient_top))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.middle_guideline))) != null && (viewA5 = g4.b.a(view, (i11 = R$id.operatorLayout))) != null) {
                                    f fVarA = f.a(viewA5);
                                    i11 = R$id.seek_bar_middle;
                                    SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) g4.b.a(view, i11);
                                    if (secondariesSeekBar != null) {
                                        i11 = R$id.tv_middle_time;
                                        TextView textView = (TextView) g4.b.a(view, i11);
                                        if (textView != null) {
                                            i11 = R$id.vs_forward_guide_middle;
                                            ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                            if (viewStub != null) {
                                                i11 = R$id.vs_forward_middle;
                                                ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
                                                if (viewStub2 != null) {
                                                    return new l((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, imageView, dVarA, linearLayout, viewA2, viewA3, viewA4, fVarA, secondariesSeekBar, textView, viewStub, viewStub2);
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
    public ConstraintLayout getRoot() {
        return this.f64662a;
    }
}
