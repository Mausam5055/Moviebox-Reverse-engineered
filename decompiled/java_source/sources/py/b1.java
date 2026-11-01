package py;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class b1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f72623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f72625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f72626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final GradientTextView f72627g;

    private b1(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, CardView cardView, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, GradientTextView gradientTextView) {
        this.f72621a = constraintLayout;
        this.f72622b = appCompatImageView;
        this.f72623c = cardView;
        this.f72624d = appCompatTextView;
        this.f72625e = textView;
        this.f72626f = appCompatTextView2;
        this.f72627g = gradientTextView;
    }

    public static b1 a(View view) {
        int i11 = R$id.premiumProBg;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.premiumProTip;
            CardView cardView = (CardView) g4.b.a(view, i11);
            if (cardView != null) {
                i11 = R$id.premiumProTitle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.premiumProUnlock;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tv_transfer;
                            GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                            if (gradientTextView != null) {
                                return new b1((ConstraintLayout) view, appCompatImageView, cardView, appCompatTextView, textView, appCompatTextView2, gradientTextView);
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
    public ConstraintLayout getRoot() {
        return this.f72621a;
    }
}
