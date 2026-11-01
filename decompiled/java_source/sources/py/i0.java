package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class i0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f72759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f72760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f72761e;

    private i0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2, View view) {
        this.f72757a = constraintLayout;
        this.f72758b = recyclerView;
        this.f72759c = tnTextView;
        this.f72760d = tnTextView2;
        this.f72761e = view;
    }

    public static i0 a(View view) {
        View viewA;
        int i11 = R$id.historyRv;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tvAll;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                i11 = R$id.tvTitle;
                TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                if (tnTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.vLine))) != null) {
                    return new i0((ConstraintLayout) view, recyclerView, tnTextView, tnTextView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_history_play_record_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72757a;
    }
}
