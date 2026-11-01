package zy;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;
import com.transsnet.login.widget.LoginProgressBar;

/* JADX INFO: loaded from: classes7.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f79602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LoginProgressBar f79604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f79605d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f79606e;

    private l(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LoginProgressBar loginProgressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f79602a = constraintLayout;
        this.f79603b = appCompatImageView;
        this.f79604c = loginProgressBar;
        this.f79605d = appCompatTextView;
        this.f79606e = appCompatTextView2;
    }

    public static l a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.progress;
            LoginProgressBar loginProgressBar = (LoginProgressBar) g4.b.a(view, i11);
            if (loginProgressBar != null) {
                i11 = R$id.tv_progress;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new l((ConstraintLayout) view, appCompatImageView, loginProgressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f79602a;
    }
}
