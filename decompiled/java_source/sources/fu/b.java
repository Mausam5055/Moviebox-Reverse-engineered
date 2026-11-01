package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f62477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f62478d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProgressBar f62479e;

    private b(FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, ProgressBar progressBar) {
        this.f62475a = frameLayout;
        this.f62476b = frameLayout2;
        this.f62477c = linearLayoutCompat;
        this.f62478d = recyclerView;
        this.f62479e = progressBar;
    }

    public static b a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i11 = R$id.ll_loading;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
        if (linearLayoutCompat != null) {
            i11 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.view_load;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    return new b(frameLayout, frameLayout, linearLayoutCompat, recyclerView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_subtitle_search_result_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f62475a;
    }
}
