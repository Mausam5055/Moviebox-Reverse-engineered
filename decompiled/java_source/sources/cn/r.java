package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f17463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f17464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f17465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f17466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f17467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f17468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f17469h;

    private r(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view, View view2) {
        this.f17462a = constraintLayout;
        this.f17463b = frameLayout;
        this.f17464c = appCompatImageView;
        this.f17465d = appCompatTextView;
        this.f17466e = appCompatTextView2;
        this.f17467f = appCompatTextView3;
        this.f17468g = view;
        this.f17469h = view2;
    }

    public static r a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ivCollection;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.tvMovieInfo;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tvMovieTitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tvTag;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null && (viewA = g4.b.a(view, (i11 = R$id.v_detail_hot_zone))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                            return new r((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, viewA, viewA2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_edu_music_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17462a;
    }
}
