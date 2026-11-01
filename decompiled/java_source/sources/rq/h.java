package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.widget.NoInterceptRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f74650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f74651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NoInterceptRecyclerView f74652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f74653d;

    private h(ConstraintLayout constraintLayout, RecyclerView recyclerView, NoInterceptRecyclerView noInterceptRecyclerView, ProgressBar progressBar) {
        this.f74650a = constraintLayout;
        this.f74651b = recyclerView;
        this.f74652c = noInterceptRecyclerView;
        this.f74653d = progressBar;
    }

    public static h a(View view) {
        int i11 = R$id.search_result_list_recycler;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.search_result_list_tabs;
            NoInterceptRecyclerView noInterceptRecyclerView = (NoInterceptRecyclerView) g4.b.a(view, i11);
            if (noInterceptRecyclerView != null) {
                i11 = R$id.search_result_tab_progress_bar;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    return new h((ConstraintLayout) view, recyclerView, noInterceptRecyclerView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_result_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f74650a;
    }
}
