package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ui.view.AdCountDownView;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f75577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NativeWrapperAdView f75578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AdCountDownView f75579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AdInterceptTimerView f75580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NativeWrapperAdView f75581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f75582g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f75583h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f75584i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f75585j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final z f75586k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b0 f75587l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final d0 f75588m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatImageView f75589n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ImageView f75590o;

    private l(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, NativeWrapperAdView nativeWrapperAdView, AdCountDownView adCountDownView, AdInterceptTimerView adInterceptTimerView, NativeWrapperAdView nativeWrapperAdView2, FrameLayout frameLayout, ConstraintLayout constraintLayout2, View view, ImageView imageView, z zVar, b0 b0Var, d0 d0Var, AppCompatImageView appCompatImageView2, ImageView imageView2) {
        this.f75576a = constraintLayout;
        this.f75577b = appCompatImageView;
        this.f75578c = nativeWrapperAdView;
        this.f75579d = adCountDownView;
        this.f75580e = adInterceptTimerView;
        this.f75581f = nativeWrapperAdView2;
        this.f75582g = frameLayout;
        this.f75583h = constraintLayout2;
        this.f75584i = view;
        this.f75585j = imageView;
        this.f75586k = zVar;
        this.f75587l = b0Var;
        this.f75588m = d0Var;
        this.f75589n = appCompatImageView2;
        this.f75590o = imageView2;
    }

    public static l a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.adCloseView;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.adContainer;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
            if (nativeWrapperAdView != null) {
                i11 = R$id.adCountDownView;
                AdCountDownView adCountDownView = (AdCountDownView) g4.b.a(view, i11);
                if (adCountDownView != null) {
                    i11 = R$id.enter_ad_tip;
                    AdInterceptTimerView adInterceptTimerView = (AdInterceptTimerView) g4.b.a(view, i11);
                    if (adInterceptTimerView != null) {
                        i11 = R$id.flLandAd;
                        NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) g4.b.a(view, i11);
                        if (nativeWrapperAdView2 != null) {
                            i11 = R$id.flLandAdGroup;
                            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout != null) {
                                i11 = R$id.flPauseAdGroup;
                                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                if (constraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.guideline))) != null) {
                                    i11 = R$id.ivAdPauseClose;
                                    ImageView imageView = (ImageView) g4.b.a(view, i11);
                                    if (imageView != null && (viewA2 = g4.b.a(view, (i11 = R$id.local_video_land))) != null) {
                                        z zVarA = z.a(viewA2);
                                        i11 = R$id.local_video_middle;
                                        View viewA3 = g4.b.a(view, i11);
                                        if (viewA3 != null) {
                                            b0 b0VarA = b0.a(viewA3);
                                            i11 = R$id.local_video_portrait;
                                            View viewA4 = g4.b.a(view, i11);
                                            if (viewA4 != null) {
                                                d0 d0VarA = d0.a(viewA4);
                                                i11 = R$id.rotate;
                                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                                if (appCompatImageView2 != null) {
                                                    i11 = R$id.v_top_space;
                                                    ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                                    if (imageView2 != null) {
                                                        return new l((ConstraintLayout) view, appCompatImageView, nativeWrapperAdView, adCountDownView, adInterceptTimerView, nativeWrapperAdView2, frameLayout, constraintLayout, viewA, imageView, zVarA, b0VarA, d0VarA, appCompatImageView2, imageView2);
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

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_local_video, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75576a;
    }
}
