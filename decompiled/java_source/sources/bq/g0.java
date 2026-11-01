package bq;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f16756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f16757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f16758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f16759d;

    private g0(View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16756a = view;
        this.f16757b = recyclerView;
        this.f16758c = appCompatTextView;
        this.f16759d = appCompatTextView2;
    }

    public static g0 a(View view) {
        int i11 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.tv_more;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new g0(view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f16756a;
    }
}
