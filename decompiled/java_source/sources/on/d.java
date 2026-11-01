package on;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ninegridview.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f71062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f71063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f71064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f71065d;

    private d(View view, AppCompatImageView appCompatImageView, FrameLayout frameLayout, ShapeableImageView shapeableImageView) {
        this.f71062a = view;
        this.f71063b = appCompatImageView;
        this.f71064c = frameLayout;
        this.f71065d = shapeableImageView;
    }

    public static d a(View view) {
        int i11 = R$id.label_gif;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.video_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.video_cover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    return new d(view, appCompatImageView, frameLayout, shapeableImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f71062a;
    }
}
