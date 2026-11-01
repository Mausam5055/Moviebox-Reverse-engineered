package qx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.videofloat.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f73883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f73884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f73885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f73886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f73887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLView f73888f;

    private a(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLView bLView) {
        this.f73883a = bLConstraintLayout;
        this.f73884b = appCompatImageView;
        this.f73885c = appCompatImageView2;
        this.f73886d = appCompatTextView;
        this.f73887e = appCompatTextView2;
        this.f73888f = bLView;
    }

    public static a a(View view) {
        int i11 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_icon;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.tv_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_subtitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.v_icon_bg;
                        BLView bLView = (BLView) g4.b.a(view, i11);
                        if (bLView != null) {
                            return new a((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, bLView);
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
        return this.f73883a;
    }
}
