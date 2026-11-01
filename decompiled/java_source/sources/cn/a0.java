package cn;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f17295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f17296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f17297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f17298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f17299f;

    private a0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f17294a = constraintLayout;
        this.f17295b = appCompatImageView;
        this.f17296c = appCompatTextView;
        this.f17297d = appCompatTextView2;
        this.f17298e = appCompatTextView3;
        this.f17299f = appCompatTextView4;
    }

    public static a0 a(View view) {
        int i11 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tvInfoContent;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tvInfoTitle;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            return new a0((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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
        return this.f17294a;
    }
}
