package bk;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f16593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f16594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f16595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f16596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f16597f;

    private e(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar) {
        this.f16592a = constraintLayout;
        this.f16593b = constraintLayout2;
        this.f16594c = appCompatImageView;
        this.f16595d = appCompatImageView2;
        this.f16596e = appCompatImageView3;
        this.f16597f = progressBar;
    }

    public static e a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.ivBackward;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivCenterPause;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivForward;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.progressBar;
                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                    if (progressBar != null) {
                        return new e(constraintLayout, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16592a;
    }
}
