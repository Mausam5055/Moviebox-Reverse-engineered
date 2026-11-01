package so;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes6.dex */
public final class o0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AppCompatTextView f75644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f75645b;

    private o0(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f75644a = appCompatTextView;
        this.f75645b = appCompatTextView2;
    }

    public static o0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new o0(appCompatTextView, appCompatTextView);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AppCompatTextView getRoot() {
        return this.f75644a;
    }
}
