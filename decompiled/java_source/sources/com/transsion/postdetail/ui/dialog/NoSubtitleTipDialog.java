package com.transsion.postdetail.ui.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function0;", "mCallback", "Lso/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lso/h;", "bind", "", "e", "Z", "isSelect", "f", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoSubtitleTipDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 mCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private so.h bind;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isSelect;

    public NoSubtitleTipDialog() {
        super(R$layout.dialog_no_subtitle_tip_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(NoSubtitleTipDialog noSubtitleTipDialog, View view) {
        noSubtitleTipDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(NoSubtitleTipDialog noSubtitleTipDialog, View view) {
        noSubtitleTipDialog.dismissAllowingStateLoss();
        Function0 function0 = noSubtitleTipDialog.mCallback;
        if (function0 != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(NoSubtitleTipDialog noSubtitleTipDialog, View view) {
        ImageView imageView;
        so.h hVar = noSubtitleTipDialog.bind;
        if (hVar != null && (imageView = hVar.f75536b) != null) {
            imageView.setSelected(!noSubtitleTipDialog.isSelect);
        }
        noSubtitleTipDialog.isSelect = !noSubtitleTipDialog.isSelect;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
        setStyle(0, R$style.NormalDialogThemeTrans);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isSelect) {
            com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("no_subtitle_tip_again", false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("no_subtitle_tip_again", true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        LinearLayoutCompat linearLayoutCompat;
        TextView textView;
        TextView textView2;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.bind = so.h.a(view);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-2, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        so.h hVar = this.bind;
        if (hVar != null && (textView2 = hVar.f75538d) != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    NoSubtitleTipDialog.q0(this.f49453a, view2);
                }
            });
        }
        so.h hVar2 = this.bind;
        if (hVar2 != null && (textView = hVar2.f75539e) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    NoSubtitleTipDialog.r0(this.f49454a, view2);
                }
            });
        }
        so.h hVar3 = this.bind;
        if (hVar3 == null || (linearLayoutCompat = hVar3.f75537c) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NoSubtitleTipDialog.s0(this.f49455a, view2);
            }
        });
    }
}
