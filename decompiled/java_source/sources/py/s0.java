package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class s0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f72912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f72915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f72917h;

    private s0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view) {
        this.f72910a = constraintLayout;
        this.f72911b = appCompatImageView;
        this.f72912c = appCompatImageView2;
        this.f72913d = appCompatTextView;
        this.f72914e = appCompatTextView2;
        this.f72915f = appCompatTextView3;
        this.f72916g = appCompatTextView4;
        this.f72917h = view;
    }

    public static s0 a(View view) {
        View viewA;
        int i11 = R$id.iv_check;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivPremium;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tv_ep;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_size;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tv_time;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.tv_title;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView4 != null && (viewA = g4.b.a(view, (i11 = R$id.v_size_line))) != null) {
                                return new s0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA);
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
        return this.f72910a;
    }
}
