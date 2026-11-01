package so;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f75545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f75546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f75547c;

    private i(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f75545a = linearLayout;
        this.f75546b = appCompatTextView;
        this.f75547c = appCompatTextView2;
    }

    public static i a(View view) {
        int i11 = R$id.post_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.post_confirm;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                return new i((LinearLayout) view, appCompatTextView, appCompatTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f75545a;
    }
}
