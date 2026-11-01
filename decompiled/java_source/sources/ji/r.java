package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NativeWrapperAdView f66171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final NativeWrapperAdView f66172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NativeWrapperAdView f66173e;

    private r(LinearLayout linearLayout, Button button, NativeWrapperAdView nativeWrapperAdView, NativeWrapperAdView nativeWrapperAdView2, NativeWrapperAdView nativeWrapperAdView3) {
        this.f66169a = linearLayout;
        this.f66170b = button;
        this.f66171c = nativeWrapperAdView;
        this.f66172d = nativeWrapperAdView2;
        this.f66173e = nativeWrapperAdView3;
    }

    public static r a(View view) {
        int i11 = R$id.btnLoadNativeAd;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.nativeView1;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
            if (nativeWrapperAdView != null) {
                i11 = R$id.nativeView2;
                NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) g4.b.a(view, i11);
                if (nativeWrapperAdView2 != null) {
                    i11 = R$id.nativeView3;
                    NativeWrapperAdView nativeWrapperAdView3 = (NativeWrapperAdView) g4.b.a(view, i11);
                    if (nativeWrapperAdView3 != null) {
                        return new r((LinearLayout) view, button, nativeWrapperAdView, nativeWrapperAdView2, nativeWrapperAdView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_multiple_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66169a;
    }
}
