package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f66344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f66345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f66346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f66347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66348f;

    private c(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f66343a = constraintLayout;
        this.f66344b = view;
        this.f66345c = appCompatImageView;
        this.f66346d = progressBar;
        this.f66347e = recyclerView;
        this.f66348f = appCompatTextView;
    }

    public static c a(View view) {
        int i11 = R$id.divider;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.pb_loading;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    i11 = R$id.f57563rv;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            return new c((ConstraintLayout) view, viewA, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_audio_track, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66343a;
    }
}
