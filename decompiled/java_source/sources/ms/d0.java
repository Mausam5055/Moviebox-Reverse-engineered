package ms;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f69756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f69757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TabLayout f69758d;

    private d0(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, TabLayout tabLayout) {
        this.f69755a = constraintLayout;
        this.f69756b = view;
        this.f69757c = constraintLayout2;
        this.f69758d = tabLayout;
    }

    public static d0 a(View view) {
        int i11 = R$id.divider;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i12 = R$id.tab_movie;
            TabLayout tabLayout = (TabLayout) g4.b.a(view, i12);
            if (tabLayout != null) {
                return new d0(constraintLayout, viewA, constraintLayout, tabLayout);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69755a;
    }
}
