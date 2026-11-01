package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.view.filter.popup.PopupFilterView;

/* JADX INFO: loaded from: classes6.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g0 f63835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f63836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PopupFilterView f63837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f63838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f63839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SwipeRefreshLayout f63840g;

    private s(LinearLayout linearLayout, g0 g0Var, RecyclerView recyclerView, PopupFilterView popupFilterView, View view, View view2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f63834a = linearLayout;
        this.f63835b = g0Var;
        this.f63836c = recyclerView;
        this.f63837d = popupFilterView;
        this.f63838e = view;
        this.f63839f = view2;
        this.f63840g = swipeRefreshLayout;
    }

    public static s a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.ll_tab_movie;
        View viewA3 = g4.b.a(view, i11);
        if (viewA3 != null) {
            g0 g0VarA = g0.a(viewA3);
            i11 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.popup_filter_view;
                PopupFilterView popupFilterView = (PopupFilterView) g4.b.a(view, i11);
                if (popupFilterView != null && (viewA = g4.b.a(view, (i11 = R$id.popup_filter_view_linear))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.sub_movie_header_bg))) != null) {
                    i11 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                    if (swipeRefreshLayout != null) {
                        return new s((LinearLayout) view, g0VarA, recyclerView, popupFilterView, viewA, viewA2, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_movie, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63834a;
    }
}
