package com.transsnet.downloader.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ7\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015¢\u0006\u0004\b\u0017\u0010\u0018R \u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/transsnet/downloader/dialog/ClearHistoryDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "btnType", "Lkotlin/Function0;", "callback", "r0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "c", "Lkotlin/jvm/functions/Function0;", "mCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "Lpy/p;", "e", "Lpy/p;", "mViewBanding", "f", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ClearHistoryDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 mCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String btnType;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private py.p mViewBanding;

    public ClearHistoryDialog() {
        super(R$layout.download_clear_history_dialog_layout);
        this.btnType = "clear";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(ClearHistoryDialog clearHistoryDialog, View view) {
        clearHistoryDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(ClearHistoryDialog clearHistoryDialog, View view) {
        Function0 function0 = clearHistoryDialog.mCallback;
        if (function0 != null) {
        }
        clearHistoryDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
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
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        String string;
        AppCompatTextView appCompatTextView3;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        py.p pVarA = py.p.a(view);
        this.mViewBanding = pVarA;
        if (pVarA != null && (appCompatTextView3 = pVarA.f72874b) != null) {
            appCompatTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ClearHistoryDialog.p0(this.f58724a, view2);
                }
            });
        }
        py.p pVar = this.mViewBanding;
        if (pVar != null && (appCompatTextView2 = pVar.f72875c) != null) {
            String str = this.btnType;
            if (Intrinsics.c(str, "clear_all")) {
                string = getString(R$string.clear_all_history);
            } else {
                string = Intrinsics.c(str, RequestParameters.SUBRESOURCE_DELETE) ? getString(R$string.delete) : getString(R$string.clear);
            }
            appCompatTextView2.setText(string);
        }
        py.p pVar2 = this.mViewBanding;
        if (pVar2 == null || (appCompatTextView = pVar2.f72875c) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ClearHistoryDialog.q0(this.f58726a, view2);
            }
        });
    }

    public final void r0(FragmentManager manager, String tag, String btnType, Function0 callback) {
        Intrinsics.h(manager, "manager");
        Intrinsics.h(btnType, "btnType");
        Intrinsics.h(callback, "callback");
        this.btnType = btnType;
        this.mCallback = callback;
        show(manager, tag);
    }
}
