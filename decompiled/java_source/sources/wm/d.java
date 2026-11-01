package wm;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GradientBorderView f77726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GradientBorderView f77727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f77728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f77730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f77732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77733h;

    private d(GradientBorderView gradientBorderView, GradientBorderView gradientBorderView2, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, ImageView imageView, TextView textView, ImageView imageView2, TextView textView2) {
        this.f77726a = gradientBorderView;
        this.f77727b = gradientBorderView2;
        this.f77728c = linearLayoutCompat;
        this.f77729d = appCompatTextView;
        this.f77730e = imageView;
        this.f77731f = textView;
        this.f77732g = imageView2;
        this.f77733h = textView2;
    }

    public static d a(View view) {
        GradientBorderView gradientBorderView = (GradientBorderView) view;
        int i11 = R$id.explore;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
        if (linearLayoutCompat != null) {
            i11 = R$id.explore_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.iv_close;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.iv_detail;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.iv_premium_mask;
                        ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                        if (imageView2 != null) {
                            i11 = R$id.iv_title;
                            TextView textView2 = (TextView) g4.b.a(view, i11);
                            if (textView2 != null) {
                                return new d(gradientBorderView, gradientBorderView, linearLayoutCompat, appCompatTextView, imageView, textView, imageView2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GradientBorderView getRoot() {
        return this.f77726a;
    }
}
