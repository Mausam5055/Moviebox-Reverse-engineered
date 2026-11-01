package com.transsion.ad.bidding.interstitial;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.view.RoundedCornerLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u0011\u0010%\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0003J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u0004H\u0017¢\u0006\u0004\b(\u0010\bJ\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0003J\u0011\u0010*\u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b*\u0010!J\u0011\u0010+\u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b+\u0010!J\u0011\u0010,\u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b,\u0010!R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialAutoFullScreenActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "orientation", "", "c1", "(I)V", "M0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "isLandscape", "b1", "(Z)V", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "O0", "i", "H0", "z0", "e0", "p0", "q0", "Lji/f;", CampaignEx.JSON_KEY_AD_R, "Lji/f;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutInterstitialAutoFullScreenActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ji.f binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(BiddingBuyOutInterstitialAutoFullScreenActivity biddingBuyOutInterstitialAutoFullScreenActivity, View view) {
        biddingBuyOutInterstitialAutoFullScreenActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(BiddingBuyOutInterstitialAutoFullScreenActivity biddingBuyOutInterstitialAutoFullScreenActivity, View view) {
        biddingBuyOutInterstitialAutoFullScreenActivity.V0();
    }

    private final void c1(int orientation) {
        b1(orientation == 2);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AppCompatTextView appCompatTextView;
        ji.f fVar = this.binding;
        if (fVar == null || (appCompatTextView = fVar.f66079i) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
        appCompatTextView.setText(String.valueOf(i11));
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void M0() {
        setRequestedOrientation(-1);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        MemberTagView memberTagView;
        FrameLayout frameLayout;
        ji.f fVar = this.binding;
        if (fVar != null && (frameLayout = fVar.f66074d) != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutInterstitialAutoFullScreenActivity.Z0(this.f41978a, view);
                }
            });
        }
        ji.f fVar2 = this.binding;
        if (fVar2 == null || (memberTagView = fVar2.f66081k) == null) {
            return;
        }
        memberTagView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutInterstitialAutoFullScreenActivity.a1(this.f41979a, view);
            }
        });
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void W0(ImmersionBar with) {
        Intrinsics.h(with, "with");
        if (getResources().getConfiguration().orientation == 2) {
            with.hideBar(BarHide.FLAG_HIDE_STATUS_BAR);
        } else {
            with.hideBar(BarHide.FLAG_SHOW_BAR);
        }
    }

    public final void b1(boolean isLandscape) {
        RoundedCornerLayout roundedCornerLayout;
        ji.f fVar = this.binding;
        if (fVar == null || (roundedCornerLayout = fVar.f66073c) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = roundedCornerLayout.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar != null) {
            ((ViewGroup.MarginLayoutParams) bVar).width = isLandscape ? a0.a(426.0f) : -1;
            ((ViewGroup.MarginLayoutParams) bVar).height = isLandscape ? a0.a(240.0f) : -1;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = a0.a(isLandscape ? 0.0f : 44.0f);
        }
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
    public FrameLayout o0() {
        ji.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f66073c;
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        c1(newConfig.orientation);
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        if (newConfig.orientation == 2) {
            immersionBarWith.hideBar(BarHide.FLAG_HIDE_STATUS_BAR);
        } else {
            immersionBarWith.hideBar(BarHide.FLAG_SHOW_BAR);
        }
        immersionBarWith.init();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.dimAmount = 0.8f;
        window.setAttributes(attributes);
        c1(getResources().getConfiguration().orientation);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        ji.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f66081k;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        ji.f fVarC = ji.f.c(getLayoutInflater());
        this.binding = fVarC;
        if (fVarC != null) {
            return fVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        ji.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f66075e;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        AppCompatTextView appCompatTextView;
        FrameLayout frameLayout;
        ji.f fVar = this.binding;
        if (fVar != null && (frameLayout = fVar.f66074d) != null) {
            frameLayout.setVisibility(0);
        }
        ji.f fVar2 = this.binding;
        if (fVar2 == null || (appCompatTextView = fVar2.f66079i) == null) {
            return;
        }
        appCompatTextView.setVisibility(8);
    }
}
