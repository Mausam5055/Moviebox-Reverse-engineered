package fw;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditText f62577d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextInputLayout f62578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62579f;

    private a0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditText editText, TextInputLayout textInputLayout, AppCompatTextView appCompatTextView3) {
        this.f62574a = constraintLayout;
        this.f62575b = appCompatTextView;
        this.f62576c = appCompatTextView2;
        this.f62577d = editText;
        this.f62578e = textInputLayout;
        this.f62579f = appCompatTextView3;
    }

    public static a0 a(View view) {
        int i11 = R$id.btn_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_ok;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.et_pwd;
                EditText editText = (EditText) g4.b.a(view, i11);
                if (editText != null) {
                    i11 = R$id.til_pwd;
                    TextInputLayout textInputLayout = (TextInputLayout) g4.b.a(view, i11);
                    if (textInputLayout != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            return new a0((ConstraintLayout) view, appCompatTextView, appCompatTextView2, editText, textInputLayout, appCompatTextView3);
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
        return this.f62574a;
    }
}
