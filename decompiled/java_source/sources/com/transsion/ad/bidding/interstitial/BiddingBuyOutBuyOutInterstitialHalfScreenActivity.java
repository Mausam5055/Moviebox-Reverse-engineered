package com.transsion.ad.bidding.interstitial;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.view.MemberTagView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0017\u0010\fJ\u0011\u0010\u0018\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0018\u0010\fJ\u0011\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0019\u0010\fR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutBuyOutInterstitialHalfScreenActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "", "O0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "Lji/e;", CampaignEx.JSON_KEY_AD_R, "Lji/e;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutBuyOutInterstitialHalfScreenActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ji.e binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(BiddingBuyOutBuyOutInterstitialHalfScreenActivity biddingBuyOutBuyOutInterstitialHalfScreenActivity, View view) {
        biddingBuyOutBuyOutInterstitialHalfScreenActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(BiddingBuyOutBuyOutInterstitialHalfScreenActivity biddingBuyOutBuyOutInterstitialHalfScreenActivity, View view) {
        biddingBuyOutBuyOutInterstitialHalfScreenActivity.V0();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AppCompatTextView appCompatTextView;
        ji.e eVar = this.binding;
        if (eVar == null || (appCompatTextView = eVar.f66059h) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
        appCompatTextView.setText(String.valueOf(i11));
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        MemberTagView memberTagView;
        FrameLayout frameLayout;
        ji.e eVar = this.binding;
        if (eVar != null && (frameLayout = eVar.f66055d) != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutBuyOutInterstitialHalfScreenActivity.Z0(this.f41967a, view);
                }
            });
        }
        ji.e eVar2 = this.binding;
        if (eVar2 == null || (memberTagView = eVar2.f66061j) == null) {
            return;
        }
        memberTagView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.interstitial.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutBuyOutInterstitialHalfScreenActivity.a1(this.f41968a, view);
            }
        });
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
        ji.e eVar = this.binding;
        if (eVar != null) {
            return eVar.f66054c;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        ji.e eVar = this.binding;
        if (eVar != null) {
            return eVar.f66061j;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        ji.e eVarC = ji.e.c(getLayoutInflater());
        this.binding = eVarC;
        if (eVarC != null) {
            return eVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        ji.e eVar = this.binding;
        if (eVar != null) {
            return eVar.f66056e;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        AppCompatTextView appCompatTextView;
        FrameLayout frameLayout;
        ji.e eVar = this.binding;
        if (eVar != null && (frameLayout = eVar.f66055d) != null) {
            frameLayout.setVisibility(0);
        }
        ji.e eVar2 = this.binding;
        if (eVar2 == null || (appCompatTextView = eVar2.f66059h) == null) {
            return;
        }
        appCompatTextView.setVisibility(8);
    }
}
