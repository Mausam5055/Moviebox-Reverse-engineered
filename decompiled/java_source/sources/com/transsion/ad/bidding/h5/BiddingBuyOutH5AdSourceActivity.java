package com.transsion.ad.bidding.h5;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.WindowCompat;
import androidx.fragment.app.FragmentManager;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.R$string;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.h5.BiddingBuyOutH5AdSourceActivity;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.view.AdCountdownView;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.web.AdWebFragment;
import com.transsion.ad.web.d;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ji.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import oi.a;
import ti.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\rJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\rJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\rJ\u0017\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0010H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0010H\u0014¢\u0006\u0004\b&\u0010\u0004R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/transsion/ad/bidding/h5/BiddingBuyOutH5AdSourceActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "Lcom/transsion/ad/web/d;", "<init>", "()V", "", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "O0", "w0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "", "isVisible", "onVisibilityChanged", "(Z)V", "f", "n", "h", "onDestroy", "Lji/b;", CampaignEx.JSON_KEY_AD_R, "Lji/b;", "binding", "Lcom/transsion/ad/web/AdWebFragment;", "s", "Lcom/transsion/ad/web/AdWebFragment;", "adWebFragment", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BiddingBuyOutH5AdSourceActivity extends AbsBiddingActivity implements d {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private b binding;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private AdWebFragment adWebFragment;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(BiddingBuyOutH5AdSourceActivity biddingBuyOutH5AdSourceActivity, View view) {
        biddingBuyOutH5AdSourceActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(BiddingBuyOutH5AdSourceActivity biddingBuyOutH5AdSourceActivity) {
        biddingBuyOutH5AdSourceActivity.J0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(BiddingBuyOutH5AdSourceActivity biddingBuyOutH5AdSourceActivity, View view) {
        biddingBuyOutH5AdSourceActivity.V0();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AdCountdownView adCountdownView;
        AdCountdownView adCountdownView2;
        b bVar = this.binding;
        if (bVar != null && (adCountdownView2 = bVar.f66029f) != null) {
            adCountdownView2.setVisibility(0);
        }
        b bVar2 = this.binding;
        if (bVar2 != null && (adCountdownView = bVar2.f66029f) != null) {
            adCountdownView.onRefresh(i11);
        }
        J0();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        MemberTagView memberTagView;
        LinearLayout linearLayout;
        b bVar = this.binding;
        if (bVar != null && (linearLayout = bVar.f66028e) != null) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.topMargin += ImmersionBar.getStatusBarHeight((Activity) this);
            linearLayout.setLayoutParams(layoutParams2);
        }
        this.adWebFragment = new AdWebFragment();
        Bundle bundle = new Bundle();
        AdPlanUtil adPlanUtil = AdPlanUtil.f42167a;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN0 = getMaxEcpmObject();
        AdMaterialList adMaterialListA = adPlanUtil.a(biddingIntermediateMaterialBeanN0 != null ? biddingIntermediateMaterialBeanN0.getPlans() : null);
        bundle.putString("url", adMaterialListA != null ? adMaterialListA.getH5Link() : null);
        bundle.putBoolean(WebConstants.FIELD_TOOL_BAR_HIDDEN, true);
        bundle.putBoolean(WebConstants.FIELD_STATUS_BAR_HIDDEN, true);
        bundle.putBoolean("isAd", true);
        Intent intent = getIntent();
        bundle.putString("web_activity_extra_log_tag_key", intent != null ? intent.getStringExtra("web_activity_extra_log_tag_key") : null);
        AdWebFragment adWebFragment = this.adWebFragment;
        if (adWebFragment != null) {
            adWebFragment.setArguments(bundle);
        }
        AdWebFragment adWebFragment2 = this.adWebFragment;
        if (adWebFragment2 != null) {
            i iVar = i.f76260a;
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            i.b(iVar, supportFragmentManager, R$id.flAdContainer, adWebFragment2, false, null, 24, null);
        }
        b bVar2 = this.binding;
        if (bVar2 != null && (memberTagView = bVar2.f66030g) != null) {
            memberTagView.setOnClickListener(new View.OnClickListener() { // from class: fi.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutH5AdSourceActivity.c1(this.f62414a, view);
                }
            });
        }
        I0();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void W0(ImmersionBar with) {
        Intrinsics.h(with, "with");
        super.W0(with);
        with.transparentStatusBar();
        with.transparentNavigationBar();
        with.navigationBarDarkIcon(true);
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View e0() {
        b bVar = this.binding;
        if (bVar != null) {
            return bVar.f66025b;
        }
        return null;
    }

    @Override // com.transsion.ad.web.d
    public void f() {
        a.c(a.f71022a, "H5 onPageAdShown", 0, false, 6, null);
        runOnUiThread(new Runnable() { // from class: fi.b
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutH5AdSourceActivity.b1(this.f62415a);
            }
        });
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_int";
    }

    @Override // com.transsion.ad.web.d
    public void h() {
        a.c(a.f71022a, "H5 onPageAdClick", 0, false, 6, null);
        W();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public int h0() {
        return 4;
    }

    @Override // com.transsion.ad.web.d
    public void n() {
        a.c(a.f71022a, "H5 onPageAdError", 0, false, 6, null);
        try {
            C0(getResources().getString(R$string.ad_load_err_skip));
        } catch (Exception unused) {
            a.c(a.f71022a, "onPageAdError callback failed", 0, false, 6, null);
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        b bVar = this.binding;
        if (bVar != null) {
            return bVar.f66027d;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            AdWebFragment adWebFragment = this.adWebFragment;
            if (adWebFragment != null) {
                adWebFragment.onDestroy();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity, com.transsion.ad.strategy.r.a
    public void onVisibilityChanged(boolean isVisible) {
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        b bVar = this.binding;
        if (bVar != null) {
            return bVar.f66030g;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        b bVarC = b.c(getLayoutInflater());
        this.binding = bVarC;
        if (bVarC != null) {
            return bVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        AdCountdownView adCountdownView;
        AdCountdownView adCountdownView2;
        b bVar = this.binding;
        if (bVar != null && (adCountdownView2 = bVar.f66029f) != null) {
            adCountdownView2.onCountdown();
        }
        b bVar2 = this.binding;
        if (bVar2 == null || (adCountdownView = bVar2.f66029f) == null) {
            return;
        }
        adCountdownView.setSkipListener(new View.OnClickListener() { // from class: fi.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutH5AdSourceActivity.a1(this.f62416a, view);
            }
        });
    }
}
