package ho;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.player.longvideo.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f64602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f64603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f64604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GradientTextView f64605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f64606f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f64607g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f64608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f64609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f64610j;

    private i(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, GradientTextView gradientTextView, AppCompatTextView appCompatTextView3, TextView textView, View view, View view2, AppCompatTextView appCompatTextView4) {
        this.f64601a = constraintLayout;
        this.f64602b = appCompatImageView;
        this.f64603c = appCompatTextView;
        this.f64604d = appCompatTextView2;
        this.f64605e = gradientTextView;
        this.f64606f = appCompatTextView3;
        this.f64607g = textView;
        this.f64608h = view;
        this.f64609i = view2;
        this.f64610j = appCompatTextView4;
    }

    public static i a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.tvDownloadView;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tvFeedback;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tvPro;
                    GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                    if (gradientTextView != null) {
                        i11 = R$id.tvSubtitleSetting;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.tvUnlockHD;
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null && (viewA = g4.b.a(view, (i11 = R$id.v_space_end))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_space_start))) != null) {
                                i11 = R$id.vd_title;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView4 != null) {
                                    return new i((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, gradientTextView, appCompatTextView3, textView, viewA, viewA2, appCompatTextView4);
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
        return this.f64601a;
    }
}
