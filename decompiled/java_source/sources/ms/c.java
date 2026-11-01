package ms;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f69719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f69720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69721c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f69722d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f69723e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f69724f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f69725g;

    private c(BLConstraintLayout bLConstraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f69719a = bLConstraintLayout;
        this.f69720b = frameLayout;
        this.f69721c = appCompatImageView;
        this.f69722d = progressBar;
        this.f69723e = recyclerView;
        this.f69724f = appCompatTextView;
        this.f69725g = view;
    }

    public static c a(View view) {
        View viewA;
        int i11 = R$id.content_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.pb_loading;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    i11 = R$id.tabs_rv;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.view_line))) != null) {
                            return new c((BLConstraintLayout) view, frameLayout, appCompatImageView, progressBar, recyclerView, appCompatTextView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f69719a;
    }
}
