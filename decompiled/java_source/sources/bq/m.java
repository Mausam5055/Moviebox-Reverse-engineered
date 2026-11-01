package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.AdvRecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f16791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdvRecyclerView f16792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f16793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TitleLayout f16794d;

    private m(LinearLayoutCompat linearLayoutCompat, AdvRecyclerView advRecyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f16791a = linearLayoutCompat;
        this.f16792b = advRecyclerView;
        this.f16793c = swipeRefreshLayout;
        this.f16794d = titleLayout;
    }

    public static m a(View view) {
        int i11 = R$id.rv_room;
        AdvRecyclerView advRecyclerView = (AdvRecyclerView) g4.b.a(view, i11);
        if (advRecyclerView != null) {
            i11 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                i11 = R$id.tool_bar;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    return new m((LinearLayoutCompat) view, advRecyclerView, swipeRefreshLayout, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f16791a;
    }
}
