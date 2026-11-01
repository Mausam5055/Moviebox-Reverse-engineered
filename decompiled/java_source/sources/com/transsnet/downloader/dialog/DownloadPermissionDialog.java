package com.transsnet.downloader.dialog;

import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "p0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadPermissionDialog extends BaseDialog {
    public DownloadPermissionDialog() {
        super(R$layout.dialog_download_permission_tips);
    }

    private final void p0(View view) {
        py.i iVarA = py.i.a(view);
        Intrinsics.g(iVarA, "bind(...)");
        iVarA.f72753b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DownloadPermissionDialog.q0(this.f58747a, view2);
            }
        });
        iVarA.f72755d.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DownloadPermissionDialog.r0(this.f58748a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(DownloadPermissionDialog downloadPermissionDialog, View view) {
        downloadPermissionDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(DownloadPermissionDialog downloadPermissionDialog, View view) {
        com.transsnet.downloader.viewmodel.a0.f60085a.x();
        downloadPermissionDialog.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.NormalDialogTheme);
        setCancelable(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        p0(view);
    }
}
