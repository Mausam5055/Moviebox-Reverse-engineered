package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class e1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f72678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72680d;

    private e1(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f72677a = constraintLayout;
        this.f72678b = appCompatTextView;
        this.f72679c = appCompatTextView2;
        this.f72680d = appCompatTextView3;
    }

    public static e1 a(View view) {
        int i11 = R$id.tvHideTxt;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvInfoContent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tvInfoTitle;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView3 != null) {
                    return new e1((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72677a;
    }
}
