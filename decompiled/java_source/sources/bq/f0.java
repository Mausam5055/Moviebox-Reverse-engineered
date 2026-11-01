package bq;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class f0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f16751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f16752b;

    private f0(View view, RecyclerView recyclerView) {
        this.f16751a = view;
        this.f16752b = recyclerView;
    }

    public static f0 a(View view) {
        int i11 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            return new f0(view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f16751a;
    }
}
