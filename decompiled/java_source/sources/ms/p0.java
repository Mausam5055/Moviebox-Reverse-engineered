package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class p0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f69889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f69890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f69892d;

    private p0(View view, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f69889a = view;
        this.f69890b = shapeableImageView;
        this.f69891c = appCompatTextView;
        this.f69892d = appCompatTextView2;
    }

    public static p0 a(View view) {
        int i11 = R$id.ivAdAvatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tvBtn;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tvDes;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new p0(view, shapeableImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f69889a;
    }
}
