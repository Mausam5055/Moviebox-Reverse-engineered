package com.transsion.ad.bidding.interstitial;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.view.AdCountdownView;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.view.SwipeUpOrTapForDetailsView;
import com.transsion.player.p007enum.ScaleMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u0003J\u0017\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\u0003J\u0011\u0010\"\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\"\u0010\fJ\u0011\u0010#\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b#\u0010\fJ\u0011\u0010$\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b$\u0010\fR\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutFullScreenInterstitialActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "t0", "Landroid/widget/ImageView$ScaleType;", "l0", "()Landroid/widget/ImageView$ScaleType;", "Lcom/transsion/player/enum/ScaleMode;", "v0", "()Lcom/transsion/player/enum/ScaleMode;", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "O0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "Lji/d;", CampaignEx.JSON_KEY_AD_R, "Lji/d;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutFullScreenInterstitialActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ji.d binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(BiddingBuyOutFullScreenInterstitialActivity biddingBuyOutFullScreenInterstitialActivity, View view) {
        biddingBuyOutFullScreenInterstitialActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(BiddingBuyOutFullScreenInterstitialActivity biddingBuyOutFullScreenInterstitialActivity, View view) {
        biddingBuyOutFullScreenInterstitialActivity.V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(BiddingBuyOutFullScreenInterstitialActivity biddingBuyOutFullScreenInterstitialActivity) {
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView;
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView2;
        ji.d dVar = biddingBuyOutFullScreenInterstitialActivity.binding;
        if (dVar != null && (swipeUpOrTapForDetailsView2 = dVar.f66042d) != null) {
            swipeUpOrTapForDetailsView2.setSceneID(biddingBuyOutFullScreenInterstitialActivity.getMSceneId());
        }
        ji.d dVar2 = biddingBuyOutFullScreenInterstitialActivity.binding;
        if (dVar2 == null || (swipeUpOrTapForDetailsView = dVar2.f66042d) == null) {
            return;
        }
        swipeUpOrTapForDetailsView.open();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AdCountdownView adCountdownView;
        ji.d dVar = this.binding;
        if (dVar == null || (adCountdownView = dVar.f66040b) == null) {
            return;
        }
        adCountdownView.onRefresh(i11);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView;
        MemberTagView memberTagView;
        ji.d dVar = this.binding;
        if (dVar != null && (memberTagView = dVar.f66047i) != null) {
            memberTagView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutFullScreenInterstitialActivity.b1(this.f41969a, view);
                }
            });
        }
        ji.d dVar2 = this.binding;
        if (dVar2 == null || (swipeUpOrTapForDetailsView = dVar2.f66042d) == null) {
            return;
        }
        swipeUpOrTapForDetailsView.post(new Runnable() { // from class: com.transsion.ad.bidding.interstitial.d
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutFullScreenInterstitialActivity.c1(this.f41970a);
            }
        });
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
        return "ad_int";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public int h0() {
        return 4;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public ImageView.ScaleType l0() {
        return ImageView.ScaleType.CENTER_CROP;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        ji.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f66043e;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        ji.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f66047i;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    protected View t0() {
        ji.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f66045g;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        ji.d dVarC = ji.d.c(getLayoutInflater());
        this.binding = dVarC;
        if (dVarC != null) {
            return dVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public ScaleMode v0() {
        return ScaleMode.SCALE_ASPECT_FILL;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        ji.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f66044f;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        AdCountdownView adCountdownView;
        AdCountdownView adCountdownView2;
        ji.d dVar = this.binding;
        if (dVar != null && (adCountdownView2 = dVar.f66040b) != null) {
            adCountdownView2.onCountdown();
        }
        ji.d dVar2 = this.binding;
        if (dVar2 == null || (adCountdownView = dVar2.f66040b) == null) {
            return;
        }
        adCountdownView.setSkipListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutFullScreenInterstitialActivity.a1(this.f41971a, view);
            }
        });
    }
}
