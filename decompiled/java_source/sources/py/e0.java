package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f72670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f72672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f72675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLView f72676g;

    private e0(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView) {
        this.f72670a = bLConstraintLayout;
        this.f72671b = appCompatImageView;
        this.f72672c = appCompatImageView2;
        this.f72673d = appCompatTextView;
        this.f72674e = appCompatTextView2;
        this.f72675f = appCompatTextView3;
        this.f72676g = bLView;
    }

    public static e0 a(View view) {
        int i11 = R$id.iv_ad;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_close;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tv_ep;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_unlock;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tv_watch;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.v_bg;
                            BLView bLView = (BLView) g4.b.a(view, i11);
                            if (bLView != null) {
                                return new e0((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_short_tv_ad, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f72670a;
    }
}
