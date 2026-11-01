package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatCheckBox f75760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f75761c;

    private x(ConstraintLayout constraintLayout, AppCompatCheckBox appCompatCheckBox, AppCompatTextView appCompatTextView) {
        this.f75759a = constraintLayout;
        this.f75760b = appCompatCheckBox;
        this.f75761c = appCompatTextView;
    }

    public static x a(View view) {
        int i11 = R$id.radioButton;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) g4.b.a(view, i11);
        if (appCompatCheckBox != null) {
            i11 = R$id.tvReasonTitle;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new x((ConstraintLayout) view, appCompatCheckBox, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_report_reason, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75759a;
    }
}
