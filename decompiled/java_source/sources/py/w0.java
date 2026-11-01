package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class w0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f72963b;

    private w0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView) {
        this.f72962a = constraintLayout;
        this.f72963b = appCompatTextView;
    }

    public static w0 a(View view) {
        int i11 = R$id.iv_premium;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            return new w0((ConstraintLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72962a;
    }
}
