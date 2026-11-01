package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f17514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f17515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f17517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f17518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f17519g;

    private v(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f17513a = constraintLayout;
        this.f17514b = view;
        this.f17515c = constraintLayout2;
        this.f17516d = appCompatImageView;
        this.f17517e = recyclerView;
        this.f17518f = appCompatTextView;
        this.f17519g = appCompatTextView2;
    }

    public static v a(View view) {
        int i11 = R$id.divider;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.f46915rv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_all_episodes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            return new v(constraintLayout, viewA, constraintLayout, appCompatImageView, recyclerView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_video_detail_seasons, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17513a;
    }
}
