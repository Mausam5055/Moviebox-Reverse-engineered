package so;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;

/* JADX INFO: loaded from: classes6.dex */
public final class a0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LottieAnimationView f75419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LottieAnimationView f75420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f75421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final VideoDoubleClickBackgroundView f75423f;

    private a0(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, VideoDoubleClickBackgroundView videoDoubleClickBackgroundView) {
        this.f75418a = constraintLayout;
        this.f75419b = lottieAnimationView;
        this.f75420c = lottieAnimationView2;
        this.f75421d = appCompatTextView;
        this.f75422e = appCompatTextView2;
        this.f75423f = videoDoubleClickBackgroundView;
    }

    public static a0 a(View view) {
        int i11 = R$id.lottie_double_click_left;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) g4.b.a(view, i11);
        if (lottieAnimationView != null) {
            i11 = R$id.lottie_double_click_right;
            LottieAnimationView lottieAnimationView2 = (LottieAnimationView) g4.b.a(view, i11);
            if (lottieAnimationView2 != null) {
                i11 = R$id.tv_double_click_left;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_double_click_right;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.v_double_click;
                        VideoDoubleClickBackgroundView videoDoubleClickBackgroundView = (VideoDoubleClickBackgroundView) g4.b.a(view, i11);
                        if (videoDoubleClickBackgroundView != null) {
                            return new a0((ConstraintLayout) view, lottieAnimationView, lottieAnimationView2, appCompatTextView, appCompatTextView2, videoDoubleClickBackgroundView);
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
        return this.f75418a;
    }
}
