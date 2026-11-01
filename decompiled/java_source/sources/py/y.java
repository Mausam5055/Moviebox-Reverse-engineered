package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LottieAnimationView f72980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f72981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72983e;

    private y(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView, ProgressBar progressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f72979a = constraintLayout;
        this.f72980b = lottieAnimationView;
        this.f72981c = progressBar;
        this.f72982d = appCompatTextView;
        this.f72983e = appCompatTextView2;
    }

    public static y a(View view) {
        int i11 = R$id.lav_download_analyzing;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) g4.b.a(view, i11);
        if (lottieAnimationView != null) {
            i11 = R$id.progress_bar;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.tv_download_analyzing;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new y((ConstraintLayout) view, lottieAnimationView, progressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_ana, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72979a;
    }
}
