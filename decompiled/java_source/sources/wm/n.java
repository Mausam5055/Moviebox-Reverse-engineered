package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.RoundedLinearLayout;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f77819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RoundedLinearLayout f77820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RelativeLayout f77821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f77822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f77823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f77824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f77825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f77826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f77827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RecyclerView f77828k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f77829l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final LinearLayout f77830m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ConstraintLayout f77831n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f77832o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f77833p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f77834q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f77835r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f77836s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AppCompatTextView f77837t;

    private n(LinearLayout linearLayout, View view, RoundedLinearLayout roundedLinearLayout, RelativeLayout relativeLayout, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ImageView imageView, RecyclerView recyclerView, ImageView imageView2, LinearLayout linearLayout2, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView3, TextView textView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5) {
        this.f77818a = linearLayout;
        this.f77819b = view;
        this.f77820c = roundedLinearLayout;
        this.f77821d = relativeLayout;
        this.f77822e = shapeableImageView;
        this.f77823f = appCompatImageView;
        this.f77824g = constraintLayout;
        this.f77825h = appCompatTextView;
        this.f77826i = appCompatTextView2;
        this.f77827j = imageView;
        this.f77828k = recyclerView;
        this.f77829l = imageView2;
        this.f77830m = linearLayout2;
        this.f77831n = constraintLayout2;
        this.f77832o = textView;
        this.f77833p = textView2;
        this.f77834q = appCompatTextView3;
        this.f77835r = textView3;
        this.f77836s = appCompatTextView4;
        this.f77837t = appCompatTextView5;
    }

    public static n a(View view) {
        int i11 = R$id.avatar_bg;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.bottom_container;
            RoundedLinearLayout roundedLinearLayout = (RoundedLinearLayout) g4.b.a(view, i11);
            if (roundedLinearLayout != null) {
                i11 = R$id.feedback_container;
                RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                if (relativeLayout != null) {
                    i11 = R$id.iv_avatar_premium;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView != null) {
                        i11 = R$id.iv_back;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.iv_info;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                i11 = R$id.iv_name;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null) {
                                    i11 = R$id.iv_premium;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.iv_premium_icon;
                                        ImageView imageView = (ImageView) g4.b.a(view, i11);
                                        if (imageView != null) {
                                            i11 = R$id.iv_sku_list;
                                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                            if (recyclerView != null) {
                                                i11 = R$id.iv_zero_treasure;
                                                ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                                if (imageView2 != null) {
                                                    i11 = R$id.member_top_container;
                                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                    if (linearLayout != null) {
                                                        i11 = R$id.titleLayout;
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                                        if (constraintLayout2 != null) {
                                                            i11 = R$id.tv_agreement_content;
                                                            TextView textView = (TextView) g4.b.a(view, i11);
                                                            if (textView != null) {
                                                                i11 = R$id.tv_agreement_title;
                                                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                                                if (textView2 != null) {
                                                                    i11 = R$id.tv_member_date;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView3 != null) {
                                                                        i11 = R$id.tv_pay_btn;
                                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                                        if (textView3 != null) {
                                                                            i11 = R$id.tv_premium_info;
                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                            if (appCompatTextView4 != null) {
                                                                                i11 = R$id.tv_promo_code;
                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                if (appCompatTextView5 != null) {
                                                                                    return new n((LinearLayout) view, viewA, roundedLinearLayout, relativeLayout, shapeableImageView, appCompatImageView, constraintLayout, appCompatTextView, appCompatTextView2, imageView, recyclerView, imageView2, linearLayout, constraintLayout2, textView, textView2, appCompatTextView3, textView3, appCompatTextView4, appCompatTextView5);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_member_layout_new, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f77818a;
    }
}
