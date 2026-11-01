package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f63787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f63788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f63789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f63791f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TitleLayout f63792g;

    private n(ConstraintLayout constraintLayout, View view, ImageView imageView, View view2, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f63786a = constraintLayout;
        this.f63787b = view;
        this.f63788c = imageView;
        this.f63789d = view2;
        this.f63790e = recyclerView;
        this.f63791f = swipeRefreshLayout;
        this.f63792g = titleLayout;
    }

    public static n a(View view) {
        View viewA;
        int i11 = R$id.film_list_color_mask;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null) {
            i11 = R$id.film_list_cover;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.film_list_gradient))) != null) {
                i11 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                    if (swipeRefreshLayout != null) {
                        i11 = R$id.tool_bar;
                        TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                        if (titleLayout != null) {
                            return new n((ConstraintLayout) view, viewA2, imageView, viewA, recyclerView, swipeRefreshLayout, titleLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_film_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63786a;
    }
}
