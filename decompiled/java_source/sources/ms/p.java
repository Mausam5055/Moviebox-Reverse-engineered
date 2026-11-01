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
import com.transsion.shorttv.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class p implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f69884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SwipeRefreshLayout f69886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f69887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f69888f;

    private p(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f69883a = constraintLayout;
        this.f69884b = constraintLayout2;
        this.f69885c = appCompatImageView;
        this.f69886d = swipeRefreshLayout;
        this.f69887e = recyclerView;
        this.f69888f = tnTextView;
    }

    public static p a(View view) {
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
                        return new p(constraintLayout, constraintLayout, appCompatImageView, swipeRefreshLayout, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69883a;
    }
}
