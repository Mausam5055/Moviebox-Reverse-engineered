package qv;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLTextView f73804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLTextView f73805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Group f73806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Group f73807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ShapeableImageView f73808f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f73809g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f73810h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f73811i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f73812j;

    private n(ConstraintLayout constraintLayout, BLTextView bLTextView, BLTextView bLTextView2, Group group, Group group2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f73803a = constraintLayout;
        this.f73804b = bLTextView;
        this.f73805c = bLTextView2;
        this.f73806d = group;
        this.f73807e = group2;
        this.f73808f = shapeableImageView;
        this.f73809g = appCompatImageView;
        this.f73810h = appCompatTextView;
        this.f73811i = appCompatTextView2;
        this.f73812j = appCompatTextView3;
    }

    public static n a(View view) {
        int i11 = R$id.bgDetails;
        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
        if (bLTextView != null) {
            i11 = R$id.bgDownload;
            BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
            if (bLTextView2 != null) {
                i11 = R$id.groupDetails;
                Group group = (Group) g4.b.a(view, i11);
                if (group != null) {
                    i11 = R$id.groupDownload;
                    Group group2 = (Group) g4.b.a(view, i11);
                    if (group2 != null) {
                        i11 = R$id.ivAvatar;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                        if (shapeableImageView != null) {
                            i11 = R$id.ivDownload;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView != null) {
                                i11 = R$id.tvDetails;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null) {
                                    i11 = R$id.tvDownload;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            return new n((ConstraintLayout) view, bLTextView, bLTextView2, group, group2, shapeableImageView, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
    public ConstraintLayout getRoot() {
        return this.f73803a;
    }
}
