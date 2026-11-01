package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f72850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f72851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f72852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f72854f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72855g;

    private n(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f72849a = constraintLayout;
        this.f72850b = view;
        this.f72851c = appCompatImageView;
        this.f72852d = appCompatImageView2;
        this.f72853e = appCompatTextView;
        this.f72854f = appCompatTextView2;
        this.f72855g = appCompatTextView3;
    }

    public static n a(View view) {
        int i11 = R$id.btn_top;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.tvAdWatchAVideo;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_tips;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tv_title;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView3 != null) {
                                return new n((ConstraintLayout) view, viewA, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f72849a;
    }
}
