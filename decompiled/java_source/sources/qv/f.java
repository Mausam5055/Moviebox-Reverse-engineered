package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f73725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f73726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f73727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f73728d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProgressBar f73729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f73730f;

    private f(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, m mVar, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f73725a = frameLayout;
        this.f73726b = frameLayout2;
        this.f73727c = appCompatImageView;
        this.f73728d = mVar;
        this.f73729e = progressBar;
        this.f73730f = recyclerView;
    }

    public static f a(View view) {
        View viewA;
        int i11 = R$id.flUgcImmBack;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ivUgcImmBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.layoutImmDownloadingPop))) != null) {
                m mVarA = m.a(viewA);
                i11 = R$id.ugcImmPbLoading;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    i11 = R$id.ugcImmRecyclerView;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        return new f((FrameLayout) view, frameLayout, appCompatImageView, mVarA, progressBar, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_imm_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f73725a;
    }
}
