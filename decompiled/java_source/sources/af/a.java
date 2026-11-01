package af;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.permissionx.guolindev.R$id;
import g4.b;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLView f618g;

    private a(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView) {
        this.f612a = bLConstraintLayout;
        this.f613b = appCompatImageView;
        this.f614c = appCompatImageView2;
        this.f615d = appCompatTextView;
        this.f616e = appCompatTextView2;
        this.f617f = appCompatTextView3;
        this.f618g = bLView;
    }

    public static a a(View view) {
        int i11 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_icon;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tv_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_subtitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.v_icon_bg;
                            BLView bLView = (BLView) b.a(view, i11);
                            if (bLView != null) {
                                return new a((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView);
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
    public BLConstraintLayout getRoot() {
        return this.f612a;
    }
}
