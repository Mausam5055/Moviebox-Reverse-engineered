package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f63697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f63698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f63701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f63702f;

    private g(FrameLayout frameLayout, ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f63697a = frameLayout;
        this.f63698b = constraintLayout;
        this.f63699c = view;
        this.f63700d = appCompatImageView;
        this.f63701e = recyclerView;
        this.f63702f = tnTextView;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.clHeader;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.divider))) != null) {
            i11 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.rvGrades;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tvTitle;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        return new g((FrameLayout) view, constraintLayout, viewA, appCompatImageView, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_grade_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f63697a;
    }
}
