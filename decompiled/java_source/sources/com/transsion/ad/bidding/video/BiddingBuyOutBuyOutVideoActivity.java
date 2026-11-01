package com.transsion.ad.bidding.video;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$id;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.view.MemberTagView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\nH\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0003J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u0012J\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u0012J\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u001f\u0010\u0012R\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "f1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "h0", "()I", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "u0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "O0", "i", "H0", "(I)V", "z0", "k1", "e0", "p0", "q0", "", CampaignEx.JSON_KEY_AD_R, "Z", "isCanClickClose", "Lji/h;", "s", "Lji/h;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutBuyOutVideoActivity extends AbsBiddingActivity {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isCanClickClose;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private ji.h binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(ConstraintLayout constraintLayout, BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        constraintLayout.setPadding(constraintLayout.getPaddingLeft(), ImmersionBar.getStatusBarHeight((Activity) biddingBuyOutBuyOutVideoActivity), constraintLayout.getPaddingRight(), constraintLayout.getPaddingBottom());
    }

    private final void f1() {
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
    public static final Unit g1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View it) {
        Intrinsics.h(it, "it");
        biddingBuyOutBuyOutVideoActivity.W();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        if (biddingBuyOutBuyOutVideoActivity.isCanClickClose) {
            biddingBuyOutBuyOutVideoActivity.k1();
        } else {
            oi.b.a.c(biddingBuyOutBuyOutVideoActivity, 3, "showAdInformation() --> setOnClickListener() --> 只有在最后10秒的时候才能点击", null, false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        biddingBuyOutBuyOutVideoActivity.d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        biddingBuyOutBuyOutVideoActivity.V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        biddingBuyOutBuyOutVideoActivity.d0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        biddingBuyOutBuyOutVideoActivity.N0(false);
        return Unit.f67061a;
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
        String str = i11 + "s";
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
    public void O0() {
        MemberTagView memberTagView;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        f1();
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.clAdEndLayout);
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new ti.g(0L, new Function1() { // from class: com.transsion.ad.bidding.video.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BiddingBuyOutBuyOutVideoActivity.g1(this.f42051a, (View) obj);
                }
            }, 1, null));
        }
        ji.h hVar = this.binding;
        if (hVar != null && (appCompatImageView2 = hVar.f66104i) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutBuyOutVideoActivity.h1(this.f42052a, view);
                }
            });
        }
        ji.h hVar2 = this.binding;
        if (hVar2 != null && (appCompatImageView = hVar2.f66103h) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BiddingBuyOutBuyOutVideoActivity.i1(this.f42053a, view);
                }
            });
        }
        ji.h hVar3 = this.binding;
        if (hVar3 == null || (memberTagView = hVar3.f66116u) == null) {
            return;
        }
        memberTagView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutBuyOutVideoActivity.j1(this.f42054a, view);
            }
        });
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

    public void k1() {
        if (!this.isCanClickClose) {
            oi.b.a.c(this, 3, "showCloseAdDialog() --> 只有在最后10秒的时候才能展示", null, false, 4, null);
        } else {
            N0(true);
            new BiddingCloseAdDialog().b0(new Function0() { // from class: com.transsion.ad.bidding.video.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BiddingBuyOutBuyOutVideoActivity.l1(this.f42057a);
                }
            }, new Function0() { // from class: com.transsion.ad.bidding.video.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BiddingBuyOutBuyOutVideoActivity.m1(this.f42058a);
                }
            }).c0(this, "CloseAdDialog");
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity
    public FrameLayout o0() {
        ji.h hVar = this.binding;
        if (hVar != null) {
            return hVar.f66101f;
        }
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        final ConstraintLayout constraintLayout;
        super.onCreate(savedInstanceState);
        ji.h hVar = this.binding;
        if (hVar == null || (constraintLayout = hVar.f66100e) == null) {
            return;
        }
        constraintLayout.post(new Runnable() { // from class: com.transsion.ad.bidding.video.e
            @Override // java.lang.Runnable
            public final void run() {
                BiddingBuyOutBuyOutVideoActivity.e1(constraintLayout, this);
            }
        });
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
