package gl;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class f0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f63695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f63696c;

    private f0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2) {
        this.f63694a = constraintLayout;
        this.f63695b = appCompatTextView;
        this.f63696c = constraintLayout2;
    }

    public static f0 a(View view) {
        int i11 = R$id.filter_name_1;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        return new f0(constraintLayout, appCompatTextView, constraintLayout);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63694a;
    }
}
