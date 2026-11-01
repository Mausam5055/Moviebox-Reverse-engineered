package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class w implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f16884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f16885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f16886d;

    private w(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView) {
        this.f16883a = constraintLayout;
        this.f16884b = constraintLayout2;
        this.f16885c = shapeableImageView;
        this.f16886d = appCompatTextView;
    }

    public static w a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new w(constraintLayout, constraintLayout, shapeableImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_community_rooms_footer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16883a;
    }
}
