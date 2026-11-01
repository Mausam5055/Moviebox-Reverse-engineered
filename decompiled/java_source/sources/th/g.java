package th;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$id;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f76243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f76244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f76245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f76246d;

    private g(View view, AppCompatImageView appCompatImageView, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        this.f76243a = view;
        this.f76244b = appCompatImageView;
        this.f76245c = progressBar;
        this.f76246d = appCompatTextView;
    }

    public static g a(View view) {
        int i11 = R$id.iv_join;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.tv_join;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new g(view, appCompatImageView, progressBar, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f76243a;
    }
}
