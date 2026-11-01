package jx;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f66332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f66333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f66334e;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f66330a = constraintLayout;
        this.f66331b = appCompatImageView;
        this.f66332c = progressBar;
        this.f66333d = recyclerView;
        this.f66334e = appCompatTextView;
    }

    public static a a(View view) {
        int i11 = R$id.iv_close;
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
                        return new a((ConstraintLayout) view, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66330a;
    }
}
