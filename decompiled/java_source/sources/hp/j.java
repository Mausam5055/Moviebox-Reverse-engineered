package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f64807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f64808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f64809d;

    private j(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f64806a = constraintLayout;
        this.f64807b = appCompatTextView;
        this.f64808c = appCompatTextView2;
        this.f64809d = view;
    }

    public static j a(View view) {
        View viewA;
        int i11 = R$id.tv_tips;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                return new j((ConstraintLayout) view, appCompatTextView, appCompatTextView2, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_select_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64806a;
    }
}
