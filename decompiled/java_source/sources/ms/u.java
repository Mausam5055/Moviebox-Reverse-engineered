package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class u implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f69932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f69933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f69934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f69935d;

    private u(View view, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView) {
        this.f69932a = view;
        this.f69933b = appCompatImageView;
        this.f69934c = linearLayoutCompat;
        this.f69935d = tnTextView;
    }

    public static u a(View view) {
        int i11 = R$id.iv_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ll_download_inner;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.short_tv_tips;
                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                if (tnTextView != null) {
                    return new u(view, appCompatImageView, linearLayoutCompat, tnTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f69932a;
    }
}
