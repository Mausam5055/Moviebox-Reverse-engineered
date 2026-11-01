package py;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72740c;

    private h(LinearLayout linearLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f72738a = linearLayout;
        this.f72739b = recyclerView;
        this.f72740c = appCompatTextView;
    }

    public static h a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_cancel;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new h((LinearLayout) view, recyclerView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72738a;
    }
}
