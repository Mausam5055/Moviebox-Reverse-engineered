package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.setting.labelsfeedback.UCEditText;

/* JADX INFO: loaded from: classes7.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f62664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final UCEditText f62665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f62666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatEditText f62667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f62668g;

    private g0(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatEditText appCompatEditText, UCEditText uCEditText, ShapeableImageView shapeableImageView, AppCompatEditText appCompatEditText2, View view) {
        this.f62662a = linearLayout;
        this.f62663b = appCompatTextView;
        this.f62664c = appCompatEditText;
        this.f62665d = uCEditText;
        this.f62666e = shapeableImageView;
        this.f62667f = appCompatEditText2;
        this.f62668g = view;
    }

    public static g0 a(View view) {
        View viewA;
        int i11 = R$id.countTextView;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.countryEditText;
            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
            if (appCompatEditText != null) {
                i11 = R$id.editText;
                UCEditText uCEditText = (UCEditText) g4.b.a(view, i11);
                if (uCEditText != null) {
                    i11 = R$id.imageView;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView != null) {
                        i11 = R$id.phoneEditText;
                        AppCompatEditText appCompatEditText2 = (AppCompatEditText) g4.b.a(view, i11);
                        if (appCompatEditText2 != null && (viewA = g4.b.a(view, (i11 = R$id.view6))) != null) {
                            return new g0((LinearLayout) view, appCompatTextView, appCompatEditText, uCEditText, shapeableImageView, appCompatEditText2, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.feedback_option_list_footer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62662a;
    }
}
