package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class n0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView f72856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72857b;

    private n0(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f72856a = recyclerView;
        this.f72857b = recyclerView2;
    }

    public static n0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new n0(recyclerView, recyclerView);
    }

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_download_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RecyclerView getRoot() {
        return this.f72856a;
    }
}
