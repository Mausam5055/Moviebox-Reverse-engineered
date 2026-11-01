package kk;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.pslink.PsLinkDownLoadButton;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f66885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f66886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f66887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f66888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PsLinkDownLoadButton f66889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f66891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f66892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f66893i;

    private j(View view, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, PsLinkDownLoadButton psLinkDownLoadButton, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view2) {
        this.f66885a = view;
        this.f66886b = shapeableImageView;
        this.f66887c = appCompatTextView;
        this.f66888d = appCompatTextView2;
        this.f66889e = psLinkDownLoadButton;
        this.f66890f = appCompatTextView3;
        this.f66891g = appCompatTextView4;
        this.f66892h = appCompatTextView5;
        this.f66893i = view2;
    }

    public static j a(View view) {
        View viewA;
        int i11 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tv_aha_btn;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_category;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tv_ps_btn;
                    PsLinkDownLoadButton psLinkDownLoadButton = (PsLinkDownLoadButton) g4.b.a(view, i11);
                    if (psLinkDownLoadButton != null) {
                        i11 = R$id.tv_size;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.tv_star;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView4 != null) {
                                i11 = R$id.tv_title;
                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView5 != null && (viewA = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                                    return new j(view, shapeableImageView, appCompatTextView, appCompatTextView2, psLinkDownLoadButton, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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
    public View getRoot() {
        return this.f66885a;
    }
}
