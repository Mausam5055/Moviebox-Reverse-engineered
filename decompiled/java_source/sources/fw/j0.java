package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLLinearLayout f62712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f62713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f62714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f62715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ShapeableImageView f62716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f62717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f62718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f62719i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f62720j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TnTextView f62721k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TnTextView f62722l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final BLView f62723m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final BLView f62724n;

    private j0(ConstraintLayout constraintLayout, BLLinearLayout bLLinearLayout, ShapeableImageView shapeableImageView, ImageView imageView, ImageView imageView2, ShapeableImageView shapeableImageView2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TnTextView tnTextView, TnTextView tnTextView2, BLView bLView, BLView bLView2) {
        this.f62711a = constraintLayout;
        this.f62712b = bLLinearLayout;
        this.f62713c = shapeableImageView;
        this.f62714d = imageView;
        this.f62715e = imageView2;
        this.f62716f = shapeableImageView2;
        this.f62717g = linearLayout;
        this.f62718h = linearLayout2;
        this.f62719i = linearLayout3;
        this.f62720j = linearLayout4;
        this.f62721k = tnTextView;
        this.f62722l = tnTextView2;
        this.f62723m = bLView;
        this.f62724n = bLView2;
    }

    public static j0 a(View view) {
        int i11 = R$id.ivAddKids;
        BLLinearLayout bLLinearLayout = (BLLinearLayout) g4.b.a(view, i11);
        if (bLLinearLayout != null) {
            i11 = R$id.ivAdultAvatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.ivAdultEditIcon;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.ivEditIcon;
                    ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                    if (imageView2 != null) {
                        i11 = R$id.ivKidsAvatar;
                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                        if (shapeableImageView2 != null) {
                            i11 = R$id.layoutAccountsRow;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.layoutAddKids;
                                LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout2 != null) {
                                    i11 = R$id.layoutAdultProfile;
                                    LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout3 != null) {
                                        i11 = R$id.layoutKidsProfile;
                                        LinearLayout linearLayout4 = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout4 != null) {
                                            i11 = R$id.tvAdultName;
                                            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                                            if (tnTextView != null) {
                                                i11 = R$id.tvKidsName;
                                                TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                                                if (tnTextView2 != null) {
                                                    i11 = R$id.viewAdultAvatarOverlay;
                                                    BLView bLView = (BLView) g4.b.a(view, i11);
                                                    if (bLView != null) {
                                                        i11 = R$id.viewKidsAvatarOverlay;
                                                        BLView bLView2 = (BLView) g4.b.a(view, i11);
                                                        if (bLView2 != null) {
                                                            return new j0((ConstraintLayout) view, bLLinearLayout, shapeableImageView, imageView, imageView2, shapeableImageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, tnTextView, tnTextView2, bLView, bLView2);
                                                        }
                                                    }
                                                }
                                            }
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

    public static j0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_manage_profiles, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62711a;
    }
}
