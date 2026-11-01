package bq;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class j0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f16777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f16778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f16779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f16780d;

    private j0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16777a = view;
        this.f16778b = recyclerView;
        this.f16779c = appCompatTextView;
        this.f16780d = appCompatTextView2;
    }

    public static j0 a(View view) {
        int i11 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tvMore;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new j0(view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f16777a;
    }
}
