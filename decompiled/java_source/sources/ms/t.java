package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f69927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f69928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f69929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f69930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f69931e;

    private t(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f69927a = bLConstraintLayout;
        this.f69928b = appCompatImageView;
        this.f69929c = progressBar;
        this.f69930d = recyclerView;
        this.f69931e = appCompatTextView;
    }

    public static t a(View view) {
        int i11 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.f52572rv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        return new t((BLConstraintLayout) view, appCompatImageView, progressBar, recyclerView, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static t c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_dialog_language_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f69927a;
    }
}
