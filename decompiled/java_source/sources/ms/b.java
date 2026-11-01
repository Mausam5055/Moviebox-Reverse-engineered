package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f69706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SwipeRefreshLayout f69708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f69709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f69710f;

    private b(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f69705a = constraintLayout;
        this.f69706b = constraintLayout2;
        this.f69707c = appCompatImageView;
        this.f69708d = swipeRefreshLayout;
        this.f69709e = recyclerView;
        this.f69710f = tnTextView;
    }

    public static b a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.mRefreshLayout;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                i11 = R$id.mRv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_title;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        return new b(constraintLayout, constraintLayout, appCompatImageView, swipeRefreshLayout, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69705a;
    }
}
