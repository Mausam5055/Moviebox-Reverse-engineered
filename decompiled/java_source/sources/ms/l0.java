package ms;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class l0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLFrameLayout f69864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f69865b;

    private l0(BLFrameLayout bLFrameLayout, RecyclerView recyclerView) {
        this.f69864a = bLFrameLayout;
        this.f69865b = recyclerView;
    }

    public static l0 a(View view) {
        int i11 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            return new l0((BLFrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLFrameLayout getRoot() {
        return this.f69864a;
    }
}
