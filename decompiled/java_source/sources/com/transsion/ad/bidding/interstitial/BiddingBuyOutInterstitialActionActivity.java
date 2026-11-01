package com.transsion.ad.bidding.interstitial;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.view.RoundedCornerLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u000bJ\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u0011\u0010 \u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b \u0010\u0011J\u0011\u0010!\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b!\u0010\u0011J\u0011\u0010\"\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\"\u0010\u0011J\u001f\u0010#\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\tJ-\u0010&\u001a\u00020\u00072\b\u0010%\u001a\u0004\u0018\u00010$2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialActionActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "width", "height", "", "a1", "(II)V", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "O0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "j0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "onVideoSizeChanged", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "B0", "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V", "Lji/c;", CampaignEx.JSON_KEY_AD_R, "Lji/c;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BiddingBuyOutInterstitialActionActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ji.c binding;

    private final void a1(final int width, final int height) {
        final RoundedCornerLayout roundedCornerLayout;
        ji.c cVar = this.binding;
        if (cVar == null || (roundedCornerLayout = cVar.f66035c) == null) {
            return;
        }
        roundedCornerLayout.post(new Runnable() { // from class: com.transsion.ad.bidding.interstitial.h
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutInterstitialActionActivity.b1(this.f41974a, roundedCornerLayout, height, width);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity, RoundedCornerLayout roundedCornerLayout, int i11, int i12) {
        try {
            Result.Companion companion = Result.INSTANCE;
            ViewGroup.LayoutParams layoutParams = roundedCornerLayout.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.height = (roundedCornerLayout.getWidth() * i11) / i12;
            roundedCornerLayout.setLayoutParams(layoutParams);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity, View view) {
        biddingBuyOutInterstitialActionActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity) {
        AppCompatImageView appCompatImageView;
        ji.c cVar = biddingBuyOutInterstitialActionActivity.binding;
        if (cVar == null || (appCompatImageView = cVar.f66034b) == null) {
            return;
        }
        appCompatImageView.setVisibility(0);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void B0(AppCompatImageView imageView, Integer width, Integer height) {
        super.B0(imageView, width, height);
        if (width == null || height == null) {
            return;
        }
        a1(width.intValue(), height.intValue());
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        LinearLayout root;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        ji.c cVar = this.binding;
        if (cVar != null && (appCompatImageView2 = cVar.f66034b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutInterstitialActionActivity.c1(this.f41972a, view);
                }
            });
        }
        ji.c cVar2 = this.binding;
        if (cVar2 != null && (appCompatImageView = cVar2.f66034b) != null) {
            appCompatImageView.setVisibility(8);
        }
        ji.c cVar3 = this.binding;
        if (cVar3 == null || (root = cVar3.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() { // from class: com.transsion.ad.bidding.interstitial.g
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutInterstitialActionActivity.d1(this.f41973a);
            }
        }, ((long) k0()) * 1000);
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
        return null;
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
    public int j0() {
        return 0;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        ji.c cVar = this.binding;
        if (cVar != null) {
            return cVar.f66035c;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity, com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int width, int height) {
        super.onVideoSizeChanged(width, height);
        a1(width, height);
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
    public View u0() {
        ji.c cVarC = ji.c.c(getLayoutInflater());
        this.binding = cVarC;
        if (cVarC != null) {
            return cVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
    }
}
