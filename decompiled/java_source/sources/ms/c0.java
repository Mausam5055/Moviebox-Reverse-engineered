package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f69726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProgressBar f69727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f69728c;

    private c0(FrameLayout frameLayout, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f69726a = frameLayout;
        this.f69727b = progressBar;
        this.f69728c = recyclerView;
    }

    public static c0 a(View view) {
        int i11 = R$id.pb_loading;
        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
        if (progressBar != null) {
            i11 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                return new c0((FrameLayout) view, progressBar, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_short_tv_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f69726a;
    }
}
