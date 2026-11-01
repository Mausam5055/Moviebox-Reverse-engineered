package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f75566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f75567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f75568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SwipeRefreshLayout f75569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f75570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f75571g;

    private k(ConstraintLayout constraintLayout, View view, ImageView imageView, ConstraintLayout constraintLayout2, SwipeRefreshLayout swipeRefreshLayout, TextView textView, RecyclerView recyclerView) {
        this.f75565a = constraintLayout;
        this.f75566b = view;
        this.f75567c = imageView;
        this.f75568d = constraintLayout2;
        this.f75569e = swipeRefreshLayout;
        this.f75570f = textView;
        this.f75571g = recyclerView;
    }

    public static k a(View view) {
        int i11 = R$id.divider_line;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_back;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.mTitleLayout;
                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout != null) {
                    i11 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                    if (swipeRefreshLayout != null) {
                        i11 = R$id.tv_title;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.waterfallRecyclerView;
                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView != null) {
                                return new k((ConstraintLayout) view, viewA, imageView, constraintLayout, swipeRefreshLayout, textView, recyclerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_favorite_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75565a;
    }
}
