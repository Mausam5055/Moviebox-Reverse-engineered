package com.transsion.ad.bidding.video;

import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.a0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b!\u0010\"J\u0011\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b$\u0010%J\u0011\u0010&\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b&\u0010%J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0003J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0004H\u0017¢\u0006\u0004\b)\u0010\bJ\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0003J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0003J\u0011\u0010,\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b,\u0010\"J\u0011\u0010-\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b-\u0010\"J\u0011\u0010.\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b.\u0010\"R\u0016\u00101\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsion/ad/bidding/video/BiddingBuyOutVideoAutoFullScreenActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "orientation", "", "m1", "(I)V", "d1", "M0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "isLandscape", "l1", "(Z)V", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "O0", "i", "H0", "z0", "i1", "e0", "p0", "q0", CampaignEx.JSON_KEY_AD_R, "Z", "isCanClickClose", "Lji/h;", "s", "Lji/h;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutVideoAutoFullScreenActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isCanClickClose;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private ji.h binding;

    private final void d1() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        ShapeableImageView shapeableImageView2;
        try {
            Result.Companion companion = Result.INSTANCE;
            ji.h hVar = this.binding;
            if (hVar != null && (shapeableImageView2 = hVar.f66110o) != null) {
                AdPlans mAdPlan = getMAdPlan();
                if (TextUtils.isEmpty(mAdPlan != null ? mAdPlan.getAdvertiserAvatarPath() : null)) {
                    RequestManager requestManagerWith = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan2 = getMAdPlan();
                    requestManagerWith.load2(mAdPlan2 != null ? mAdPlan2.getAdvertiserAvatar() : null).into(shapeableImageView2);
                } else {
                    RequestManager requestManagerWith2 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan3 = getMAdPlan();
                    requestManagerWith2.load2(mAdPlan3 != null ? mAdPlan3.getAdvertiserAvatarPath() : null).into(shapeableImageView2);
                }
            }
            ji.h hVar2 = this.binding;
            if (hVar2 != null && (appCompatTextView6 = hVar2.f66114s) != null) {
                AdMaterialList mAdMaterialList = getMAdMaterialList();
                appCompatTextView6.setText(mAdMaterialList != null ? mAdMaterialList.getTitle() : null);
            }
            ji.h hVar3 = this.binding;
            if (hVar3 != null && (appCompatTextView5 = hVar3.f66113r) != null) {
                AdMaterialList mAdMaterialList2 = getMAdMaterialList();
                appCompatTextView5.setText(mAdMaterialList2 != null ? mAdMaterialList2.getDesc() : null);
            }
            ji.h hVar4 = this.binding;
            if (hVar4 != null && (appCompatTextView4 = hVar4.f66111p) != null) {
                AdMaterialList mAdMaterialList3 = getMAdMaterialList();
                appCompatTextView4.setText(mAdMaterialList3 != null ? mAdMaterialList3.getButtonText() : null);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        try {
            ji.h hVar5 = this.binding;
            if (hVar5 != null && (shapeableImageView = hVar5.f66106k) != null) {
                AdPlans mAdPlan4 = getMAdPlan();
                if (TextUtils.isEmpty(mAdPlan4 != null ? mAdPlan4.getAdvertiserAvatarPath() : null)) {
                    RequestManager requestManagerWith3 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan5 = getMAdPlan();
                    requestManagerWith3.load2(mAdPlan5 != null ? mAdPlan5.getAdvertiserAvatar() : null).into(shapeableImageView);
                } else {
                    RequestManager requestManagerWith4 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan6 = getMAdPlan();
                    requestManagerWith4.load2(mAdPlan6 != null ? mAdPlan6.getAdvertiserAvatarPath() : null).into(shapeableImageView);
                }
            }
            ji.h hVar6 = this.binding;
            if (hVar6 != null && (appCompatTextView3 = hVar6.f66109n) != null) {
                AdMaterialList mAdMaterialList4 = getMAdMaterialList();
                appCompatTextView3.setText(mAdMaterialList4 != null ? mAdMaterialList4.getTitle() : null);
            }
            ji.h hVar7 = this.binding;
            if (hVar7 != null && (appCompatTextView2 = hVar7.f66108m) != null) {
                AdMaterialList mAdMaterialList5 = getMAdMaterialList();
                appCompatTextView2.setText(mAdMaterialList5 != null ? mAdMaterialList5.getDesc() : null);
            }
            ji.h hVar8 = this.binding;
            if (hVar8 != null && (appCompatTextView = hVar8.f66107l) != null) {
                AdMaterialList mAdMaterialList6 = getMAdMaterialList();
                appCompatTextView.setText(mAdMaterialList6 != null ? mAdMaterialList6.getButtonText() : null);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity, View it) {
        Intrinsics.h(it, "it");
        biddingBuyOutVideoAutoFullScreenActivity.W();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity, View view) {
        biddingBuyOutVideoAutoFullScreenActivity.V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity, View view) {
        if (biddingBuyOutVideoAutoFullScreenActivity.isCanClickClose) {
            biddingBuyOutVideoAutoFullScreenActivity.i1();
        } else {
            oi.b.a.c(biddingBuyOutVideoAutoFullScreenActivity, 3, "showAdInformation() --> setOnClickListener() --> 只有在最后10秒的时候才能点击", null, false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity, View view) {
        biddingBuyOutVideoAutoFullScreenActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity) {
        biddingBuyOutVideoAutoFullScreenActivity.N0(false);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(BiddingBuyOutVideoAutoFullScreenActivity biddingBuyOutVideoAutoFullScreenActivity) {
        biddingBuyOutVideoAutoFullScreenActivity.d0();
        return Unit.f67061a;
    }

    private final void m1(int orientation) {
        l1(orientation == 2);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void H0(int i11) {
        AppCompatImageView appCompatImageView;
        LinearLayout linearLayout;
        AppCompatTextView appCompatTextView;
        ji.h hVar;
        LinearLayout linearLayout2;
        AppCompatImageView appCompatImageView2;
        if (i11 <= 10) {
            this.isCanClickClose = true;
            ji.h hVar2 = this.binding;
            if (hVar2 != null && (appCompatImageView2 = hVar2.f66104i) != null) {
                appCompatImageView2.setImageResource(R$mipmap.ad_video_01);
            }
        } else {
            ji.h hVar3 = this.binding;
            if (hVar3 != null && (appCompatImageView = hVar3.f66104i) != null) {
                appCompatImageView.setImageResource(R$mipmap.ad_video_03);
            }
        }
        if (i11 == j0() && (hVar = this.binding) != null && (linearLayout2 = hVar.f66105j) != null) {
            linearLayout2.setVisibility(0);
        }
        String str = i11 + "s ";
        ji.h hVar4 = this.binding;
        if (hVar4 != null && (appCompatTextView = hVar4.f66112q) != null) {
            appCompatTextView.setText(str);
        }
        if (i11 == 0) {
            ji.h hVar5 = this.binding;
            if (hVar5 != null && (linearLayout = hVar5.f66105j) != null) {
                linearLayout.setVisibility(8);
            }
            Z();
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void M0() {
        setRequestedOrientation(-1);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void O0() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        LinearLayout linearLayout;
        d1();
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.clAdEndLayout);
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new ti.g(0L, new Function1() { // from class: com.transsion.ad.bidding.video.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BiddingBuyOutVideoAutoFullScreenActivity.e1(this.f42059a, (View) obj);
                }
            }, 1, null));
        }
        ji.h hVar = this.binding;
        if (hVar != null && (linearLayout = hVar.f66105j) != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutVideoAutoFullScreenActivity.f1(this.f42060a, view);
                }
            });
        }
        ji.h hVar2 = this.binding;
        if (hVar2 != null && (appCompatImageView2 = hVar2.f66104i) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutVideoAutoFullScreenActivity.g1(this.f42061a, view);
                }
            });
        }
        ji.h hVar3 = this.binding;
        if (hVar3 == null || (appCompatImageView = hVar3.f66103h) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutVideoAutoFullScreenActivity.h1(this.f42062a, view);
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

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View e0() {
        return findViewById(R$id.adIcon);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_v";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public int h0() {
        return 3;
    }

    public void i1() {
        if (!this.isCanClickClose) {
            oi.b.a.c(this, 3, "showCloseAdDialog() --> 只有在最后10秒的时候才能展示", null, false, 4, null);
        } else {
            N0(true);
            new BiddingCloseAdDialog().b0(new Function0() { // from class: com.transsion.ad.bidding.video.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BiddingBuyOutVideoAutoFullScreenActivity.k1(this.f42063a);
                }
            }, new Function0() { // from class: com.transsion.ad.bidding.video.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BiddingBuyOutVideoAutoFullScreenActivity.j1(this.f42064a);
                }
            }).c0(this, "CloseAdDialog");
        }
    }

    public final void l1(boolean isLandscape) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ConstraintLayout constraintLayout;
        LinearLayoutCompat linearLayoutCompat;
        ji.h hVar = this.binding;
        if (hVar != null && (linearLayoutCompat = hVar.f66115t) != null) {
            ViewGroup.LayoutParams layoutParams = linearLayoutCompat.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = a0.a(isLandscape ? 12.0f : 44.0f);
        }
        ji.h hVar2 = this.binding;
        if (hVar2 != null && (constraintLayout = hVar2.f66099d) != null) {
            constraintLayout.getLayoutParams().width = a0.a(isLandscape ? 360.0f : 336.0f);
        }
        ji.h hVar3 = this.binding;
        if (hVar3 != null && (appCompatTextView2 = hVar3.f66109n) != null) {
            appCompatTextView2.setMaxLines(isLandscape ? 1 : 2);
        }
        ji.h hVar4 = this.binding;
        if (hVar4 == null || (appCompatTextView = hVar4.f66108m) == null) {
            return;
        }
        appCompatTextView.setMaxLines(isLandscape ? 2 : 3);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        ji.h hVar = this.binding;
        if (hVar != null) {
            return hVar.f66101f;
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m1(newConfig.orientation);
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
        m1(getResources().getConfiguration().orientation);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View p0() {
        ji.h hVar = this.binding;
        if (hVar != null) {
            return hVar.f66116u;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View q0() {
        ji.h hVar = this.binding;
        if (hVar != null) {
            return hVar.f66117v;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public View u0() {
        ji.h hVarC = ji.h.c(getLayoutInflater());
        this.binding = hVarC;
        if (hVarC != null) {
            return hVarC.getRoot();
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout w0() {
        ji.h hVar = this.binding;
        if (hVar != null) {
            return hVar.f66102g;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public void z0() {
        ConstraintLayout constraintLayout;
        ji.h hVar = this.binding;
        if (hVar == null || (constraintLayout = hVar.f66098c) == null) {
            return;
        }
        constraintLayout.setVisibility(0);
    }
}
