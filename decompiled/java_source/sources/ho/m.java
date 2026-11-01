package ho;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.postdetail.ui.view.AdCountDownView;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f64679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f64680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdCountDownView f64681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f64682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NativeWrapperAdView f64683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f64684f;

    private m(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AdCountDownView adCountDownView, FrameLayout frameLayout2, NativeWrapperAdView nativeWrapperAdView, AppCompatImageView appCompatImageView2) {
        this.f64679a = frameLayout;
        this.f64680b = appCompatImageView;
        this.f64681c = adCountDownView;
        this.f64682d = frameLayout2;
        this.f64683e = nativeWrapperAdView;
        this.f64684f = appCompatImageView2;
    }

    public static m a(View view) {
        int i11 = R$id.adCloseView;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.adCountDownView;
            AdCountDownView adCountDownView = (AdCountDownView) g4.b.a(view, i11);
            if (adCountDownView != null) {
                i11 = R$id.flContent;
                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout != null) {
                    i11 = R$id.flLandAd;
                    NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
                    if (nativeWrapperAdView != null) {
                        i11 = R$id.rotate;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            return new m((FrameLayout) view, appCompatImageView, adCountDownView, frameLayout, nativeWrapperAdView, appCompatImageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static m c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.playback_intercept_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f64679a;
    }
}
