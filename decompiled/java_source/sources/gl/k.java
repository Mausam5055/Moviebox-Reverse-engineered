package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f63750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f63751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f63753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintLayout f63754f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f63755g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f63756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f63757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BlurredSectorView f63758j;

    private k(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, TnTextView tnTextView, View view, TextView textView, BlurredSectorView blurredSectorView) {
        this.f63749a = constraintLayout;
        this.f63750b = frameLayout;
        this.f63751c = appCompatImageView;
        this.f63752d = appCompatImageView2;
        this.f63753e = frameLayout2;
        this.f63754f = constraintLayout2;
        this.f63755g = tnTextView;
        this.f63756h = view;
        this.f63757i = textView;
        this.f63758j = blurredSectorView;
    }

    public static k a(View view) {
        View viewA;
        int i11 = R$id.bottom_op_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.bottom_op_mb_logo;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.bottom_op_search_appstore;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.bottom_op_search_gamestore;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        i11 = R$id.bottom_op_search_liner;
                        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                        if (constraintLayout != null) {
                            i11 = R$id.bottom_op_search_text;
                            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView != null && (viewA = g4.b.a(view, (i11 = R$id.divider_line))) != null) {
                                i11 = R$id.subscription_title;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null) {
                                    i11 = R$id.trending_bottom_bg;
                                    BlurredSectorView blurredSectorView = (BlurredSectorView) g4.b.a(view, i11);
                                    if (blurredSectorView != null) {
                                        return new k((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, frameLayout2, constraintLayout, tnTextView, viewA, textView, blurredSectorView);
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

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bottom_op_subscription, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63749a;
    }
}
