package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f75553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f75554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f75555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f75556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f75558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProgressBar f75559g;

    private j(LinearLayoutCompat linearLayoutCompat, View view, RecyclerView recyclerView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ProgressBar progressBar) {
        this.f75553a = linearLayoutCompat;
        this.f75554b = view;
        this.f75555c = recyclerView;
        this.f75556d = linearLayout;
        this.f75557e = appCompatTextView;
        this.f75558f = appCompatTextView2;
        this.f75559g = progressBar;
    }

    public static j a(View view) {
        int i11 = R$id.comment_input_bg;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.comment_list;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.ll_loading;
                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout != null) {
                    i11 = R$id.tv_comment;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_loading;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.view_load;
                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                            if (progressBar != null) {
                                return new j((LinearLayoutCompat) view, viewA, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, progressBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f75553a;
    }
}
