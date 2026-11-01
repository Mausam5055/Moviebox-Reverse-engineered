package com.transsion.transfer.wifi.ui;

import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.transfer.R$layout;
import com.transsion.transfer.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ0\u0010\u0013\u001a\u00020\u00062!\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00060\r¢\u0006\u0004\b\u0013\u0010\u0014R3\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/transfer/wifi/ui/TransferDisconnectTipsDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "ok", "call", "r0", "(Lkotlin/jvm/functions/Function1;)V", "c", "Lkotlin/jvm/functions/Function1;", "callback", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferDisconnectTipsDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function1 callback;

    public TransferDisconnectTipsDialog() {
        super(R$layout.dialog_transfer_disconnect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(TransferDisconnectTipsDialog transferDisconnectTipsDialog, View view) {
        transferDisconnectTipsDialog.dismissAllowingStateLoss();
        Function1 function1 = transferDisconnectTipsDialog.callback;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(TransferDisconnectTipsDialog transferDisconnectTipsDialog, View view) {
        transferDisconnectTipsDialog.dismissAllowingStateLoss();
        Function1 function1 = transferDisconnectTipsDialog.callback;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        gv.f fVarA = gv.f.a(view);
        Intrinsics.g(fVarA, "bind(...)");
        fVarA.f63997b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TransferDisconnectTipsDialog.p0(this.f55935a, view2);
            }
        });
        fVarA.f63998c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TransferDisconnectTipsDialog.q0(this.f55936a, view2);
            }
        });
    }

    public final void r0(Function1 call) {
        Intrinsics.h(call, "call");
        this.callback = call;
    }
}
