package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLConstraintLayout f72771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f72772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f72773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f72774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f72775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f72777h;

    private j0(FrameLayout frameLayout, BLConstraintLayout bLConstraintLayout, View view, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f72770a = frameLayout;
        this.f72771b = bLConstraintLayout;
        this.f72772c = view;
        this.f72773d = frameLayout2;
        this.f72774e = appCompatImageView;
        this.f72775f = recyclerView;
        this.f72776g = appCompatTextView;
        this.f72777h = appCompatTextView2;
    }

    public static j0 a(View view) {
        View viewA;
        int i11 = R$id.cl_content;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
        if (bLConstraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.divider))) != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.f58410rv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_all_episodes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            return new j0(frameLayout, bLConstraintLayout, viewA, frameLayout, appCompatImageView, recyclerView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_seasons, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72770a;
    }
}
