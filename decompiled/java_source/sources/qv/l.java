package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProgressBar f73797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f73798c;

    private l(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f73796a = constraintLayout;
        this.f73797b = progressBar;
        this.f73798c = recyclerView;
    }

    public static l a(View view) {
        int i11 = R$id.progressBar;
        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
        if (progressBar != null) {
            i11 = R$id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                return new l((ConstraintLayout) view, progressBar, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_play_list_tab_content, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73796a;
    }
}
