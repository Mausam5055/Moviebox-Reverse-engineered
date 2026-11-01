package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f66036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f66037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f66038c;

    private c0(FrameLayout frameLayout, View view, View view2) {
        this.f66036a = frameLayout;
        this.f66037b = view;
        this.f66038c = view2;
    }

    public static c0 a(View view) {
        View viewA;
        int i11 = R$id.viewBottom;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 == null || (viewA = g4.b.a(view, (i11 = R$id.viewTop))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        return new c0((FrameLayout) view, viewA2, viewA);
    }

    public static c0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_view_measure_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f66036a;
    }
}
