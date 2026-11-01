package com.transsion.ugcvideodetail.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseViewBindingDialog;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingFragment;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingSubtitleFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 G2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\u0004J\r\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR0\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R0\u0010*\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010 \u001a\u0004\b(\u0010\"\"\u0004\b)\u0010$R*\u00102\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R*\u00106\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010-\u001a\u0004\b4\u0010/\"\u0004\b5\u00101R0\u0010;\u001a\u0010\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010 \u001a\u0004\b9\u0010\"\"\u0004\b:\u0010$R0\u0010@\u001a\u0010\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010 \u001a\u0004\b>\u0010\"\"\u0004\b?\u0010$R.\u0010F\u001a\u001c\u0012\u0004\u0012\u00020B\u0012\u0006\u0012\u0004\u0018\u00010C\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00020A8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010E¨\u0006I"}, d2 = {"Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;", "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;", "Lqv/c;", "<init>", "()V", "", "q0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", TmcConstants.NAVIGATION_ON_START, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "w0", "x0", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;", "settingFragment", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;", "e", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;", "subtitleFragment", "Lkotlin/Function1;", "", "f", "Lkotlin/jvm/functions/Function1;", "getOnSpeedSelected", "()Lkotlin/jvm/functions/Function1;", "u0", "(Lkotlin/jvm/functions/Function1;)V", "onSpeedSelected", "", "g", "getOnQualitySelected", "t0", "onQualitySelected", "Lkotlin/Function0;", "h", "Lkotlin/jvm/functions/Function0;", "getOnSubtitleClick", "()Lkotlin/jvm/functions/Function0;", "setOnSubtitleClick", "(Lkotlin/jvm/functions/Function0;)V", "onSubtitleClick", "i", "getOnCleanModeClick", "s0", "onCleanModeClick", "", "j", "getOnAutoplayChanged", "r0", "onAutoplayChanged", "Leu/a;", CampaignEx.JSON_KEY_AD_K, "getOnSubtitleSelected", "v0", "onSubtitleSelected", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "n0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", "l", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoSettingDialog extends BaseViewBindingDialog<qv.c> {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideoSettingFragment settingFragment;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideoSettingSubtitleFragment subtitleFragment;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 onSpeedSelected;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function1 onQualitySelected;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Function0 onSubtitleClick;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function0 onCleanModeClick;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function1 onAutoplayChanged;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Function1 onSubtitleSelected;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.dialog.UGCImmVideoSettingDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoSettingDialog a() {
            return new UGCImmVideoSettingDialog();
        }
    }

    private final void q0() {
        hj.i.f64505a.r("/ugc_video/immersive_detail", MapsKt.f(TuplesKt.a("dialog_name", "half_screen")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(UGCImmVideoSettingDialog uGCImmVideoSettingDialog) {
        uGCImmVideoSettingDialog.dismissAllowingStateLoss();
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.dialog.BaseViewBindingDialog
    public Function3 n0() {
        return UGCImmVideoSettingDialog$bindingInflater$1.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        q0();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.0f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            attributes.height = dk.a.b(470);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Dialog dialog;
        Window window;
        super.onStart();
        if (Build.VERSION.SDK_INT < 29 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setStatusBarContrastEnforced(false);
        window.setNavigationBarContrastEnforced(false);
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState == null) {
            w0();
        }
    }

    public final void r0(Function1 function1) {
        this.onAutoplayChanged = function1;
    }

    public final void s0(Function0 function0) {
        this.onCleanModeClick = function0;
    }

    public final void t0(Function1 function1) {
        this.onQualitySelected = function1;
    }

    public final void u0(Function1 function1) {
        this.onSpeedSelected = function1;
    }

    public final void v0(Function1 function1) {
        this.onSubtitleSelected = function1;
    }

    public final void w0() {
        FrameLayout frameLayout;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        UGCImmVideoSettingSubtitleFragment uGCImmVideoSettingSubtitleFragment = this.subtitleFragment;
        if (uGCImmVideoSettingSubtitleFragment != null) {
            wVarP.p(uGCImmVideoSettingSubtitleFragment);
        }
        Fragment fragmentK0 = getChildFragmentManager().k0("UGCImmVideoSettingFragment");
        Integer numValueOf = null;
        UGCImmVideoSettingFragment uGCImmVideoSettingFragment = fragmentK0 instanceof UGCImmVideoSettingFragment ? (UGCImmVideoSettingFragment) fragmentK0 : null;
        this.settingFragment = uGCImmVideoSettingFragment;
        if (uGCImmVideoSettingFragment == null) {
            UGCImmVideoSettingFragment uGCImmVideoSettingFragment2 = new UGCImmVideoSettingFragment();
            uGCImmVideoSettingFragment2.H0(this.onSpeedSelected);
            uGCImmVideoSettingFragment2.G0(this.onQualitySelected);
            uGCImmVideoSettingFragment2.I0(this.onSubtitleClick);
            uGCImmVideoSettingFragment2.F0(this.onCleanModeClick);
            uGCImmVideoSettingFragment2.E0(this.onAutoplayChanged);
            this.settingFragment = uGCImmVideoSettingFragment2;
            qv.c cVar = (qv.c) getViewBinding();
            if (cVar != null && (frameLayout = cVar.f73717b) != null) {
                numValueOf = Integer.valueOf(frameLayout.getId());
            }
            if (numValueOf != null && numValueOf.intValue() != 0) {
                int iIntValue = numValueOf.intValue();
                UGCImmVideoSettingFragment uGCImmVideoSettingFragment3 = this.settingFragment;
                Intrinsics.e(uGCImmVideoSettingFragment3);
                wVarP.c(iIntValue, uGCImmVideoSettingFragment3, "UGCImmVideoSettingFragment");
            }
        } else {
            Intrinsics.e(uGCImmVideoSettingFragment);
            wVarP.y(uGCImmVideoSettingFragment);
        }
        wVarP.i();
    }

    public final void x0() {
        FrameLayout frameLayout;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        UGCImmVideoSettingFragment uGCImmVideoSettingFragment = this.settingFragment;
        if (uGCImmVideoSettingFragment != null) {
            wVarP.p(uGCImmVideoSettingFragment);
        }
        Fragment fragmentK0 = getChildFragmentManager().k0("UGCImmVideoSettingSubtitleFragment");
        Integer numValueOf = null;
        UGCImmVideoSettingSubtitleFragment uGCImmVideoSettingSubtitleFragment = fragmentK0 instanceof UGCImmVideoSettingSubtitleFragment ? (UGCImmVideoSettingSubtitleFragment) fragmentK0 : null;
        this.subtitleFragment = uGCImmVideoSettingSubtitleFragment;
        if (uGCImmVideoSettingSubtitleFragment == null) {
            UGCImmVideoSettingSubtitleFragment uGCImmVideoSettingSubtitleFragment2 = new UGCImmVideoSettingSubtitleFragment();
            uGCImmVideoSettingSubtitleFragment2.g0(this.onSubtitleSelected);
            uGCImmVideoSettingSubtitleFragment2.f0(new Function0() { // from class: com.transsion.ugcvideodetail.dialog.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UGCImmVideoSettingDialog.y0(this.f56047a);
                }
            });
            this.subtitleFragment = uGCImmVideoSettingSubtitleFragment2;
            qv.c cVar = (qv.c) getViewBinding();
            if (cVar != null && (frameLayout = cVar.f73717b) != null) {
                numValueOf = Integer.valueOf(frameLayout.getId());
            }
            if (numValueOf != null && numValueOf.intValue() != 0) {
                int iIntValue = numValueOf.intValue();
                UGCImmVideoSettingSubtitleFragment uGCImmVideoSettingSubtitleFragment3 = this.subtitleFragment;
                Intrinsics.e(uGCImmVideoSettingSubtitleFragment3);
                wVarP.c(iIntValue, uGCImmVideoSettingSubtitleFragment3, "UGCImmVideoSettingSubtitleFragment");
            }
        } else {
            Intrinsics.e(uGCImmVideoSettingSubtitleFragment);
            wVarP.y(uGCImmVideoSettingSubtitleFragment);
        }
        wVarP.i();
    }
}
