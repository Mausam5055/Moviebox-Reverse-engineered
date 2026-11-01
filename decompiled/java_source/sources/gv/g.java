package gv;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.transfer.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f64002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f64003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f64004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f64005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f64006e;

    private g(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f64002a = frameLayout;
        this.f64003b = appCompatImageView;
        this.f64004c = appCompatImageView2;
        this.f64005d = appCompatTextView;
        this.f64006e = appCompatTextView2;
    }

    public static g a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivLoading;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tvDevicesName;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tvWifiSsid;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new g((FrameLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f64002a;
    }
}
