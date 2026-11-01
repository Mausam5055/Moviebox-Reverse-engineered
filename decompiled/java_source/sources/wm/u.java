package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.RoundedLinearLayout;
import com.transsion.ad.view.GradientTextView;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class u implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RoundedLinearLayout f77883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f77884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f77885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f77891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f77892k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f77893l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f77894m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ImageView f77895n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f77896o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final GradientTextView f77897p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final com.transsion.baseui.widget.GradientTextView f77898q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f77899r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final TextView f77900s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f77901t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f77902u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f77903v;

    private u(LinearLayout linearLayout, RoundedLinearLayout roundedLinearLayout, RecyclerView recyclerView, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, TextView textView6, GradientTextView gradientTextView, com.transsion.baseui.widget.GradientTextView gradientTextView2, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.f77882a = linearLayout;
        this.f77883b = roundedLinearLayout;
        this.f77884c = recyclerView;
        this.f77885d = imageView;
        this.f77886e = textView;
        this.f77887f = textView2;
        this.f77888g = textView3;
        this.f77889h = textView4;
        this.f77890i = textView5;
        this.f77891j = imageView2;
        this.f77892k = imageView3;
        this.f77893l = imageView4;
        this.f77894m = imageView5;
        this.f77895n = imageView6;
        this.f77896o = textView6;
        this.f77897p = gradientTextView;
        this.f77898q = gradientTextView2;
        this.f77899r = textView7;
        this.f77900s = textView8;
        this.f77901t = textView9;
        this.f77902u = textView10;
        this.f77903v = textView11;
    }

    public static u a(View view) {
        int i11 = R$id.bottom_container;
        RoundedLinearLayout roundedLinearLayout = (RoundedLinearLayout) g4.b.a(view, i11);
        if (roundedLinearLayout != null) {
            i11 = R$id.iv_sku_list;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.iv_zero_treasure;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.rights_desc_1;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.rights_desc_2;
                        TextView textView2 = (TextView) g4.b.a(view, i11);
                        if (textView2 != null) {
                            i11 = R$id.rights_desc_3;
                            TextView textView3 = (TextView) g4.b.a(view, i11);
                            if (textView3 != null) {
                                i11 = R$id.rights_desc_4;
                                TextView textView4 = (TextView) g4.b.a(view, i11);
                                if (textView4 != null) {
                                    i11 = R$id.rights_desc_5;
                                    TextView textView5 = (TextView) g4.b.a(view, i11);
                                    if (textView5 != null) {
                                        i11 = R$id.rights_icon_1;
                                        ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                        if (imageView2 != null) {
                                            i11 = R$id.rights_icon_2;
                                            ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                                            if (imageView3 != null) {
                                                i11 = R$id.rights_icon_3;
                                                ImageView imageView4 = (ImageView) g4.b.a(view, i11);
                                                if (imageView4 != null) {
                                                    i11 = R$id.rights_icon_4;
                                                    ImageView imageView5 = (ImageView) g4.b.a(view, i11);
                                                    if (imageView5 != null) {
                                                        i11 = R$id.rights_icon_5;
                                                        ImageView imageView6 = (ImageView) g4.b.a(view, i11);
                                                        if (imageView6 != null) {
                                                            i11 = R$id.tv_member_desc;
                                                            TextView textView6 = (TextView) g4.b.a(view, i11);
                                                            if (textView6 != null) {
                                                                i11 = R$id.tv_member_title;
                                                                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                                                if (gradientTextView != null) {
                                                                    i11 = R$id.tv_pay_btn;
                                                                    com.transsion.baseui.widget.GradientTextView gradientTextView2 = (com.transsion.baseui.widget.GradientTextView) g4.b.a(view, i11);
                                                                    if (gradientTextView2 != null) {
                                                                        i11 = R$id.tv_phone_login_number;
                                                                        TextView textView7 = (TextView) g4.b.a(view, i11);
                                                                        if (textView7 != null) {
                                                                            i11 = R$id.tv_premium_number;
                                                                            TextView textView8 = (TextView) g4.b.a(view, i11);
                                                                            if (textView8 != null) {
                                                                                i11 = R$id.tv_short_tv_login_number;
                                                                                TextView textView9 = (TextView) g4.b.a(view, i11);
                                                                                if (textView9 != null) {
                                                                                    i11 = R$id.tv_tv_login_number;
                                                                                    TextView textView10 = (TextView) g4.b.a(view, i11);
                                                                                    if (textView10 != null) {
                                                                                        i11 = R$id.tv_web_login_number;
                                                                                        TextView textView11 = (TextView) g4.b.a(view, i11);
                                                                                        if (textView11 != null) {
                                                                                            return new u((LinearLayout) view, roundedLinearLayout, recyclerView, imageView, textView, textView2, textView3, textView4, textView5, imageView2, imageView3, imageView4, imageView5, imageView6, textView6, gradientTextView, gradientTextView2, textView7, textView8, textView9, textView10, textView11);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static u c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_member_pro, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f77882a;
    }
}
