package so;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class j0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f75561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f75562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f75563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75564e;

    private j0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, TnTextView tnTextView, AppCompatTextView appCompatTextView2) {
        this.f75560a = view;
        this.f75561b = recyclerView;
        this.f75562c = appCompatTextView;
        this.f75563d = tnTextView;
        this.f75564e = appCompatTextView2;
    }

    public static j0 a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_title_trending;
                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                if (tnTextView != null) {
                    i11 = R$id.tv_view_all;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new j0(view, recyclerView, appCompatTextView, tnTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f75560a;
    }
}
