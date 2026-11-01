package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class i0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f63728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f63729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f63730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f63731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f63732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f63733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f63734g;

    private i0(BLConstraintLayout bLConstraintLayout, Group group, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, TnTextView tnTextView, View view) {
        this.f63728a = bLConstraintLayout;
        this.f63729b = group;
        this.f63730c = shapeableImageView;
        this.f63731d = shapeableImageView2;
        this.f63732e = appCompatImageView;
        this.f63733f = tnTextView;
        this.f63734g = view;
    }

    public static i0 a(View view) {
        View viewA;
        int i11 = R$id.group_room_info;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.ivCover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.iv_room_cover;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView2 != null) {
                    i11 = R$id.ivVideoPlay;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.tv_room_title;
                        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_room_info))) != null) {
                            return new i0((BLConstraintLayout) view, group, shapeableImageView, shapeableImageView2, appCompatImageView, tnTextView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_adapter_room_entrance_post, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f63728a;
    }
}
