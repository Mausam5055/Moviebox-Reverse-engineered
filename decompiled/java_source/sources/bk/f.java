package bk;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.R$id;
import com.transsion.baseui.music.RoundedCornerLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f16598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f16600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f16601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f16602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f16603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RoundedCornerLayout f16604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RoundedCornerLayout f16605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f16606i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f16607j;

    private f(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ProgressBar progressBar, RoundedCornerLayout roundedCornerLayout, RoundedCornerLayout roundedCornerLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16598a = frameLayout;
        this.f16599b = appCompatImageView;
        this.f16600c = appCompatImageView2;
        this.f16601d = appCompatImageView3;
        this.f16602e = appCompatImageView4;
        this.f16603f = progressBar;
        this.f16604g = roundedCornerLayout;
        this.f16605h = roundedCornerLayout2;
        this.f16606i = appCompatTextView;
        this.f16607j = appCompatTextView2;
    }

    public static f a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivCover;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivCoverBg;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.ivPlayPause;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView4 != null) {
                        i11 = R$id.progress;
                        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                        if (progressBar != null) {
                            i11 = R$id.roundExpand;
                            RoundedCornerLayout roundedCornerLayout = (RoundedCornerLayout) g4.b.a(view, i11);
                            if (roundedCornerLayout != null) {
                                i11 = R$id.roundFold;
                                RoundedCornerLayout roundedCornerLayout2 = (RoundedCornerLayout) g4.b.a(view, i11);
                                if (roundedCornerLayout2 != null) {
                                    i11 = R$id.tvDescription;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView != null) {
                                        i11 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            return new f((FrameLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, progressBar, roundedCornerLayout, roundedCornerLayout2, appCompatTextView, appCompatTextView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f16598a;
    }
}
