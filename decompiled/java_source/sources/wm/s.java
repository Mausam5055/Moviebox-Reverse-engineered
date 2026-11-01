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
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RoundedLinearLayout f77859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f77860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f77861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77863f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77864g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77865h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f77867j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f77868k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f77869l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f77870m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ImageView f77871n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f77872o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final GradientTextView f77873p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final com.transsion.baseui.widget.GradientTextView f77874q;

    private s(LinearLayout linearLayout, RoundedLinearLayout roundedLinearLayout, RecyclerView recyclerView, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, TextView textView6, GradientTextView gradientTextView, com.transsion.baseui.widget.GradientTextView gradientTextView2) {
        this.f77858a = linearLayout;
        this.f77859b = roundedLinearLayout;
        this.f77860c = recyclerView;
        this.f77861d = imageView;
        this.f77862e = textView;
        this.f77863f = textView2;
        this.f77864g = textView3;
        this.f77865h = textView4;
        this.f77866i = textView5;
        this.f77867j = imageView2;
        this.f77868k = imageView3;
        this.f77869l = imageView4;
        this.f77870m = imageView5;
        this.f77871n = imageView6;
        this.f77872o = textView6;
        this.f77873p = gradientTextView;
        this.f77874q = gradientTextView2;
    }

    public static s a(View view) {
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
                                                                        return new s((LinearLayout) view, roundedLinearLayout, recyclerView, imageView, textView, textView2, textView3, textView4, textView5, imageView2, imageView3, imageView4, imageView5, imageView6, textView6, gradientTextView, gradientTextView2);
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

    public static s c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_member_basic, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f77858a;
    }
}
