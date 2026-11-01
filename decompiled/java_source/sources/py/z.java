package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class z implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f72996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f72997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f72998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f73000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f73001g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProgressBar f73002h;

    private z(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, ProgressBar progressBar) {
        this.f72995a = frameLayout;
        this.f72996b = linearLayout;
        this.f72997c = linearLayout2;
        this.f72998d = recyclerView;
        this.f72999e = appCompatTextView;
        this.f73000f = appCompatTextView2;
        this.f73001g = appCompatTextView3;
        this.f73002h = progressBar;
    }

    public static z a(View view) {
        int i11 = R$id.ll_loading;
        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
        if (linearLayout != null) {
            i11 = R$id.ll_not_net;
            LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout2 != null) {
                i11 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_loading;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_no_network_content;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tv_retry;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView3 != null) {
                                i11 = R$id.view_load;
                                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                if (progressBar != null) {
                                    return new z((FrameLayout) view, linearLayout, linearLayout2, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, progressBar);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_group, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72995a;
    }
}
