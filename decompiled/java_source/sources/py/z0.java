package py;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class z0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLFrameLayout f73004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f73005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f73006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f73007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CircleProgressBar f73008f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f73009g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f73010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f73011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f73012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f73013k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f73014l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f73015m;

    private z0(ConstraintLayout constraintLayout, BLFrameLayout bLFrameLayout, ImageView imageView, AppCompatImageView appCompatImageView, View view, CircleProgressBar circleProgressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view2, View view3) {
        this.f73003a = constraintLayout;
        this.f73004b = bLFrameLayout;
        this.f73005c = imageView;
        this.f73006d = appCompatImageView;
        this.f73007e = view;
        this.f73008f = circleProgressBar;
        this.f73009g = recyclerView;
        this.f73010h = appCompatTextView;
        this.f73011i = appCompatTextView2;
        this.f73012j = appCompatTextView3;
        this.f73013k = appCompatTextView4;
        this.f73014l = view2;
        this.f73015m = view3;
    }

    public static z0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.fl_loading;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
        if (bLFrameLayout != null) {
            i11 = R$id.iv_close;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.iv_save_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                    i11 = R$id.progress_bar;
                    CircleProgressBar circleProgressBar = (CircleProgressBar) g4.b.a(view, i11);
                    if (circleProgressBar != null) {
                        i11 = R$id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                        if (recyclerView != null) {
                            i11 = R$id.tv_btn_confirm;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_progress;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.tv_tips;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        i11 = R$id.tv_title;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView4 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_bottom))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_loading_intercept))) != null) {
                                            return new z0((ConstraintLayout) view, bLFrameLayout, imageView, appCompatImageView, viewA, circleProgressBar, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA2, viewA3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73003a;
    }
}
