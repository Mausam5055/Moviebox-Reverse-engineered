package qv;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.widget.TopCropShapeableImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f73814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f73815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TopCropShapeableImageView f73816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TopCropShapeableImageView f73817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f73818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f73819g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f73820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLView f73821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BLView f73822j;

    private o(ConstraintLayout constraintLayout, Group group, Group group2, TopCropShapeableImageView topCropShapeableImageView, TopCropShapeableImageView topCropShapeableImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView, BLView bLView2) {
        this.f73813a = constraintLayout;
        this.f73814b = group;
        this.f73815c = group2;
        this.f73816d = topCropShapeableImageView;
        this.f73817e = topCropShapeableImageView2;
        this.f73818f = appCompatTextView;
        this.f73819g = appCompatTextView2;
        this.f73820h = appCompatTextView3;
        this.f73821i = bLView;
        this.f73822j = bLView2;
    }

    public static o a(View view) {
        int i11 = R$id.groupPreview;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.groupPreviewCollection;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.ivPreviewImage;
                TopCropShapeableImageView topCropShapeableImageView = (TopCropShapeableImageView) g4.b.a(view, i11);
                if (topCropShapeableImageView != null) {
                    i11 = R$id.ivPreviewImageCollection;
                    TopCropShapeableImageView topCropShapeableImageView2 = (TopCropShapeableImageView) g4.b.a(view, i11);
                    if (topCropShapeableImageView2 != null) {
                        i11 = R$id.tvClickText;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tvClickTextCollection;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null) {
                                i11 = R$id.tvTitle;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView3 != null) {
                                    i11 = R$id.vGradientOverlay;
                                    BLView bLView = (BLView) g4.b.a(view, i11);
                                    if (bLView != null) {
                                        i11 = R$id.vGradientOverlayCollection;
                                        BLView bLView2 = (BLView) g4.b.a(view, i11);
                                        if (bLView2 != null) {
                                            return new o((ConstraintLayout) view, group, group2, topCropShapeableImageView, topCropShapeableImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView, bLView2);
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
        return this.f73813a;
    }
}
