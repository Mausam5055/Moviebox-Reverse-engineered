package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.SafeRecyclerView;

/* JADX INFO: loaded from: classes7.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SafeRecyclerView f69948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f69949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f69950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Space f69951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f69952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f69953g;

    private x(ConstraintLayout constraintLayout, SafeRecyclerView safeRecyclerView, SwipeRefreshLayout swipeRefreshLayout, View view, Space space, View view2, View view3) {
        this.f69947a = constraintLayout;
        this.f69948b = safeRecyclerView;
        this.f69949c = swipeRefreshLayout;
        this.f69950d = view;
        this.f69951e = space;
        this.f69952f = view2;
        this.f69953g = view3;
    }

    public static x a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.recycler_view;
        SafeRecyclerView safeRecyclerView = (SafeRecyclerView) g4.b.a(view, i11);
        if (safeRecyclerView != null) {
            i11 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null && (viewA = g4.b.a(view, (i11 = R$id.top_bg))) != null) {
                i11 = R$id.top_guideline;
                Space space = (Space) g4.b.a(view, i11);
                if (space != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_bar_space))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_top_bg))) != null) {
                    return new x((ConstraintLayout) view, safeRecyclerView, swipeRefreshLayout, viewA, space, viewA2, viewA3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_discover, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69947a;
    }
}
