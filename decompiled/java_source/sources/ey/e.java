package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f62093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f62094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62095e;

    private e(ConstraintLayout constraintLayout, FrameLayout frameLayout, View view, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        this.f62091a = constraintLayout;
        this.f62092b = frameLayout;
        this.f62093c = view;
        this.f62094d = progressBar;
        this.f62095e = appCompatTextView;
    }

    public static e a(View view) {
        View viewA;
        int i11 = R$id.cover_gradient;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null && (viewA = g4.b.a(view, (i11 = R$id.cover_transparent))) != null) {
            i11 = R$id.progressBar;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.pull_indicator;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new e((ConstraintLayout) view, frameLayout, viewA, progressBar, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.second_floor_arc_cover_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62091a;
    }
}
