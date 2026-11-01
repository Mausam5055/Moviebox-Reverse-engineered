package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f63808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewStub f63809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewStub f63810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ViewStub f63811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f63813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f63814g;

    private q(FrameLayout frameLayout, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TnTextView tnTextView) {
        this.f63808a = frameLayout;
        this.f63809b = viewStub;
        this.f63810c = viewStub2;
        this.f63811d = viewStub3;
        this.f63812e = recyclerView;
        this.f63813f = swipeRefreshLayout;
        this.f63814g = tnTextView;
    }

    public static q a(View view) {
        int i11 = R$id.loading_stub;
        ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
        if (viewStub != null) {
            i11 = R$id.no_network_stub;
            ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
            if (viewStub2 != null) {
                i11 = R$id.no_result_stub;
                ViewStub viewStub3 = (ViewStub) g4.b.a(view, i11);
                if (viewStub3 != null) {
                    i11 = R$id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.swipe_refresh;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                        if (swipeRefreshLayout != null) {
                            i11 = R$id.tv_selected_tags;
                            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView != null) {
                                return new q((FrameLayout) view, viewStub, viewStub2, viewStub3, recyclerView, swipeRefreshLayout, tnTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hashtag_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f63808a;
    }
}
