package bq;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class i0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f16769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f16770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f16771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f16772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f16773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f16774f;

    private i0(View view, View view2, RecyclerView recyclerView, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16769a = view;
        this.f16770b = view2;
        this.f16771c = recyclerView;
        this.f16772d = textView;
        this.f16773e = appCompatTextView;
        this.f16774f = appCompatTextView2;
    }

    public static i0 a(View view) {
        int i11 = R$id.all_bg;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.tv_banner;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvMore;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            return new i0(view, viewA, recyclerView, textView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f16769a;
    }
}
