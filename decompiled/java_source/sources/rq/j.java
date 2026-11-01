package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView f74664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f74665b;

    private j(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f74664a = recyclerView;
        this.f74665b = recyclerView2;
    }

    public static j a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new j(recyclerView, recyclerView);
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_suggest_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RecyclerView getRoot() {
        return this.f74664a;
    }
}
