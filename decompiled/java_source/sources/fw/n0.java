package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.edit.widget.ProfileEditBar;

/* JADX INFO: loaded from: classes7.dex */
public final class n0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f62818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProfileEditBar f62819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f62820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProfileEditBar f62821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f62822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageView f62823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLConstraintLayout f62824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProgressBar f62825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RelativeLayout f62826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RelativeLayout f62827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RelativeLayout f62828k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TnTextView f62829l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f62830m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ShapeableImageView f62831n;

    private n0(RelativeLayout relativeLayout, ProfileEditBar profileEditBar, FrameLayout frameLayout, ProfileEditBar profileEditBar2, AppCompatImageView appCompatImageView, ImageView imageView, BLConstraintLayout bLConstraintLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, TnTextView tnTextView, TextView textView, ShapeableImageView shapeableImageView) {
        this.f62818a = relativeLayout;
        this.f62819b = profileEditBar;
        this.f62820c = frameLayout;
        this.f62821d = profileEditBar2;
        this.f62822e = appCompatImageView;
        this.f62823f = imageView;
        this.f62824g = bLConstraintLayout;
        this.f62825h = progressBar;
        this.f62826i = relativeLayout2;
        this.f62827j = relativeLayout3;
        this.f62828k = relativeLayout4;
        this.f62829l = tnTextView;
        this.f62830m = textView;
        this.f62831n = shapeableImageView;
    }

    public static n0 a(View view) {
        int i11 = R$id.birth_profilebar;
        ProfileEditBar profileEditBar = (ProfileEditBar) g4.b.a(view, i11);
        if (profileEditBar != null) {
            i11 = R$id.fl_edit;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.gender_profilebar;
                ProfileEditBar profileEditBar2 = (ProfileEditBar) g4.b.a(view, i11);
                if (profileEditBar2 != null) {
                    i11 = R$id.ivDeleteArrow;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.iv_edit;
                        ImageView imageView = (ImageView) g4.b.a(view, i11);
                        if (imageView != null) {
                            i11 = R$id.layoutDeleteProfile;
                            BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
                            if (bLConstraintLayout != null) {
                                i11 = R$id.load_view;
                                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                if (progressBar != null) {
                                    i11 = R$id.rl_head;
                                    RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                                    if (relativeLayout != null) {
                                        i11 = R$id.rl_nickname;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) g4.b.a(view, i11);
                                        if (relativeLayout2 != null) {
                                            RelativeLayout relativeLayout3 = (RelativeLayout) view;
                                            i11 = R$id.tvDeleteKidsProfile;
                                            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                                            if (tnTextView != null) {
                                                i11 = R$id.tv_nickname;
                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                if (textView != null) {
                                                    i11 = R$id.user_head;
                                                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                                    if (shapeableImageView != null) {
                                                        return new n0(relativeLayout3, profileEditBar, frameLayout, profileEditBar2, appCompatImageView, imageView, bLConstraintLayout, progressBar, relativeLayout, relativeLayout2, relativeLayout3, tnTextView, textView, shapeableImageView);
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

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_profile_edit_centerlayout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f62818a;
    }
}
