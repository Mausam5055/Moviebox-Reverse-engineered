package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class s0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f62900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f62901c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f62902d;

    private s0(FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, FrameLayout frameLayout2) {
        this.f62899a = frameLayout;
        this.f62900b = recyclerView;
        this.f62901c = swipeRefreshLayout;
        this.f62902d = frameLayout2;
    }

    public static s0 a(View view) {
        int i11 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.swipeRefresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                return new s0(frameLayout, recyclerView, swipeRefreshLayout, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile_video, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f62899a;
    }
}
