package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

/* JADX INFO: loaded from: classes4.dex */
class x extends s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f30013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private EditText f30014f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnClickListener f30015g;

    x(r rVar, int i11) {
        super(rVar);
        this.f30013e = R$drawable.design_password_eye;
        this.f30015g = new View.OnClickListener() { // from class: com.google.android.material.textfield.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30012a.y(view);
            }
        };
        if (i11 != 0) {
            this.f30013e = i11;
        }
    }

    private boolean w() {
        EditText editText = this.f30014f;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean x(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        EditText editText = this.f30014f;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (w()) {
            this.f30014f.setTransformationMethod(null);
        } else {
            this.f30014f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.f30014f.setSelection(selectionEnd);
        }
        r();
    }

    @Override // com.google.android.material.textfield.s
    void b(CharSequence charSequence, int i11, int i12, int i13) {
        r();
    }

    @Override // com.google.android.material.textfield.s
    int c() {
        return R$string.password_toggle_content_description;
    }

    @Override // com.google.android.material.textfield.s
    int d() {
        return this.f30013e;
    }

    @Override // com.google.android.material.textfield.s
    View.OnClickListener f() {
        return this.f30015g;
    }

    @Override // com.google.android.material.textfield.s
    boolean l() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    boolean m() {
        return !w();
    }

    @Override // com.google.android.material.textfield.s
    void n(EditText editText) {
        this.f30014f = editText;
        r();
    }

    @Override // com.google.android.material.textfield.s
    void s() {
        if (x(this.f30014f)) {
            this.f30014f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // com.google.android.material.textfield.s
    void u() {
        EditText editText = this.f30014f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
