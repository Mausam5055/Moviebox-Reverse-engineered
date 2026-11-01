package so;

import android.view.View;
import com.tn.lib.view.expand.ExpandView;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExpandView f75618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExpandView f75619b;

    private m0(ExpandView expandView, ExpandView expandView2) {
        this.f75618a = expandView;
        this.f75619b = expandView2;
    }

    public static m0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ExpandView expandView = (ExpandView) view;
        return new m0(expandView, expandView);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ExpandView getRoot() {
        return this.f75618a;
    }
}
