package rn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.payment.lib.R$id;
import com.transsion.payment.lib.R$layout;
import th.h;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f74580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f74581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f74582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f74583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f74584e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f74585f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayoutCompat f74586g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f74587h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f74588i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f74589j;

    private b(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar, LinearLayoutCompat linearLayoutCompat2, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, h hVar) {
        this.f74580a = linearLayoutCompat;
        this.f74581b = frameLayout;
        this.f74582c = appCompatImageView;
        this.f74583d = appCompatImageView2;
        this.f74584e = appCompatImageView3;
        this.f74585f = progressBar;
        this.f74586g = linearLayoutCompat2;
        this.f74587h = constraintLayout;
        this.f74588i = appCompatTextView;
        this.f74589j = hVar;
    }

    public static b a(View view) {
        View viewA;
        int i11 = R$id.fl_web;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_close;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.iv_right;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView3 != null) {
                        i11 = R$id.progress;
                        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                        if (progressBar != null) {
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                            i11 = R$id.tool_bar;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                i11 = R$id.tv_titleText;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.web_pay_include_loading))) != null) {
                                    return new b(linearLayoutCompat, frameLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, progressBar, linearLayoutCompat, constraintLayout, appCompatTextView, h.a(viewA));
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_web_pay, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f74580a;
    }
}
