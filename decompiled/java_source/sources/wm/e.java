package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f77735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GradientBorderView f77736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f77739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77740g;

    private e(FrameLayout frameLayout, ConstraintLayout constraintLayout, GradientBorderView gradientBorderView, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, TextView textView2) {
        this.f77734a = frameLayout;
        this.f77735b = constraintLayout;
        this.f77736c = gradientBorderView;
        this.f77737d = appCompatTextView;
        this.f77738e = textView;
        this.f77739f = appCompatTextView2;
        this.f77740g = textView2;
    }

    public static e a(View view) {
        int i11 = R$id.clRoot;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.iv_confirm_container;
            GradientBorderView gradientBorderView = (GradientBorderView) g4.b.a(view, i11);
            if (gradientBorderView != null) {
                i11 = R$id.tv_confirm;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tvDesc;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tv_later;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tvTitle;
                            TextView textView2 = (TextView) g4.b.a(view, i11);
                            if (textView2 != null) {
                                return new e((FrameLayout) view, constraintLayout, gradientBorderView, appCompatTextView, textView, appCompatTextView2, textView2);
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
    public FrameLayout getRoot() {
        return this.f77734a;
    }
}
