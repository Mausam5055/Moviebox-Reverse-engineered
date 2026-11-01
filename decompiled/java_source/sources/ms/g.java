package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.widget.HorizontalRecyclerview2;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f69775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HorizontalRecyclerview2 f69776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f69778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f69779e;

    private g(View view, HorizontalRecyclerview2 horizontalRecyclerview2, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f69775a = view;
        this.f69776b = horizontalRecyclerview2;
        this.f69777c = appCompatTextView;
        this.f69778d = tnTextView;
        this.f69779e = appCompatTextView2;
    }

    public static g a(View view) {
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
                        return new g(view, horizontalRecyclerview2, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f69775a;
    }
}
