package bk;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f16585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f16587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f16588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f16589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f16590f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f16591g;

    private d(View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f16585a = view;
        this.f16586b = appCompatImageView;
        this.f16587c = appCompatImageView2;
        this.f16588d = appCompatTextView;
        this.f16589e = appCompatTextView2;
        this.f16590f = frameLayout;
        this.f16591g = frameLayout2;
    }

    public static d a(View view) {
        int i11 = R$id.iv_guide_line;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_guide_target;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tv_guide_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_guide_tips;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.v_guide_anima_bg;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.v_guide_bg;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                return new d(view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, frameLayout, frameLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f16585a;
    }
}
