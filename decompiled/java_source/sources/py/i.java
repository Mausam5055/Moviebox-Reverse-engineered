package py;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72756e;

    private i(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f72752a = frameLayout;
        this.f72753b = appCompatImageView;
        this.f72754c = appCompatTextView;
        this.f72755d = appCompatTextView2;
        this.f72756e = appCompatTextView3;
    }

    public static i a(View view) {
        int i11 = R$id.iv_navigation;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.tv_desc;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_positive;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        return new i((FrameLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72752a;
    }
}
