package so;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.HorizontalRecyclerview2;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class i0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HorizontalRecyclerview2 f75549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f75550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f75551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75552e;

    private i0(View view, HorizontalRecyclerview2 horizontalRecyclerview2, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f75548a = view;
        this.f75549b = horizontalRecyclerview2;
        this.f75550c = appCompatTextView;
        this.f75551d = tnTextView;
        this.f75552e = appCompatTextView2;
    }

    public static i0 a(View view) {
        int i11 = R$id.recycler_view;
        HorizontalRecyclerview2 horizontalRecyclerview2 = (HorizontalRecyclerview2) g4.b.a(view, i11);
        if (horizontalRecyclerview2 != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_title_trending;
                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                if (tnTextView != null) {
                    i11 = R$id.tv_view_all;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new i0(view, horizontalRecyclerview2, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f75548a;
    }
}
