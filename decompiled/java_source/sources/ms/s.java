package ms;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f69917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f69918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f69919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TabLayout f69920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f69921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f69922g;

    private s(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, TabLayout tabLayout, AppCompatTextView appCompatTextView, View view) {
        this.f69916a = constraintLayout;
        this.f69917b = appCompatImageView;
        this.f69918c = progressBar;
        this.f69919d = recyclerView;
        this.f69920e = tabLayout;
        this.f69921f = appCompatTextView;
        this.f69922g = view;
    }

    public static s a(View view) {
        View viewA;
        int i11 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.f52572rv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tab;
                    TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                    if (tabLayout != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.view_line))) != null) {
                            return new s((ConstraintLayout) view, appCompatImageView, progressBar, recyclerView, tabLayout, appCompatTextView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69916a;
    }
}
