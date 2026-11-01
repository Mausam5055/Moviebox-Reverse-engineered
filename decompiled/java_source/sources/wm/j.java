package wm;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f77768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f77769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f77770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatEditText f77772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final GradientBorderView f77773g;

    private j(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, AppCompatEditText appCompatEditText, GradientBorderView gradientBorderView) {
        this.f77767a = linearLayout;
        this.f77768b = imageView;
        this.f77769c = imageView2;
        this.f77770d = textView;
        this.f77771e = textView2;
        this.f77772f = appCompatEditText;
        this.f77773g = gradientBorderView;
    }

    public static j a(View view) {
        int i11 = R$id.promo_code_dialog_close;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.promo_code_input_clear_iv;
            ImageView imageView2 = (ImageView) g4.b.a(view, i11);
            if (imageView2 != null) {
                i11 = R$id.promo_code_input_confirm;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.promo_code_input_error_tips;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.promo_code_input_et;
                        AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                        if (appCompatEditText != null) {
                            i11 = R$id.promo_code_title_layout;
                            GradientBorderView gradientBorderView = (GradientBorderView) g4.b.a(view, i11);
                            if (gradientBorderView != null) {
                                return new j((LinearLayout) view, imageView, imageView2, textView, textView2, appCompatEditText, gradientBorderView);
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
    public LinearLayout getRoot() {
        return this.f77767a;
    }
}
