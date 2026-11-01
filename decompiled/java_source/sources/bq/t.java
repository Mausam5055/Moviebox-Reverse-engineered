package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f16865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f16866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SwipeRefreshLayout f16867d;

    private t(ConstraintLayout constraintLayout, RecyclerView recyclerView, RecyclerView recyclerView2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f16864a = constraintLayout;
        this.f16865b = recyclerView;
        this.f16866c = recyclerView2;
        this.f16867d = swipeRefreshLayout;
    }

    public static t a(View view) {
        int i11 = R$id.avatar_recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.feed_recyclerView;
            RecyclerView recyclerView2 = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView2 != null) {
                i11 = R$id.swipe_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                if (swipeRefreshLayout != null) {
                    return new t((ConstraintLayout) view, recyclerView, recyclerView2, swipeRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subscription_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16864a;
    }
}
