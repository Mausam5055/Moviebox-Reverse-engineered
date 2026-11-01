package py;

import android.view.View;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class h1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f72750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLView f72751c;

    private h1(View view, TnTextView tnTextView, BLView bLView) {
        this.f72749a = view;
        this.f72750b = tnTextView;
        this.f72751c = bLView;
    }

    public static h1 a(View view) {
        int i11 = R$id.tv_title;
        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.v_dot;
            BLView bLView = (BLView) g4.b.a(view, i11);
            if (bLView != null) {
                return new h1(view, tnTextView, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72749a;
    }
}
