package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f0 f63801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f63802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SwipeRefreshLayout f63803d;

    private o(LinearLayout linearLayout, f0 f0Var, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f63800a = linearLayout;
        this.f63801b = f0Var;
        this.f63802c = recyclerView;
        this.f63803d = swipeRefreshLayout;
    }

    public static o a(View view) {
        int i11 = R$id.ll_tab_filter;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            f0 f0VarA = f0.a(viewA);
            int i12 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i12);
            if (recyclerView != null) {
                i12 = R$id.swipe_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i12);
                if (swipeRefreshLayout != null) {
                    return new o((LinearLayout) view, f0VarA, recyclerView, swipeRefreshLayout);
                }
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63800a;
    }
}
