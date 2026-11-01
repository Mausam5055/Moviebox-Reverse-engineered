package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class x0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f62983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLTextView f62984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f62985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f62986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLView f62987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f62988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f62989g;

    private x0(BLConstraintLayout bLConstraintLayout, BLTextView bLTextView, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, BLView bLView, TnTextView tnTextView, TnTextView tnTextView2) {
        this.f62983a = bLConstraintLayout;
        this.f62984b = bLTextView;
        this.f62985c = appCompatImageView;
        this.f62986d = shapeableImageView;
        this.f62987e = bLView;
        this.f62988f = tnTextView;
        this.f62989g = tnTextView2;
    }

    public static x0 a(View view) {
        int i11 = R$id.memberBadge;
        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
        if (bLTextView != null) {
            i11 = R$id.memberBadgeIcon;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.userAvatar;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.userAvatarBorder;
                    BLView bLView = (BLView) g4.b.a(view, i11);
                    if (bLView != null) {
                        i11 = R$id.userName;
                        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView != null) {
                            i11 = R$id.validUntil;
                            TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView2 != null) {
                                return new x0((BLConstraintLayout) view, bLTextView, appCompatImageView, shapeableImageView, bLView, tnTextView, tnTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_device_management_user, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f62983a;
    }
}
