package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f62651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f62652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatCheckBox f62653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62654e;

    private f0(ConstraintLayout constraintLayout, View view, View view2, AppCompatCheckBox appCompatCheckBox, AppCompatTextView appCompatTextView) {
        this.f62650a = constraintLayout;
        this.f62651b = view;
        this.f62652c = view2;
        this.f62653d = appCompatCheckBox;
        this.f62654e = appCompatTextView;
    }

    public static f0 a(View view) {
        View viewA;
        int i11 = R$id.bgView;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null && (viewA = g4.b.a(view, (i11 = R$id.divider))) != null) {
            i11 = R$id.radioButton;
            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) g4.b.a(view, i11);
            if (appCompatCheckBox != null) {
                i11 = R$id.textView;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new f0((ConstraintLayout) view, viewA2, viewA, appCompatCheckBox, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.feedback_option_list_cell, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62650a;
    }
}
