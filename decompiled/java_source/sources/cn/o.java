package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f17428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f17429c;

    private o(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2) {
        this.f17427a = constraintLayout;
        this.f17428b = shapeableImageView;
        this.f17429c = shapeableImageView2;
    }

    public static o a(View view) {
        int i11 = R$id.ivMovieBlurCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.ivMovieCover;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView2 != null) {
                return new o((ConstraintLayout) view, shapeableImageView, shapeableImageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_stills, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17427a;
    }
}
