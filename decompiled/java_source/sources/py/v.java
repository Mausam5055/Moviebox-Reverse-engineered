package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadPanelForYouFootView;

/* JADX INFO: loaded from: classes7.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f72942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DownloadPanelForYouFootView f72943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f72944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f72945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NestedScrollView f72946f;

    private v(LinearLayout linearLayout, FrameLayout frameLayout, DownloadPanelForYouFootView downloadPanelForYouFootView, LinearLayout linearLayout2, RecyclerView recyclerView, NestedScrollView nestedScrollView) {
        this.f72941a = linearLayout;
        this.f72942b = frameLayout;
        this.f72943c = downloadPanelForYouFootView;
        this.f72944d = linearLayout2;
        this.f72945e = recyclerView;
        this.f72946f = nestedScrollView;
    }

    public static v a(View view) {
        int i11 = R$id.fl_empty_root;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.foot_for_you;
            DownloadPanelForYouFootView downloadPanelForYouFootView = (DownloadPanelForYouFootView) g4.b.a(view, i11);
            if (downloadPanelForYouFootView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i11 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.sv_empty_root;
                    NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                    if (nestedScrollView != null) {
                        return new v(linearLayout, frameLayout, downloadPanelForYouFootView, linearLayout, recyclerView, nestedScrollView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72941a;
    }
}
