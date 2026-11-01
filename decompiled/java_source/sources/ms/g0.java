package ms;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f69780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f69781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f69782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f69783d;

    private g0(LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView, TnTextView tnTextView2, TnTextView tnTextView3) {
        this.f69780a = linearLayoutCompat;
        this.f69781b = tnTextView;
        this.f69782c = tnTextView2;
        this.f69783d = tnTextView3;
    }

    public static g0 a(View view) {
        int i11 = R$id.iv_all;
        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.iv_hottest;
            TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
            if (tnTextView2 != null) {
                i11 = R$id.iv_latest;
                TnTextView tnTextView3 = (TnTextView) g4.b.a(view, i11);
                if (tnTextView3 != null) {
                    return new g0((LinearLayoutCompat) view, tnTextView, tnTextView2, tnTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f69780a;
    }
}
