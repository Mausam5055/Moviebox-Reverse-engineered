package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.AdvRecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadTransferLaterTipsView;

/* JADX INFO: loaded from: classes7.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdvRecyclerView f72965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f72966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DownloadTransferLaterTipsView f72967d;

    private x(FrameLayout frameLayout, AdvRecyclerView advRecyclerView, SwipeRefreshLayout swipeRefreshLayout, DownloadTransferLaterTipsView downloadTransferLaterTipsView) {
        this.f72964a = frameLayout;
        this.f72965b = advRecyclerView;
        this.f72966c = swipeRefreshLayout;
        this.f72967d = downloadTransferLaterTipsView;
    }

    public static x a(View view) {
        int i11 = R$id.rv_list;
        AdvRecyclerView advRecyclerView = (AdvRecyclerView) g4.b.a(view, i11);
        if (advRecyclerView != null) {
            i11 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                i11 = R$id.v_transfer_later_tips;
                DownloadTransferLaterTipsView downloadTransferLaterTipsView = (DownloadTransferLaterTipsView) g4.b.a(view, i11);
                if (downloadTransferLaterTipsView != null) {
                    return new x((FrameLayout) view, advRecyclerView, swipeRefreshLayout, downloadTransferLaterTipsView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_panel, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72964a;
    }
}
