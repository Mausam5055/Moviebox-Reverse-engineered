package qv;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f73849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f73850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f73851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f73852d;

    private q(View view, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RecyclerView recyclerView) {
        this.f73849a = view;
        this.f73850b = appCompatTextView;
        this.f73851c = appCompatTextView2;
        this.f73852d = recyclerView;
    }

    public static q a(View view) {
        int i11 = R$id.tvAll;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvTitle;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.ugcDetailPlayListRv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    return new q(view, appCompatTextView, appCompatTextView2, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f73849a;
    }
}
