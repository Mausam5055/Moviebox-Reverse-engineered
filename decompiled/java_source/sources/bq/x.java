package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f16888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f16889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f16890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f16891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f16892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16893g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RoomJoinAnimationView f16894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLView f16895i;

    private x(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, RoomJoinAnimationView roomJoinAnimationView, BLView bLView) {
        this.f16887a = constraintLayout;
        this.f16888b = constraintLayout2;
        this.f16889c = shapeableImageView;
        this.f16890d = shapeableImageView2;
        this.f16891e = appCompatTextView;
        this.f16892f = appCompatTextView2;
        this.f16893g = appCompatTextView3;
        this.f16894h = roomJoinAnimationView;
        this.f16895i = bLView;
    }

    public static x a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.iv_cover_bg;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView2 != null) {
                i11 = R$id.tv_members;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_tag;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.v_join;
                            RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) g4.b.a(view, i11);
                            if (roomJoinAnimationView != null) {
                                i11 = R$id.v_stroke;
                                BLView bLView = (BLView) g4.b.a(view, i11);
                                if (bLView != null) {
                                    return new x(constraintLayout, constraintLayout, shapeableImageView, shapeableImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, roomJoinAnimationView, bLView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_recommend_rooms, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16887a;
    }
}
