package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f63759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f63760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f63761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f63762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f63763e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLLinearLayout f63764f;

    private k0(BLConstraintLayout bLConstraintLayout, ShapeableImageView shapeableImageView, ImageView imageView, BLTextView bLTextView, TnTextView tnTextView, BLLinearLayout bLLinearLayout) {
        this.f63759a = bLConstraintLayout;
        this.f63760b = shapeableImageView;
        this.f63761c = imageView;
        this.f63762d = bLTextView;
        this.f63763e = tnTextView;
        this.f63764f = bLLinearLayout;
    }

    public static k0 a(View view) {
        int i11 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.ivTypeIcon;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.tvDuration;
                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                if (bLTextView != null) {
                    i11 = R$id.tvTitle;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        i11 = R$id.vDurationBg;
                        BLLinearLayout bLLinearLayout = (BLLinearLayout) g4.b.a(view, i11);
                        if (bLLinearLayout != null) {
                            return new k0((BLConstraintLayout) view, shapeableImageView, imageView, bLTextView, tnTextView, bLLinearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_ugc_vertical_content, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f63759a;
    }
}
