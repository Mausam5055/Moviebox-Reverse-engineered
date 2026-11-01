package py;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class f1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f72714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f72716e;

    private f1(View view, AppCompatImageView appCompatImageView, ImageView imageView, AppCompatTextView appCompatTextView, View view2) {
        this.f72712a = view;
        this.f72713b = appCompatImageView;
        this.f72714c = imageView;
        this.f72715d = appCompatTextView;
        this.f72716e = view2;
    }

    public static f1 a(View view) {
        View viewA;
        int i11 = R$id.iv_download_fail;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_download_icon;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.tv_download_status;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_download_tips))) != null) {
                    return new f1(view, appCompatImageView, imageView, appCompatTextView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72712a;
    }
}
