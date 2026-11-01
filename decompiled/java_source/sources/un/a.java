package un;

import android.view.View;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.play.detail.R$id;
import g4.b;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f76866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f76867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLView f76868c;

    private a(View view, TnTextView tnTextView, BLView bLView) {
        this.f76866a = view;
        this.f76867b = tnTextView;
        this.f76868c = bLView;
    }

    public static a a(View view) {
        int i11 = R$id.tv_title;
        TnTextView tnTextView = (TnTextView) b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.v_dot;
            BLView bLView = (BLView) b.a(view, i11);
            if (bLView != null) {
                return new a(view, tnTextView, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f76866a;
    }
}
