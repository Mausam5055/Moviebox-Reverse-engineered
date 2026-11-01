package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f63747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f63748c;

    private j0(LinearLayout linearLayout, ShapeableImageView shapeableImageView, TnTextView tnTextView) {
        this.f63746a = linearLayout;
        this.f63747b = shapeableImageView;
        this.f63748c = tnTextView;
    }

    public static j0 a(View view) {
        int i11 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tvTitle;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                return new j0((LinearLayout) view, shapeableImageView, tnTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_single_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63746a;
    }
}
