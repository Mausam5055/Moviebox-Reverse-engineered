package kk;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f66813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Guideline f66814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f66815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f66816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Barrier f66817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Barrier f66818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Guideline f66819g;

    private c(View view, Guideline guideline, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, Barrier barrier, Barrier barrier2, Guideline guideline2) {
        this.f66813a = view;
        this.f66814b = guideline;
        this.f66815c = shapeableImageView;
        this.f66816d = appCompatImageView;
        this.f66817e = barrier;
        this.f66818f = barrier2;
        this.f66819g = guideline2;
    }

    public static c a(View view) {
        Guideline guideline = (Guideline) g4.b.a(view, R$id.bottomGuideline);
        int i11 = R$id.f43735iv;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                return new c(view, guideline, shapeableImageView, appCompatImageView, (Barrier) g4.b.a(view, R$id.leftBarrier), (Barrier) g4.b.a(view, R$id.rightBarrier), (Guideline) g4.b.a(view, R$id.topGuideline));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f66813a;
    }
}
