package ms;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f69800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f69801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f69802d;

    private j(ConstraintLayout constraintLayout, TnTextView tnTextView, RecyclerView recyclerView, TnTextView tnTextView2) {
        this.f69799a = constraintLayout;
        this.f69800b = tnTextView;
        this.f69801c = recyclerView;
        this.f69802d = tnTextView2;
    }

    public static j a(View view) {
        int i11 = R$id.main_operation_movie_more_text;
        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.main_operation_movie_rank_recycler;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.main_operation_movie_rank_title;
                TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                if (tnTextView2 != null) {
                    return new j((ConstraintLayout) view, tnTextView, recyclerView, tnTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69799a;
    }
}
