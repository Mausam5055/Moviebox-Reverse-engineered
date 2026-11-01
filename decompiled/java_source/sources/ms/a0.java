package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv._channel.ui.widget.ShortTvPopupFilterView;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f69698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f69699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f69700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShortTvPopupFilterView f69701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f69702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f69703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SwipeRefreshLayout f69704g;

    private a0(LinearLayout linearLayout, d0 d0Var, RecyclerView recyclerView, ShortTvPopupFilterView shortTvPopupFilterView, View view, View view2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f69698a = linearLayout;
        this.f69699b = d0Var;
        this.f69700c = recyclerView;
        this.f69701d = shortTvPopupFilterView;
        this.f69702e = view;
        this.f69703f = view2;
        this.f69704g = swipeRefreshLayout;
    }

    public static a0 a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.ll_tab_movie;
        View viewA3 = g4.b.a(view, i11);
        if (viewA3 != null) {
            d0 d0VarA = d0.a(viewA3);
            i11 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.popup_filter_view;
                ShortTvPopupFilterView shortTvPopupFilterView = (ShortTvPopupFilterView) g4.b.a(view, i11);
                if (shortTvPopupFilterView != null && (viewA = g4.b.a(view, (i11 = R$id.popup_filter_view_linear))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.sub_movie_header_bg))) != null) {
                    i11 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                    if (swipeRefreshLayout != null) {
                        return new a0((LinearLayout) view, d0VarA, recyclerView, shortTvPopupFilterView, viewA, viewA2, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_movie, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f69698a;
    }
}
