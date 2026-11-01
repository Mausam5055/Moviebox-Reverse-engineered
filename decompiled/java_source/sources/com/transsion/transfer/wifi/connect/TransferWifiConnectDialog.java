package com.transsion.transfer.wifi.connect;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.transfer.R$layout;
import com.transsion.transfer.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gv.g;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u00062\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR \u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "callback", "p0", "(Lkotlin/jvm/functions/Function0;)V", "Llv/a;", "wifiInfoModel", "q0", "(Llv/a;)V", "Lgv/g;", "c", "Lgv/g;", "bind", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Llv/a;", "mWifiInfoModel", "e", "Lkotlin/jvm/functions/Function0;", "mOnCloseClick", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferWifiConnectDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private g bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private lv.a mWifiInfoModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 mOnCloseClick;

    public TransferWifiConnectDialog() {
        super(R$layout.dialog_transfer_wifi_connect_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(TransferWifiConnectDialog transferWifiConnectDialog, View view) {
        Function0 function0 = transferWifiConnectDialog.mOnCloseClick;
        if (function0 != null) {
        }
        transferWifiConnectDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> onCreate() --> 连接弹窗", false, 2, null);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> onDismiss() --> 弹窗关闭", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView;
        Context context;
        AppCompatImageView appCompatImageView2;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(false);
        }
        g gVarA = g.a(view);
        this.bind = gVarA;
        if (gVarA != null && (appCompatImageView2 = gVarA.f64003b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.connect.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TransferWifiConnectDialog.o0(this.f55842a, view2);
                }
            });
        }
        g gVar = this.bind;
        if (gVar != null && (appCompatImageView = gVar.f64004c) != null && (context = getContext()) != null) {
            Glide.with(context).load2(Integer.valueOf(R$mipmap.ic_loading_transfer)).into(appCompatImageView);
        }
        g gVar2 = this.bind;
        if (gVar2 != null && (appCompatTextView2 = gVar2.f64006e) != null) {
            lv.a aVar = this.mWifiInfoModel;
            appCompatTextView2.setText(aVar != null ? aVar.p() : null);
        }
        String string = getResources().getString(R$string.transfer_wifi_connect_dialog_tip);
        lv.a aVar2 = this.mWifiInfoModel;
        String str = string + " " + (aVar2 != null ? aVar2.e() : null);
        g gVar3 = this.bind;
        if (gVar3 == null || (appCompatTextView = gVar3.f64005d) == null) {
            return;
        }
        appCompatTextView.setText(str);
    }

    public final void p0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.mOnCloseClick = callback;
    }

    public final void q0(lv.a wifiInfoModel) {
        this.mWifiInfoModel = wifiInfoModel;
    }
}
