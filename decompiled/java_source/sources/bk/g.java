package bk;

import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f16609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f16610c;

    private g(ConstraintLayout constraintLayout, View view, FrameLayout frameLayout) {
        this.f16608a = constraintLayout;
        this.f16609b = view;
        this.f16610c = frameLayout;
    }

    public static g a(View view) {
        int i11 = R$id.guideline;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.member_page_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                return new g((ConstraintLayout) view, viewA, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16608a;
    }
}
