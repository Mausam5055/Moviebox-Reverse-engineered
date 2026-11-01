package gl;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayoutCompat f63778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f63780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayoutCompat f63781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayoutCompat f63782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayoutCompat f63783g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f63784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProgressBar f63785i;

    private m0(ConstraintLayout constraintLayout, LinearLayoutCompat linearLayoutCompat, View view, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, LinearLayoutCompat linearLayoutCompat4, LinearLayoutCompat linearLayoutCompat5, ConstraintLayout constraintLayout2, ProgressBar progressBar) {
        this.f63777a = constraintLayout;
        this.f63778b = linearLayoutCompat;
        this.f63779c = view;
        this.f63780d = linearLayoutCompat2;
        this.f63781e = linearLayoutCompat3;
        this.f63782f = linearLayoutCompat4;
        this.f63783g = linearLayoutCompat5;
        this.f63784h = constraintLayout2;
        this.f63785i = progressBar;
    }

    public static m0 a(View view) {
        View viewA;
        int i11 = R$id.f44211l1;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
        if (linearLayoutCompat != null && (viewA = g4.b.a(view, (i11 = R$id.f44212l2))) != null) {
            i11 = R$id.f44213l3;
            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat2 != null) {
                i11 = R$id.f44214l4;
                LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) g4.b.a(view, i11);
                if (linearLayoutCompat3 != null) {
                    i11 = R$id.f44215l5;
                    LinearLayoutCompat linearLayoutCompat4 = (LinearLayoutCompat) g4.b.a(view, i11);
                    if (linearLayoutCompat4 != null) {
                        i11 = R$id.f44216l6;
                        LinearLayoutCompat linearLayoutCompat5 = (LinearLayoutCompat) g4.b.a(view, i11);
                        if (linearLayoutCompat5 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i11 = R$id.loading_pb;
                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                            if (progressBar != null) {
                                return new m0(constraintLayout, linearLayoutCompat, viewA, linearLayoutCompat2, linearLayoutCompat3, linearLayoutCompat4, linearLayoutCompat5, constraintLayout, progressBar);
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
        return this.f63777a;
    }
}
