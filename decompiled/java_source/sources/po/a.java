package po;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.transsion.player.view.R$id;
import g4.b;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f72491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f72492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f72493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProgressBar f72494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f72495f;

    private a(LinearLayout linearLayout, ImageView imageView, ProgressBar progressBar, LinearLayout linearLayout2, ProgressBar progressBar2, LinearLayout linearLayout3) {
        this.f72490a = linearLayout;
        this.f72491b = imageView;
        this.f72492c = progressBar;
        this.f72493d = linearLayout2;
        this.f72494e = progressBar2;
        this.f72495f = linearLayout3;
    }

    public static a a(View view) {
        int i11 = R$id.bvIV;
        ImageView imageView = (ImageView) b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.bvProgress;
            ProgressBar progressBar = (ProgressBar) b.a(view, i11);
            if (progressBar != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i11 = R$id.secProgress;
                ProgressBar progressBar2 = (ProgressBar) b.a(view, i11);
                if (progressBar2 != null) {
                    i11 = R$id.tipsLL;
                    LinearLayout linearLayout2 = (LinearLayout) b.a(view, i11);
                    if (linearLayout2 != null) {
                        return new a(linearLayout, imageView, progressBar, linearLayout, progressBar2, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72490a;
    }
}
