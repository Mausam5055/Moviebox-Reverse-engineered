package bj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f16555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f16556b;

    private b(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f16555a = frameLayout;
        this.f16556b = recyclerView;
    }

    public static b a(View view) {
        int i11 = R$id.rv_list;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            return new b((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_recent_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f16555a;
    }
}
