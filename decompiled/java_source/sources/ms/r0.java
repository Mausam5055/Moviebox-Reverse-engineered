package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class r0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f69909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f69910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f69911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f69912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f69913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f69914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f69915g;

    private r0(View view, TnTextView tnTextView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TnTextView tnTextView2, TnTextView tnTextView3, TnTextView tnTextView4) {
        this.f69909a = view;
        this.f69910b = tnTextView;
        this.f69911c = appCompatImageView;
        this.f69912d = appCompatImageView2;
        this.f69913e = tnTextView2;
        this.f69914f = tnTextView3;
        this.f69915g = tnTextView4;
    }

    public static r0 a(View view) {
        int i11 = R$id.go_to_setting;
        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_no_connection;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.no_connection_title;
                    TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView2 != null) {
                        i11 = R$id.retry;
                        TnTextView tnTextView3 = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView3 != null) {
                            i11 = R$id.tv_title;
                            TnTextView tnTextView4 = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView4 != null) {
                                return new r0(view, tnTextView, appCompatImageView, appCompatImageView2, tnTextView2, tnTextView3, tnTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r0 b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.short_tv_view_content_no_connection, viewGroup);
        return a(viewGroup);
    }

    @Override // g4.a
    public View getRoot() {
        return this.f69909a;
    }
}
