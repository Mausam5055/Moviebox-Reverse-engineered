package so;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class k0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f75573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f75574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f75575d;

    private k0(View view, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2) {
        this.f75572a = view;
        this.f75573b = recyclerView;
        this.f75574c = tnTextView;
        this.f75575d = tnTextView2;
    }

    public static k0 a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_title;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                i11 = R$id.tv_title_trending;
                TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                if (tnTextView2 != null) {
                    return new k0(view, recyclerView, tnTextView, tnTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f75572a;
    }
}
