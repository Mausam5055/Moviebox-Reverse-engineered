package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f66135c;

    private k(LinearLayout linearLayout, Button button, FrameLayout frameLayout) {
        this.f66133a = linearLayout;
        this.f66134b = button;
        this.f66135c = frameLayout;
    }

    public static k a(View view) {
        int i11 = R$id.btnLoadBannerAd;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.flBannerContainer;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                return new k((LinearLayout) view, button, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_banner_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66133a;
    }
}
