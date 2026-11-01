package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f63713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f63714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f63715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f63716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLView f63717f;

    private h0(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, BLTextView bLTextView, AppCompatTextView appCompatTextView, BLView bLView) {
        this.f63712a = constraintLayout;
        this.f63713b = constraintLayout2;
        this.f63714c = shapeableImageView;
        this.f63715d = bLTextView;
        this.f63716e = appCompatTextView;
        this.f63717f = bLView;
    }

    public static h0 a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tvMembers;
            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
            if (bLTextView != null) {
                i11 = R$id.tvTitle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.v_stroke;
                    BLView bLView = (BLView) g4.b.a(view, i11);
                    if (bLView != null) {
                        return new h0(constraintLayout, constraintLayout, shapeableImageView, bLTextView, appCompatTextView, bLView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_adapter_room_entrance_group, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63712a;
    }
}
