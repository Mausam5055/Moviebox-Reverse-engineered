package gv;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.transfer.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f63994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f63995c;

    private e(LinearLayout linearLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView) {
        this.f63993a = linearLayout;
        this.f63994b = appCompatImageView;
        this.f63995c = shapeableImageView;
    }

    public static e a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivQrCode;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                return new e((LinearLayout) view, appCompatImageView, shapeableImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63993a;
    }
}
