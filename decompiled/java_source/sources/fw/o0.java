package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.StateView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class o0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateView f62837b;

    private o0(ConstraintLayout constraintLayout, StateView stateView) {
        this.f62836a = constraintLayout;
        this.f62837b = stateView;
    }

    public static o0 a(View view) {
        int i11 = R$id.emptyState;
        StateView stateView = (StateView) g4.b.a(view, i11);
        if (stateView != null) {
            return new o0((ConstraintLayout) view, stateView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_tv_download_web_empty, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62836a;
    }
}
