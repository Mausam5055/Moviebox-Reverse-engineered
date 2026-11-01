package com.transsion.transfer.wifi.ui;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.AppCompatImageView;
import com.blankj.utilcode.util.a0;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.transfer.R$layout;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Llv/a;", "wifiInfoModel", "r0", "(Llv/a;)V", "Lgv/e;", "c", "Lgv/e;", "bind", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Llv/a;", "mWifiInfoModel", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShareMbApkDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private gv.e bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private lv.a mWifiInfoModel;

    /* JADX INFO: renamed from: com.transsion.transfer.wifi.ui.ShareMbApkDialog$onViewCreated$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.transfer.wifi.ui.ShareMbApkDialog$onViewCreated$1", f = "ShareMbApkDialog.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShareMbApkDialog.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0053  */
        /* JADX WARN: Instruction removed from duplicated block: B:20:0x0053, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Unit unit;
            ShapeableImageView shapeableImageView;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                QrCodeUtil qrCodeUtil = QrCodeUtil.f55907a;
                String strB = qrCodeUtil.b(ShareMbApkDialog.this.mWifiInfoModel);
                int iA = a0.a(240.0f);
                int iA2 = a0.a(240.0f);
                this.label = 1;
                obj = qrCodeUtil.f(strB, iA, iA2, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            Bitmap bitmap = (Bitmap) obj;
            if (bitmap == null) {
                ShareMbApkDialog shareMbApkDialog = ShareMbApkDialog.this;
                com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, shareMbApkDialog.getClassTag() + " --> createSuccess() --> syncEncodeQRCode() --> 创建二维码失败了", false, 2, null);
                uh.b.f76753a.e(shareMbApkDialog.getResources().getString(R$string.transfer_fail));
                shareMbApkDialog.dismissAllowingStateLoss();
            } else {
                gv.e eVar = ShareMbApkDialog.this.bind;
                if (eVar == null || (shapeableImageView = eVar.f63995c) == null) {
                    unit = null;
                } else {
                    shapeableImageView.setImageBitmap(bitmap);
                    unit = Unit.f67061a;
                }
                if (unit == null) {
                    ShareMbApkDialog shareMbApkDialog2 = ShareMbApkDialog.this;
                    com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, shareMbApkDialog2.getClassTag() + " --> createSuccess() --> syncEncodeQRCode() --> 创建二维码失败了", false, 2, null);
                    uh.b.f76753a.e(shareMbApkDialog2.getResources().getString(R$string.transfer_fail));
                    shareMbApkDialog2.dismissAllowingStateLoss();
                }
            }
            return Unit.f67061a;
        }
    }

    public ShareMbApkDialog() {
        super(R$layout.dialog_share_mb_apk_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(ShareMbApkDialog shareMbApkDialog, View view) {
        shareMbApkDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> onCreate() --> 分享弹窗", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
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
        this.bind = gv.e.a(view);
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
        kv.c.f68396a.n();
        gv.e eVar = this.bind;
        if (eVar == null || (appCompatImageView = eVar.f63994b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareMbApkDialog.q0(this.f55934a, view2);
            }
        });
    }

    public final void r0(lv.a wifiInfoModel) {
        this.mWifiInfoModel = wifiInfoModel;
    }
}
