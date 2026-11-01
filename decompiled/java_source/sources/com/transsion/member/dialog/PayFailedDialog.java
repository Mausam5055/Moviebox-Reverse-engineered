package com.transsion.member.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0007\u0018\u0000 02\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0014\u0010\u0011J\u001b\u0010\u0017\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015¢\u0006\u0004\b\u0019\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010#R\u0018\u0010*\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010#R\u001e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,¨\u00062"}, d2 = {"Lcom/transsion/member/dialog/PayFailedDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "", MimeTypes.BASE_TYPE_TEXT, "y0", "(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;", "u0", "x0", "t0", "Lkotlin/Function0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "w0", "(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/PayFailedDialog;", "v0", "Lwm/m;", "c", "Lwm/m;", "bind", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "closeVisible", "e", "Ljava/lang/String;", CampaignEx.JSON_KEY_TITLE, "f", "content", "g", "payBtnText", "h", "cancelBtnText", "i", "Lkotlin/jvm/functions/Function0;", "onPayClick", "j", "onCancelClick", CampaignEx.JSON_KEY_AD_K, "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PayFailedDialog extends BaseDialog {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f46502l = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private wm.m bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean closeVisible;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String title;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String content;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String payBtnText;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String cancelBtnText;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function0 onPayClick;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function0 onCancelClick;

    /* JADX INFO: renamed from: com.transsion.member.dialog.PayFailedDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PayFailedDialog a() {
            return new PayFailedDialog();
        }
    }

    public PayFailedDialog() {
        super(R$layout.dialog_pay_failed_dialog);
        this.closeVisible = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(PayFailedDialog payFailedDialog, View view) {
        payFailedDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(PayFailedDialog payFailedDialog, View view) {
        payFailedDialog.dismissAllowingStateLoss();
        Function0 function0 = payFailedDialog.onPayClick;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(PayFailedDialog payFailedDialog, View view) {
        payFailedDialog.dismissAllowingStateLoss();
        Function0 function0 = payFailedDialog.onCancelClick;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.bind = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(gk.b.a(280), gk.b.a(234));
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(true);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCanceledOnTouchOutside(false);
        }
        wm.m mVarA = wm.m.a(view);
        this.bind = mVarA;
        if (mVarA != null) {
            ImageView ivClose = mVarA.f77813b;
            Intrinsics.g(ivClose, "ivClose");
            ivClose.setVisibility(this.closeVisible ? 0 : 8);
            mVarA.f77813b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PayFailedDialog.q0(this.f46524a, view2);
                }
            });
            String str = this.title;
            if (str != null) {
                mVarA.f77817f.setText(str);
            }
            String str2 = this.content;
            if (str2 != null) {
                mVarA.f77816e.setText(str2);
            }
            String str3 = this.payBtnText;
            if (str3 != null) {
                mVarA.f77814c.setText(str3);
            }
            String str4 = this.cancelBtnText;
            if (str4 != null) {
                mVarA.f77815d.setText(str4);
            }
            mVarA.f77814c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PayFailedDialog.r0(this.f46526a, view2);
                }
            });
            mVarA.f77815d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PayFailedDialog.s0(this.f46528a, view2);
                }
            });
        }
    }

    public final PayFailedDialog t0(String text) {
        TextView textView;
        this.cancelBtnText = text;
        wm.m mVar = this.bind;
        if (mVar != null && (textView = mVar.f77815d) != null) {
            textView.setText(text);
        }
        return this;
    }

    public final PayFailedDialog u0(String text) {
        TextView textView;
        this.content = text;
        wm.m mVar = this.bind;
        if (mVar != null && (textView = mVar.f77816e) != null) {
            textView.setText(text);
        }
        return this;
    }

    public final PayFailedDialog v0(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.onCancelClick = listener;
        return this;
    }

    public final PayFailedDialog w0(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.onPayClick = listener;
        return this;
    }

    public final PayFailedDialog x0(String text) {
        TextView textView;
        this.payBtnText = text;
        wm.m mVar = this.bind;
        if (mVar != null && (textView = mVar.f77814c) != null) {
            textView.setText(text);
        }
        return this;
    }

    public final PayFailedDialog y0(String text) {
        TextView textView;
        this.title = text;
        wm.m mVar = this.bind;
        if (mVar != null && (textView = mVar.f77817f) != null) {
            textView.setText(text);
        }
        return this;
    }
}
