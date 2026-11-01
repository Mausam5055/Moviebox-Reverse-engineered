package ms;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class h0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f69787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f69788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f69790d;

    private h0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f69787a = view;
        this.f69788b = recyclerView;
        this.f69789c = appCompatTextView;
        this.f69790d = appCompatTextView2;
    }

    public static h0 a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_view_all;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new h0(view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f69787a;
    }
}
