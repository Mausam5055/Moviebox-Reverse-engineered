package gh;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.tranpay.R$id;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f63615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f63617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f63618e;

    private d(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, View view, View view2, View view3) {
        this.f63614a = constraintLayout;
        this.f63615b = constraintLayout2;
        this.f63616c = view;
        this.f63617d = view2;
        this.f63618e = view3;
    }

    public static d a(View view) {
        View viewA;
        View viewA2;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.view1;
        View viewA3 = g4.b.a(view, i11);
        if (viewA3 == null || (viewA = g4.b.a(view, (i11 = R$id.view2))) == null || (viewA2 = g4.b.a(view, (i11 = R$id.view3))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        return new d(constraintLayout, constraintLayout, viewA3, viewA, viewA2);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63614a;
    }
}
