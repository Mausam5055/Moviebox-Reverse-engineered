package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class p implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f72874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f72876d;

    private p(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f72873a = constraintLayout;
        this.f72874b = appCompatTextView;
        this.f72875c = appCompatTextView2;
        this.f72876d = view;
    }

    public static p a(View view) {
        View viewA;
        int i11 = R$id.tvCancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvClear;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.tvLine))) != null) {
                return new p((ConstraintLayout) view, appCompatTextView, appCompatTextView2, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72873a;
    }
}
