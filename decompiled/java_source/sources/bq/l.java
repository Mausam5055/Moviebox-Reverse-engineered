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
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SwipeRefreshLayout f16789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f16790c;

    private l(ConstraintLayout constraintLayout, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
        this.f16788a = constraintLayout;
        this.f16789b = swipeRefreshLayout;
        this.f16790c = recyclerView;
    }

    public static l a(View view) {
        int i11 = R$id.swipe_refresh;
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
        if (swipeRefreshLayout != null) {
            i11 = R$id.waterfallRecyclerView;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                return new l((ConstraintLayout) view, swipeRefreshLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_likes_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16788a;
    }
}
