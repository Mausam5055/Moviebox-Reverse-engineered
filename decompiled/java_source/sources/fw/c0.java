package fw;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditTextWithClear f62598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62599d;

    private c0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView2) {
        this.f62596a = constraintLayout;
        this.f62597b = appCompatTextView;
        this.f62598c = editTextWithClear;
        this.f62599d = appCompatTextView2;
    }

    public static c0 a(View view) {
        int i11 = R$id.btn_ok;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.et_web;
            EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
            if (editTextWithClear != null) {
                i11 = R$id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new c0((ConstraintLayout) view, appCompatTextView, editTextWithClear, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62596a;
    }
}
