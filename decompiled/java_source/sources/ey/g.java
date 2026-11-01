package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f62101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f62102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f62103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f62104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f62105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final GradientTextView f62106g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f62107h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f62108i;

    private g(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, GradientTextView gradientTextView, TextView textView2, TextView textView3) {
        this.f62100a = constraintLayout;
        this.f62101b = imageView;
        this.f62102c = imageView2;
        this.f62103d = linearLayout;
        this.f62104e = linearLayout2;
        this.f62105f = textView;
        this.f62106g = gradientTextView;
        this.f62107h = textView2;
        this.f62108i = textView3;
    }

    public static g a(View view) {
        int i11 = R$id.ivPromotionArrow;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.ivPromotionIcon;
            ImageView imageView2 = (ImageView) g4.b.a(view, i11);
            if (imageView2 != null) {
                i11 = R$id.llPromotionCopy;
                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout != null) {
                    i11 = R$id.llPromotionPrice;
                    LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout2 != null) {
                        i11 = R$id.tvPromotionOriginalPrice;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.tvPromotionPrice;
                            GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                            if (gradientTextView != null) {
                                i11 = R$id.tvPromotionSubtitle;
                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                if (textView2 != null) {
                                    i11 = R$id.tvPromotionTitle;
                                    TextView textView3 = (TextView) g4.b.a(view, i11);
                                    if (textView3 != null) {
                                        return new g((ConstraintLayout) view, imageView, imageView2, linearLayout, linearLayout2, textView, gradientTextView, textView2, textView3);
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

    public static g c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_member_promotion, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62100a;
    }
}
