package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f74641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f74642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f74643c;

    private f(RelativeLayout relativeLayout, RecyclerView recyclerView, ImageView imageView) {
        this.f74641a = relativeLayout;
        this.f74642b = recyclerView;
        this.f74643c = imageView;
    }

    public static f a(View view) {
        int i11 = R$id.search_rank_pager_recycler;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.search_rank_pager_type;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                return new f((RelativeLayout) view, recyclerView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_rank_pager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f74641a;
    }
}
