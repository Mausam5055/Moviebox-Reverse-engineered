package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f77399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77401d;

    private f(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f77398a = constraintLayout;
        this.f77399b = shapeableImageView;
        this.f77400c = appCompatTextView;
        this.f77401d = appCompatTextView2;
    }

    public static f a(View view) {
        int i11 = R$id.iv_avatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.tv_prize_name;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_user_name;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new f((ConstraintLayout) view, shapeableImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.prize_flow_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77398a;
    }
}
