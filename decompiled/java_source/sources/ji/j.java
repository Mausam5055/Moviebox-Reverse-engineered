package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollView f66120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f66122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Button f66123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Button f66124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Button f66125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Button f66126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Button f66127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Button f66128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Button f66129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Button f66130k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Button f66131l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Button f66132m;

    private j(ScrollView scrollView, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12) {
        this.f66120a = scrollView;
        this.f66121b = button;
        this.f66122c = button2;
        this.f66123d = button3;
        this.f66124e = button4;
        this.f66125f = button5;
        this.f66126g = button6;
        this.f66127h = button7;
        this.f66128i = button8;
        this.f66129j = button9;
        this.f66130k = button10;
        this.f66131l = button11;
        this.f66132m = button12;
    }

    public static j a(View view) {
        int i11 = R$id.btnIconAd;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnIrregularAd;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.btnLoadBannerAd;
                Button button3 = (Button) g4.b.a(view, i11);
                if (button3 != null) {
                    i11 = R$id.btnLoadH5Ad;
                    Button button4 = (Button) g4.b.a(view, i11);
                    if (button4 != null) {
                        i11 = R$id.btnLoadInterstitialAd;
                        Button button5 = (Button) g4.b.a(view, i11);
                        if (button5 != null) {
                            i11 = R$id.btnLoadNativeAd;
                            Button button6 = (Button) g4.b.a(view, i11);
                            if (button6 != null) {
                                i11 = R$id.btnLoadNativeAdMultipleFetch;
                                Button button7 = (Button) g4.b.a(view, i11);
                                if (button7 != null) {
                                    i11 = R$id.btnLoadNativeListAd;
                                    Button button8 = (Button) g4.b.a(view, i11);
                                    if (button8 != null) {
                                        i11 = R$id.btnLoadSSPNativeAdFetch;
                                        Button button9 = (Button) g4.b.a(view, i11);
                                        if (button9 != null) {
                                            i11 = R$id.btnLoadSplashAd;
                                            Button button10 = (Button) g4.b.a(view, i11);
                                            if (button10 != null) {
                                                i11 = R$id.btnLoadVideoAd;
                                                Button button11 = (Button) g4.b.a(view, i11);
                                                if (button11 != null) {
                                                    i11 = R$id.btnViewMeasure;
                                                    Button button12 = (Button) g4.b.a(view, i11);
                                                    if (button12 != null) {
                                                        return new j((ScrollView) view, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_a_example_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ScrollView getRoot() {
        return this.f66120a;
    }
}
