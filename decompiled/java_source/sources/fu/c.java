package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f62481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f62483d;

    private c(ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f62480a = constraintLayout;
        this.f62481b = recyclerView;
        this.f62482c = appCompatTextView;
        this.f62483d = view;
    }

    public static c a(View view) {
        View viewA;
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_bottom_line_line))) != null) {
                return new c((ConstraintLayout) view, recyclerView, appCompatTextView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_audio_select_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62480a;
    }
}
