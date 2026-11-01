package py;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class v0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72948b;

    private v0(View view, RecyclerView recyclerView) {
        this.f72947a = view;
        this.f72948b = recyclerView;
    }

    public static v0 a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            return new v0(view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72947a;
    }
}
