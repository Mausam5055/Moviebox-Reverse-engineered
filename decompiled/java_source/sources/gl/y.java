package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f63865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m0 f63866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Guideline f63867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f63869f;

    private y(ConstraintLayout constraintLayout, View view, m0 m0Var, Guideline guideline, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f63864a = constraintLayout;
        this.f63865b = view;
        this.f63866c = m0Var;
        this.f63867d = guideline;
        this.f63868e = recyclerView;
        this.f63869f = swipeRefreshLayout;
    }

    public static y a(View view) {
        View viewA;
        int i11 = R$id.sub_operation_header_bg;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null && (viewA = g4.b.a(view, (i11 = R$id.sub_operation_loading))) != null) {
            m0 m0VarA = m0.a(viewA);
            i11 = R$id.sub_operation_main_guide;
            Guideline guideline = (Guideline) g4.b.a(view, i11);
            if (guideline != null) {
                i11 = R$id.sub_operation_main_recycler;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.sub_operation_main_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                    if (swipeRefreshLayout != null) {
                        return new y((ConstraintLayout) view, viewA2, m0VarA, guideline, recyclerView, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_sub_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63864a;
    }
}
