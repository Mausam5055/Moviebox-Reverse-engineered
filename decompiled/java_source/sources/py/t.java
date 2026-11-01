package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f72919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f72920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f72923f;

    private t(FrameLayout frameLayout, RecyclerView recyclerView, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f72918a = frameLayout;
        this.f72919b = recyclerView;
        this.f72920c = frameLayout2;
        this.f72921d = appCompatTextView;
        this.f72922e = appCompatTextView2;
        this.f72923f = appCompatTextView3;
    }

    public static t a(View view) {
        int i11 = R$id.appRv;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i11 = R$id.tvApp;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tvAppNum;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        return new t(frameLayout, recyclerView, frameLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_app_download_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72918a;
    }
}
