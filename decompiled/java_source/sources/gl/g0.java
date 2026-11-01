package gl;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.home.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f63704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f63705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TabLayout f63706d;

    private g0(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, TabLayout tabLayout) {
        this.f63703a = constraintLayout;
        this.f63704b = view;
        this.f63705c = constraintLayout2;
        this.f63706d = tabLayout;
    }

    public static g0 a(View view) {
        int i11 = R$id.divider;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i12 = R$id.tab_movie;
            TabLayout tabLayout = (TabLayout) g4.b.a(view, i12);
            if (tabLayout != null) {
                return new g0(constraintLayout, viewA, constraintLayout, tabLayout);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63703a;
    }
}
