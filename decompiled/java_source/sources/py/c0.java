package py;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z0 f72632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewStub f72633c;

    private c0(FrameLayout frameLayout, z0 z0Var, ViewStub viewStub) {
        this.f72631a = frameLayout;
        this.f72632b = z0Var;
        this.f72633c = viewStub;
    }

    public static c0 a(View view) {
        int i11 = R$id.included_content;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            z0 z0VarA = z0.a(viewA);
            int i12 = R$id.vs_allow_access;
            ViewStub viewStub = (ViewStub) g4.b.a(view, i12);
            if (viewStub != null) {
                return new c0((FrameLayout) view, z0VarA, viewStub);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72631a;
    }
}
