package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f75703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f75704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f75705c;

    private s(FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f75703a = frameLayout;
        this.f75704b = recyclerView;
        this.f75705c = swipeRefreshLayout;
    }

    public static s a(View view) {
        int i11 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.swipeRefresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                return new s((FrameLayout) view, recyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_post, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f75703a;
    }
}
