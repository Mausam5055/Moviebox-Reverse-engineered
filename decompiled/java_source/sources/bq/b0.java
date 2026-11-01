package bq;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLView;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class b0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f16723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f16724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f16725c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLView f16726d;

    private b0(FrameLayout frameLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, BLView bLView) {
        this.f16723a = frameLayout;
        this.f16724b = shapeableImageView;
        this.f16725c = shapeableImageView2;
        this.f16726d = bLView;
    }

    public static b0 a(View view) {
        int i11 = R$id.iv_post_cover_1;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.iv_post_cover_2;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView2 != null) {
                i11 = R$id.v_post_bg;
                BLView bLView = (BLView) g4.b.a(view, i11);
                if (bLView != null) {
                    return new b0((FrameLayout) view, shapeableImageView, shapeableImageView2, bLView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f16723a;
    }
}
