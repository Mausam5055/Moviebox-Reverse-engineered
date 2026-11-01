package com.transsion.member.premium;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.R$layout;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.view.MemberLayoutView;
import com.transsion.memberapi.MemberSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\f\u0010\bJ\u0017\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000e\u0010\bJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001c¨\u0006 "}, d2 = {"Lcom/transsion/member/premium/PremiumHalfScreenDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "traceId", "", "w0", "(Ljava/lang/String;)V", "sceneId", "u0", "subjectId", "v0", "pageName", "t0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lbk/g;", "c", "Lbk/g;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "f", "g", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PremiumHalfScreenDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private bk.g binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    public PremiumHalfScreenDialog() {
        super(R$layout.premium_half_screen_dialog_layout);
        this.sceneId = "";
        this.traceId = "";
        this.subjectId = "";
        this.pageName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(PremiumHalfScreenDialog premiumHalfScreenDialog) {
        premiumHalfScreenDialog.dismissAllowingStateLoss();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(PremiumHalfScreenDialog premiumHalfScreenDialog) {
        premiumHalfScreenDialog.dismissAllowingStateLoss();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(PremiumHalfScreenDialog premiumHalfScreenDialog, View view) {
        premiumHalfScreenDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        View view2;
        FrameLayout frameLayout;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window2 = dialog3.getWindow()) != null) {
            window2.setDimAmount(0.0f);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null && (window = dialog4.getWindow()) != null) {
            window.setLayout(-1, -1);
        }
        this.binding = bk.g.a(view);
        if (getContext() != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            MemberLayoutView memberLayoutView = new MemberLayoutView(contextRequireContext, null, 0, 6, null);
            String str = this.pageName;
            if (str == null) {
                str = "";
            }
            memberLayoutView.setPageName(str);
            String str2 = this.traceId;
            if (str2 == null) {
                str2 = "";
            }
            memberLayoutView.setTraceId(str2);
            String str3 = this.sceneId;
            if (str3 == null) {
                str3 = "";
            }
            memberLayoutView.setSceneId(str3);
            String str4 = this.subjectId;
            memberLayoutView.setSubjectId(str4 != null ? str4 : "");
            memberLayoutView.setScreenState(0);
            memberLayoutView.init(new Function0() { // from class: com.transsion.member.premium.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PremiumHalfScreenDialog.q0(this.f46642a);
                }
            }, new Function0() { // from class: com.transsion.member.premium.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PremiumHalfScreenDialog.r0(this.f46643a);
                }
            }, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, null);
            bk.g gVar = this.binding;
            if (gVar != null && (frameLayout = gVar.f16610c) != null) {
                frameLayout.addView(memberLayoutView);
            }
        }
        bk.g gVar2 = this.binding;
        if (gVar2 == null || (view2 = gVar2.f16609b) == null) {
            return;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.premium.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PremiumHalfScreenDialog.s0(this.f46644a, view3);
            }
        });
    }

    public final void t0(String pageName) {
        this.pageName = pageName;
    }

    public final void u0(String sceneId) {
        this.sceneId = sceneId;
    }

    public final void v0(String subjectId) {
        this.subjectId = subjectId;
    }

    public final void w0(String traceId) {
        this.traceId = traceId;
    }
}
