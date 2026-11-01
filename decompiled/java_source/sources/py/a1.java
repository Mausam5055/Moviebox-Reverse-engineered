package py;

import android.view.View;
import android.widget.ImageView;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f72594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CircleProgressBar f72595c;

    private a1(View view, ImageView imageView, CircleProgressBar circleProgressBar) {
        this.f72593a = view;
        this.f72594b = imageView;
        this.f72595c = circleProgressBar;
    }

    public static a1 a(View view) {
        int i11 = R$id.iv_close;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.progress_bar_close;
            CircleProgressBar circleProgressBar = (CircleProgressBar) g4.b.a(view, i11);
            if (circleProgressBar != null) {
                return new a1(view, imageView, circleProgressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72593a;
    }
}
