package so;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f75523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f75524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f75525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f75527f;

    private g(ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, ImageView imageView, AppCompatTextView appCompatTextView, View view2) {
        this.f75522a = constraintLayout;
        this.f75523b = view;
        this.f75524c = frameLayout;
        this.f75525d = imageView;
        this.f75526e = appCompatTextView;
        this.f75527f = view2;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.divider;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null) {
            i11 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.iv_close;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.tv_comment;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_bottom))) != null) {
                        return new g((ConstraintLayout) view, viewA2, frameLayout, imageView, appCompatTextView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75522a;
    }
}
