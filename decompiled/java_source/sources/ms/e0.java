package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f69764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f69766d;

    private e0(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f69763a = constraintLayout;
        this.f69764b = shapeableImageView;
        this.f69765c = appCompatImageView;
        this.f69766d = appCompatTextView;
    }

    public static e0 a(View view) {
        int i11 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.iv_play;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new e0((ConstraintLayout) view, shapeableImageView, appCompatImageView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69763a;
    }
}
