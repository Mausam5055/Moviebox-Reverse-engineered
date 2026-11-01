package wm;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77857a;

    private r(ConstraintLayout constraintLayout) {
        this.f77857a = constraintLayout;
    }

    public static r a(View view) {
        if (view != null) {
            return new r((ConstraintLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77857a;
    }
}
