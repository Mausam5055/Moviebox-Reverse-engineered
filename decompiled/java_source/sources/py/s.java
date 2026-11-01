package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SwipeRefreshLayout f72908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TitleLayout f72909d;

    private s(ConstraintLayout constraintLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f72906a = constraintLayout;
        this.f72907b = recyclerView;
        this.f72908c = swipeRefreshLayout;
        this.f72909d = titleLayout;
    }

    public static s a(View view) {
        int i11 = R$id.historyRv;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
            if (swipeRefreshLayout != null) {
                i11 = R$id.titleLayout;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    return new s((ConstraintLayout) view, recyclerView, swipeRefreshLayout, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_all_historical_play_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72906a;
    }
}
