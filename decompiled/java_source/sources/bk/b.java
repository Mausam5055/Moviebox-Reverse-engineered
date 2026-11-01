package bk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f16578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f16579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f16580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TitleLayout f16581e;

    private b(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f16577a = constraintLayout;
        this.f16578b = constraintLayout2;
        this.f16579c = swipeRefreshLayout;
        this.f16580d = recyclerView;
        this.f16581e = titleLayout;
    }

    public static b a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.mRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
        if (swipeRefreshLayout != null) {
            i11 = R$id.mRv;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.mTitleLayout;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    return new b(constraintLayout, constraintLayout, swipeRefreshLayout, recyclerView, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16577a;
    }
}
