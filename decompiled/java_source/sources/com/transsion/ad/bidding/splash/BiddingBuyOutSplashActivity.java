package com.transsion.ad.bidding.splash;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.R$string;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.bidding.splash.BiddingBuyOutSplashActivity;
import com.transsion.ad.view.SwipeUpOrTapForDetailsView;
import com.transsion.player.p007enum.ScaleMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import ji.g;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001d\u0010\u000bJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\tH\u0017¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0003J\u0011\u0010\"\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\"\u0010\u000eJ\u0011\u0010#\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b#\u0010\u000eJ\u0011\u0010$\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b$\u0010\u000eJ\u0011\u0010%\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b%\u0010\u000eJ\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010\u0003R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/transsion/ad/bidding/splash/BiddingBuyOutSplashActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "a1", "", "getLogTag", "()Ljava/lang/String;", "", "h0", "()I", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "Landroid/widget/ImageView$ScaleType;", "l0", "()Landroid/widget/ImageView$ScaleType;", "Lcom/transsion/player/enum/ScaleMode;", "v0", "()Lcom/transsion/player/enum/ScaleMode;", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "j0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "t0", "O0", "Lji/g;", CampaignEx.JSON_KEY_AD_R, "Lji/g;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class BiddingBuyOutSplashActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private g binding;

    private final void a1() {
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView;
        g gVar = this.binding;
        if (gVar == null || (swipeUpOrTapForDetailsView = gVar.f66089c) == null) {
            return;
        }
        swipeUpOrTapForDetailsView.post(new Runnable() { // from class: gi.b
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutSplashActivity.b1(this.f63620a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(final BiddingBuyOutSplashActivity biddingBuyOutSplashActivity) {
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView;
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView2;
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView3;
        if (!biddingBuyOutSplashActivity.getIsAdMaterialShow().get()) {
            g gVar = biddingBuyOutSplashActivity.binding;
            if (gVar == null || (swipeUpOrTapForDetailsView = gVar.f66089c) == null) {
                return;
            }
            swipeUpOrTapForDetailsView.postDelayed(new Runnable() { // from class: gi.c
                @Override // java.lang.Runnable
                public final void run() {
                    BiddingBuyOutSplashActivity.c1(this.f63621a);
                }
            }, 100L);
            return;
        }
        g gVar2 = biddingBuyOutSplashActivity.binding;
        if (gVar2 != null && (swipeUpOrTapForDetailsView3 = gVar2.f66089c) != null) {
            swipeUpOrTapForDetailsView3.setSceneID(biddingBuyOutSplashActivity.getMSceneId());
        }
        g gVar3 = biddingBuyOutSplashActivity.binding;
        if (gVar3 == null || (swipeUpOrTapForDetailsView2 = gVar3.f66089c) == null) {
            return;
        }
        swipeUpOrTapForDetailsView2.open();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(BiddingBuyOutSplashActivity biddingBuyOutSplashActivity) {
        biddingBuyOutSplashActivity.a1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(BiddingBuyOutSplashActivity biddingBuyOutSplashActivity, View view) {
        biddingBuyOutSplashActivity.d0();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AppCompatTextView appCompatTextView;
        g gVar = this.binding;
        if (gVar == null || (appCompatTextView = gVar.f66095i) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String string = getString(R$string.ad_skip_ad, Integer.valueOf(i11));
        Intrinsics.g(string, "getString(...)");
        String str = String.format(string, Arrays.copyOf(new Object[0], 0));
        Intrinsics.g(str, "format(...)");
        appCompatTextView.setText(str);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        AppCompatTextView appCompatTextView;
        try {
            Result.Companion companion = Result.INSTANCE;
            FrameLayout frameLayout = (FrameLayout) findViewById(R$id.movieBoxLayout);
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(LayoutInflater.from(this).inflate(getMAppLayoutId(), (ViewGroup) frameLayout, false));
            } else {
                frameLayout = null;
            }
            Result.m454constructorimpl(frameLayout);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        g gVar = this.binding;
        if (gVar != null && (appCompatTextView = gVar.f66095i) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: gi.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutSplashActivity.d1(this.f63619a, view);
                }
            });
        }
        a1();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void W0(ImmersionBar with) {
        Intrinsics.h(with, "with");
        super.W0(with);
        with.transparentStatusBar();
        with.transparentNavigationBar();
        with.navigationBarDarkIcon(true);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View e0() {
        return findViewById(R$id.adIcon);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public int h0() {
        return 5;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public int j0() {
        return com.transsion.ad.scene.a.f42201a.s(getMSceneId());
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public ImageView.ScaleType l0() {
        return ImageView.ScaleType.CENTER_CROP;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        g gVar = this.binding;
        if (gVar != null) {
            return gVar.f66091e;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    protected View t0() {
        g gVar = this.binding;
        if (gVar != null) {
            return gVar.f66093g;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        g gVarC = g.c(getLayoutInflater());
        this.binding = gVarC;
        if (gVarC != null) {
            return gVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public ScaleMode v0() {
        return ScaleMode.SCALE_ASPECT_FILL;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        g gVar = this.binding;
        if (gVar != null) {
            return gVar.f66092f;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        d0();
    }
}
