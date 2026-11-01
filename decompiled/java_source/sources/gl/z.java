package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.wrapperad.view.BiddingFloatingIrregularView;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class z implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f63870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BiddingFloatingIrregularView f63871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m0 f63872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f63873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CustomSwipeRefreshLayout f63874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f63875f;

    private z(FrameLayout frameLayout, BiddingFloatingIrregularView biddingFloatingIrregularView, m0 m0Var, RecyclerView recyclerView, CustomSwipeRefreshLayout customSwipeRefreshLayout, View view) {
        this.f63870a = frameLayout;
        this.f63871b = biddingFloatingIrregularView;
        this.f63872c = m0Var;
        this.f63873d = recyclerView;
        this.f63874e = customSwipeRefreshLayout;
        this.f63875f = view;
    }

    public static z a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.floatingIrregularView;
        BiddingFloatingIrregularView biddingFloatingIrregularView = (BiddingFloatingIrregularView) g4.b.a(view, i11);
        if (biddingFloatingIrregularView != null && (viewA = g4.b.a(view, (i11 = R$id.loading_bg))) != null) {
            m0 m0VarA = m0.a(viewA);
            i11 = R$id.recycleView;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.swipe_refresh;
                CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) g4.b.a(view, i11);
                if (customSwipeRefreshLayout != null && (viewA2 = g4.b.a(view, (i11 = R$id.trending_header_bg))) != null) {
                    return new z((FrameLayout) view, biddingFloatingIrregularView, m0VarA, recyclerView, customSwipeRefreshLayout, viewA2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_trending, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f63870a;
    }
}
