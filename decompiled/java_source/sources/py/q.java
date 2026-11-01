package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f72886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f72887d;

    private q(View view, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView) {
        this.f72884a = view;
        this.f72885b = appCompatImageView;
        this.f72886c = linearLayoutCompat;
        this.f72887d = tnTextView;
    }

    public static q a(View view) {
        int i11 = R$id.iv_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ll_download_inner;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.tv_tips;
                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                if (tnTextView != null) {
                    return new q(view, appCompatImageView, linearLayoutCompat, tnTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72884a;
    }
}
