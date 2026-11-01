package com.transsion.commercialization.task;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.RotateAnimation;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$style;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.commercialization.R$layout;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001c\u0018\u0000 V2\u00020\u0001:\u0001WB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u0019\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J!\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ0\u0010$\u001a\u00020\u00002!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00040\u001f¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u00002\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010&¢\u0006\u0004\b+\u0010)J\u0015\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J!\u00104\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u0001002\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020\u0004¢\u0006\u0004\b6\u0010\u0003R\u0018\u00109\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR&\u0010E\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010H\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010J\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u00108R\u0016\u0010L\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010GR\u0016\u0010N\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010GR\u0016\u0010Q\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001b\u0010U\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010\f¨\u0006X"}, d2 = {"Lcom/transsion/commercialization/task/AdInterceptDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "y0", "J0", "Q0", "R0", "C0", "", "B0", "()I", "P0", "z0", "O0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isFinish", "callback", "G0", "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/AdInterceptDialog;", "", CampaignEx.JSON_KEY_AD_MP, "N0", "(Ljava/lang/String;)Lcom/transsion/commercialization/task/AdInterceptDialog;", "genre", "I0", "", "isTask", "H0", "(Z)Lcom/transsion/commercialization/task/AdInterceptDialog;", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "F0", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/commercialization/task/AdInterceptDialog;", "E0", "c", "Ljava/lang/String;", "mGenre", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "Lkk/b;", "e", "Lkk/b;", "bind", "f", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "adObject", "g", "Lkotlin/jvm/functions/Function1;", "mCallback", "h", "Z", "isReward", "i", "memberPrice", "j", "isShowGrantedToast", CampaignEx.JSON_KEY_AD_K, "isAdLoading", "l", "I", "curChangeTimes", "m", "Lkotlin/Lazy;", "A0", "maxChangeTimes", "n", "a", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdInterceptDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mGenre;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager nativeManager;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private kk.b bind;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean adObject;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isReward;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String memberPrice;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isShowGrantedToast;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isAdLoading;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int curChangeTimes;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy maxChangeTimes;

    public static final class b implements zm.b {
        b() {
        }

        @Override // zm.b
        public void a() {
            com.transsion.commercialization.pslink.a.f43829a.a(AdInterceptDialog.this.getClassTag() + " --> startMemberPage() --> onFailed() --> 开通会员失败");
        }

        @Override // zm.b
        public void onSuccess() {
            com.transsion.commercialization.pslink.a.f43829a.a(AdInterceptDialog.this.getClassTag() + " --> startMemberPage() --> onSuccess() --> 开通会员成功，直接下载不需要做任务了");
            AdInterceptDialog.this.isReward = true;
            AdInterceptDialog.this.dismissAllowingStateLoss();
        }
    }

    public AdInterceptDialog() {
        super(R$layout.dialog_ad_intercept_layout);
        this.maxChangeTimes = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(AdInterceptDialog.D0(this.f43893a));
            }
        });
    }

    private final int A0() {
        return ((Number) this.maxChangeTimes.getValue()).intValue();
    }

    private final int B0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("DownloadInterceptDialogNativeScene");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("changeMax")) == null) {
            return 3;
        }
        return jsonElement.getAsInt();
    }

    private final void C0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new AdInterceptDialog$loadNativeAd$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int D0(AdInterceptDialog adInterceptDialog) {
        return adInterceptDialog.B0();
    }

    private final void J0() {
        ConstraintLayout constraintLayout;
        AppCompatImageView appCompatImageView;
        kk.b bVar = this.bind;
        if (bVar != null && (appCompatImageView = bVar.f66799e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AdInterceptDialog.K0(this.f43890a, view);
                }
            });
        }
        kk.b bVar2 = this.bind;
        if (bVar2 != null && (constraintLayout = bVar2.f66798d) != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AdInterceptDialog.L0(this.f43891a, view);
                }
            });
        }
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f43532a;
        kk.b bVar3 = this.bind;
        oVar.a(new View[]{bVar3 != null ? bVar3.f66810p : null, bVar3 != null ? bVar3.f66802h : null}, new View.OnClickListener() { // from class: com.transsion.commercialization.task.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdInterceptDialog.M0(this.f43892a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(AdInterceptDialog adInterceptDialog, View view) {
        adInterceptDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(AdInterceptDialog adInterceptDialog, View view) {
        com.transsion.commercialization.pslink.f.f43830a.e();
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.c(iMemberApi, adInterceptDialog.getActivity(), MemberSource.SOURCE_AD_DIALOG, adInterceptDialog.new b(), false, null, 24, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(AdInterceptDialog adInterceptDialog, View view) {
        if (adInterceptDialog.isAdLoading) {
            return;
        }
        com.transsion.commercialization.pslink.f.f43830a.d();
        int i11 = adInterceptDialog.curChangeTimes + 1;
        adInterceptDialog.curChangeTimes = i11;
        if (i11 < adInterceptDialog.A0()) {
            adInterceptDialog.Q0();
        } else {
            adInterceptDialog.isShowGrantedToast = false;
            adInterceptDialog.E0();
        }
    }

    private final void O0() {
        if (this.isShowGrantedToast) {
            uh.b.f76753a.g(R$layout.download_toast_layout, "+1 download granted", (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
        }
    }

    private final void P0() {
        AppCompatImageView appCompatImageView;
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(1000L);
        rotateAnimation.setRepeatCount(-1);
        kk.b bVar = this.bind;
        if (bVar == null || (appCompatImageView = bVar.f66802h) == null) {
            return;
        }
        appCompatImageView.startAnimation(rotateAnimation);
    }

    private final void Q0() {
        this.isAdLoading = true;
        P0();
        C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0() {
        this.isAdLoading = false;
        z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y0() {
        NativeWrapperAdView nativeWrapperAdView;
        Context context = getContext();
        if (context != null) {
            cy.b bVar = cy.b.f60940a;
            BiddingNativeManager biddingNativeManager = this.nativeManager;
            r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            kk.b bVar2 = this.bind;
            if (bVar2 == null || (nativeWrapperAdView = bVar2.f66804j) == null) {
                return;
            }
            nativeWrapperAdView.bindNativeView(this.nativeManager, rVarA, this.adObject);
        }
    }

    private final void z0() {
        AppCompatImageView appCompatImageView;
        kk.b bVar = this.bind;
        if (bVar == null || (appCompatImageView = bVar.f66802h) == null) {
            return;
        }
        appCompatImageView.clearAnimation();
    }

    public final void E0() {
        this.isReward = true;
        dismissAllowingStateLoss();
        O0();
    }

    public final AdInterceptDialog F0(BiddingNativeManager nativeManager, BiddingIntermediateMaterialBean maxEcpmObject) {
        this.nativeManager = nativeManager;
        this.adObject = maxEcpmObject;
        return this;
    }

    public final AdInterceptDialog G0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.mCallback = callback;
        return this;
    }

    public final AdInterceptDialog H0(boolean isTask) {
        this.isShowGrantedToast = !isTask;
        return this;
    }

    public final AdInterceptDialog I0(String genre) {
        this.mGenre = genre;
        return this;
    }

    public final AdInterceptDialog N0(String mp2) {
        this.memberPrice = mp2;
        return this;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
        com.transsion.commercialization.pslink.a.f43829a.a(getClassTag() + " --> onCreate() --> 观看广告弹窗");
        if (savedInstanceState == null || (string = savedInstanceState.getString("memberPrice")) == null) {
            return;
        }
        this.memberPrice = string;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        if (this.isReward) {
            Function1 function1 = this.mCallback;
            if (function1 != null) {
            }
        } else {
            Function1 function2 = this.mCallback;
            if (function2 != null) {
            }
        }
        z0();
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.isReward) {
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("memberPrice", this.memberPrice);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        ConstraintLayout constraintLayout;
        ConstraintLayout constraintLayout2;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        int iE = y.e() - a0.a(80.0f);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(iE, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        com.transsion.commercialization.pslink.f.f43830a.f();
        this.bind = kk.b.a(view);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null ? iMemberApi.B() : false) {
            kk.b bVar = this.bind;
            if (bVar != null && (constraintLayout = bVar.f66798d) != null) {
                constraintLayout.setVisibility(0);
            }
        } else {
            kk.b bVar2 = this.bind;
            if (bVar2 != null && (constraintLayout2 = bVar2.f66798d) != null) {
                constraintLayout2.setVisibility(8);
            }
        }
        J0();
        y0();
    }
}
