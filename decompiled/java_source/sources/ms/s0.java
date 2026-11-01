package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class s0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f69924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f69926d;

    private s0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f69923a = constraintLayout;
        this.f69924b = appCompatTextView;
        this.f69925c = appCompatTextView2;
        this.f69926d = appCompatTextView3;
    }

    public static s0 a(View view) {
        int i11 = R$id.tvHideTxt;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvInfoContent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tvInfoTitle;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView3 != null) {
                    return new s0((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69923a;
    }
}
