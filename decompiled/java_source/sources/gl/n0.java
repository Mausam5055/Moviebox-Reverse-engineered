package gl;

import android.view.View;
import android.view.ViewStub;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.home.R$id;
import com.transsion.home.view.filter.expand.UGCFilterExpandView;

/* JADX INFO: loaded from: classes6.dex */
public final class n0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UGCFilterExpandView f63794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f63795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ViewStub f63796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewStub f63797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewStub f63798f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TabLayout f63799g;

    private n0(ConstraintLayout constraintLayout, UGCFilterExpandView uGCFilterExpandView, ConstraintLayout constraintLayout2, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, TabLayout tabLayout) {
        this.f63793a = constraintLayout;
        this.f63794b = uGCFilterExpandView;
        this.f63795c = constraintLayout2;
        this.f63796d = viewStub;
        this.f63797e = viewStub2;
        this.f63798f = viewStub3;
        this.f63799g = tabLayout;
    }

    public static n0 a(View view) {
        int i11 = R$id.filterExpand;
        UGCFilterExpandView uGCFilterExpandView = (UGCFilterExpandView) g4.b.a(view, i11);
        if (uGCFilterExpandView != null) {
            i11 = R$id.ll_tab_movie;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.loading_stub;
                ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                if (viewStub != null) {
                    i11 = R$id.no_network_stub;
                    ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
                    if (viewStub2 != null) {
                        i11 = R$id.no_result_stub;
                        ViewStub viewStub3 = (ViewStub) g4.b.a(view, i11);
                        if (viewStub3 != null) {
                            i11 = R$id.tab_movie;
                            TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                            if (tabLayout != null) {
                                return new n0((ConstraintLayout) view, uGCFilterExpandView, constraintLayout, viewStub, viewStub2, viewStub3, tabLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63793a;
    }
}
