package fu;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.subtitle.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f62549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditText f62550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f62551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f62552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f62553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayoutCompat f62554f;

    private j(LinearLayoutCompat linearLayoutCompat, EditText editText, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat2) {
        this.f62549a = linearLayoutCompat;
        this.f62550b = editText;
        this.f62551c = appCompatImageView;
        this.f62552d = appCompatImageView2;
        this.f62553e = appCompatImageView3;
        this.f62554f = linearLayoutCompat2;
    }

    public static j a(View view) {
        int i11 = R$id.et_sync_adjust;
        EditText editText = (EditText) g4.b.a(view, i11);
        if (editText != null) {
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_sync_adjust_minus;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.iv_sync_adjust_plus;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView3 != null) {
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                        return new j(linearLayoutCompat, editText, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayoutCompat);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f62549a;
    }
}
