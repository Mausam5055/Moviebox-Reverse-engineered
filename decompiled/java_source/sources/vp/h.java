package vp;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.rewardscenter.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f77408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f77409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f77410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f77411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f77412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f77413g;

    private h(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f77407a = constraintLayout;
        this.f77408b = appCompatImageView;
        this.f77409c = shapeableImageView;
        this.f77410d = constraintLayout2;
        this.f77411e = appCompatTextView;
        this.f77412f = appCompatTextView2;
        this.f77413g = appCompatTextView3;
    }

    public static h a(View view) {
        int i11 = R$id.ic_points;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_avatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i11 = R$id.tv_earn;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_name;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tv_points;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            return new h(constraintLayout, appCompatImageView, shapeableImageView, constraintLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f77407a;
    }
}
