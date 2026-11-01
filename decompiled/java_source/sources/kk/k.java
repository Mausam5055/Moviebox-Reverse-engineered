package kk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.GradientTextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f66896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final NativeWrapperAdView f66897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f66898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GradientTextView f66899f;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout, NativeWrapperAdView nativeWrapperAdView, TextView textView, GradientTextView gradientTextView) {
        this.f66894a = constraintLayout;
        this.f66895b = appCompatImageView;
        this.f66896c = linearLayout;
        this.f66897d = nativeWrapperAdView;
        this.f66898e = textView;
        this.f66899f = gradientTextView;
    }

    public static k a(View view) {
        int i11 = R$id.ivRefresh;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.llChange;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.nativeWrapperAdView;
                NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
                if (nativeWrapperAdView != null) {
                    i11 = R$id.tvInstall;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tvTryMore;
                        GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                        if (gradientTextView != null) {
                            return new k((ConstraintLayout) view, appCompatImageView, linearLayout, nativeWrapperAdView, textView, gradientTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_treasure_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66894a;
    }
}
