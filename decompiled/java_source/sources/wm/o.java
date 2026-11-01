package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.view.PremiumContentView;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f77839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f77840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f77841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f77842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f77843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f77844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f77845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PremiumContentView f77846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f77847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NestedScrollView f77848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f77849l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f77850m;

    private o(FrameLayout frameLayout, View view, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView2, PremiumContentView premiumContentView, LinearLayout linearLayout, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView3, View view2) {
        this.f77838a = frameLayout;
        this.f77839b = view;
        this.f77840c = appCompatImageView;
        this.f77841d = shapeableImageView;
        this.f77842e = appCompatImageView2;
        this.f77843f = appCompatTextView;
        this.f77844g = constraintLayout;
        this.f77845h = appCompatTextView2;
        this.f77846i = premiumContentView;
        this.f77847j = linearLayout;
        this.f77848k = nestedScrollView;
        this.f77849l = appCompatTextView3;
        this.f77850m = view2;
    }

    public static o a(View view) {
        View viewA;
        int i11 = R$id.avatar_bg;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null) {
            i11 = R$id.icon_user_premium_type;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_avatar_premium;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.iv_back;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.iv_free_plan;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.iv_info;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                i11 = R$id.iv_name;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.layout_content;
                                    PremiumContentView premiumContentView = (PremiumContentView) g4.b.a(view, i11);
                                    if (premiumContentView != null) {
                                        i11 = R$id.member_top_container;
                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout != null) {
                                            i11 = R$id.scroller_member;
                                            NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                                            if (nestedScrollView != null) {
                                                i11 = R$id.tv_member_date;
                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView3 != null && (viewA = g4.b.a(view, (i11 = R$id.view_top))) != null) {
                                                    return new o((FrameLayout) view, viewA2, appCompatImageView, shapeableImageView, appCompatImageView2, appCompatTextView, constraintLayout, appCompatTextView2, premiumContentView, linearLayout, nestedScrollView, appCompatTextView3, viewA);
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

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_member_layout_premium, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f77838a;
    }
}
