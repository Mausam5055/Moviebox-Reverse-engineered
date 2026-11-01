package com.transsion.version.update.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.i;
import com.google.android.material.bottomsheet.c;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.push.PushConstants;
import com.transsion.version.update.NoticeConfig;
import com.transsion.version.update.R$layout;
import com.transsion.version.update.R$string;
import com.transsion.version.update.R$style;
import com.transsion.version.update.RemoteVersionInfo;
import com.transsion.version.update.UpdateManager;
import com.transsion.version.update.dialog.UpdateDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ex.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 62\u00020\u0001:\u00017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\f\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\nH\u0016¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00105\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00068"}, d2 = {"Lcom/transsion/version/update/dialog/UpdateDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lkotlin/Function1;", "", "callback", "t0", "(Lkotlin/jvm/functions/Function1;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Lcom/transsion/version/update/RemoteVersionInfo;", "versionInfo", "manual", "u0", "(Lcom/transsion/version/update/RemoteVersionInfo;Z)V", "b0", "()Z", "Lex/a;", "c", "Lex/a;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Boolean;", "e", "Lkotlin/jvm/functions/Function1;", "onUpdateClick", "f", "Lcom/transsion/version/update/RemoteVersionInfo;", "remoteVersionInfo", "g", "Ljava/lang/String;", "getUpdateVersionName", "()Ljava/lang/String;", "setUpdateVersionName", "(Ljava/lang/String;)V", "updateVersionName", "h", "a", "Update_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UpdateDialog extends BaseDialog {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private a viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Boolean manual;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function1 onUpdateClick;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private RemoteVersionInfo remoteVersionInfo;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String updateVersionName;

    /* JADX INFO: renamed from: com.transsion.version.update.dialog.UpdateDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UpdateDialog a(RemoteVersionInfo remoteVersionInfo, boolean z10, Function1 callback) {
            Intrinsics.h(remoteVersionInfo, "remoteVersionInfo");
            Intrinsics.h(callback, "callback");
            UpdateDialog updateDialog = new UpdateDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("remoteVersionInfo", remoteVersionInfo);
            bundle.putBoolean("key_manual", z10);
            updateDialog.setArguments(bundle);
            updateDialog.u0(remoteVersionInfo, z10);
            updateDialog.t0(callback);
            return updateDialog;
        }
    }

    public UpdateDialog() {
        super(R$layout.dialog_update_layout_white_theme);
        this.manual = Boolean.FALSE;
        this.updateVersionName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(UpdateDialog updateDialog, DialogInterface dialogInterface) {
        lg.a.C0828a.f(lg.a.f68839a, "update", "manual=" + updateDialog.manual + " onShow Listener  " + updateDialog, false, 4, null);
        if (Intrinsics.c(updateDialog.manual, Boolean.TRUE)) {
            return;
        }
        UpdateManager.f57518f.a().h(updateDialog.updateVersionName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(UpdateDialog updateDialog, View view) {
        updateDialog.dismissAllowingStateLoss();
        Function1 function1 = updateDialog.onUpdateClick;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(boolean z10, UpdateDialog updateDialog, View view) {
        if (!z10) {
            updateDialog.dismissAllowingStateLoss();
        }
        Function1 function1 = updateDialog.onUpdateClick;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    @Override // com.transsion.baseui.dialog.BaseDialog
    public boolean b0() {
        if (Intrinsics.c(this.manual, Boolean.TRUE)) {
            return true;
        }
        lg.a.C0828a.f(lg.a.f68839a, "update", "被弹窗拦截策略拦截 " + this, false, 4, null);
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        c cVar = new c(contextRequireContext, getTheme());
        cVar.setCanceledOnTouchOutside(false);
        Window window = cVar.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = gk.a.f63625a.a(contextRequireContext);
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        cVar.setOnShowListener(new DialogInterface.OnShowListener() { // from class: fx.c
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                UpdateDialog.q0(this.f63037a, dialogInterface);
            }
        });
        return cVar;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        ImageView imageView;
        ImageView imageView2;
        TextView textView;
        TextView textView2;
        TextView textView3;
        a aVar;
        TextView textView4;
        a aVar2;
        TextView textView5;
        TextView textView6;
        NoticeConfig noticeConfig;
        NoticeConfig noticeConfig2;
        NoticeConfig noticeConfig3;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = a.a(view);
        RemoteVersionInfo remoteVersionInfo = this.remoteVersionInfo;
        final boolean z10 = remoteVersionInfo != null && remoteVersionInfo.getForceUpdate();
        RemoteVersionInfo remoteVersionInfo2 = this.remoteVersionInfo;
        String updateTitle = (remoteVersionInfo2 == null || (noticeConfig3 = remoteVersionInfo2.getNoticeConfig()) == null) ? null : noticeConfig3.getUpdateTitle();
        RemoteVersionInfo remoteVersionInfo3 = this.remoteVersionInfo;
        String updateDesc = (remoteVersionInfo3 == null || (noticeConfig2 = remoteVersionInfo3.getNoticeConfig()) == null) ? null : noticeConfig2.getUpdateDesc();
        RemoteVersionInfo remoteVersionInfo4 = this.remoteVersionInfo;
        i.f(remoteVersionInfo4 != null ? remoteVersionInfo4.getInstallPkgSize() : 0L, 1048576);
        RemoteVersionInfo remoteVersionInfo5 = this.remoteVersionInfo;
        if (remoteVersionInfo5 != null && (noticeConfig = remoteVersionInfo5.getNoticeConfig()) != null) {
            noticeConfig.getUpdateVersionCode();
        }
        Bundle arguments = getArguments();
        Boolean boolValueOf = arguments != null ? Boolean.valueOf(arguments.getBoolean("key_manual")) : null;
        this.manual = boolValueOf;
        lg.a.C0828a.f(lg.a.f68839a, "update", "manual=" + boolValueOf + " onViewCreated  " + this, false, 4, null);
        Context context = getContext();
        if (context != null) {
            try {
                Drawable applicationIcon = context.getPackageManager().getApplicationIcon(context.getPackageName());
                Intrinsics.g(applicationIcon, "getApplicationIcon(...)");
                a aVar3 = this.viewBinding;
                if (aVar3 != null && (imageView2 = aVar3.f62037d) != null) {
                    imageView2.setImageDrawable(applicationIcon);
                    Unit unit = Unit.f67061a;
                }
            } catch (Exception unused) {
                a aVar4 = this.viewBinding;
                if (aVar4 != null && (imageView = aVar4.f62037d) != null) {
                    imageView.setVisibility(8);
                    Unit unit2 = Unit.f67061a;
                }
            }
        }
        a aVar5 = this.viewBinding;
        if (aVar5 != null && (textView6 = aVar5.f62044k) != null) {
            Context context2 = getContext();
            textView6.setText(context2 != null ? context2.getString(R$string.version, this.updateVersionName) : null);
        }
        if (updateTitle != null && updateTitle.length() != 0 && (aVar2 = this.viewBinding) != null && (textView5 = aVar2.f62043j) != null) {
            textView5.setText(updateTitle);
        }
        if (updateDesc != null && updateDesc.length() != 0 && (aVar = this.viewBinding) != null && (textView4 = aVar.f62040g) != null) {
            textView4.setText(updateDesc);
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(!z10);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(true ^ z10);
        }
        a aVar6 = this.viewBinding;
        if (aVar6 != null && (textView3 = aVar6.f62035b) != null) {
            textView3.setVisibility(z10 ? 8 : 0);
        }
        a aVar7 = this.viewBinding;
        if (aVar7 != null && (textView2 = aVar7.f62035b) != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: fx.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UpdateDialog.r0(this.f63034a, view2);
                }
            });
        }
        a aVar8 = this.viewBinding;
        if (aVar8 == null || (textView = aVar8.f62036c) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: fx.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdateDialog.s0(z10, this, view2);
            }
        });
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        super.show(manager, tag);
    }

    public final void t0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.onUpdateClick = callback;
    }

    public final void u0(RemoteVersionInfo versionInfo, boolean manual) {
        String updateVersionName;
        NoticeConfig noticeConfig;
        this.remoteVersionInfo = versionInfo;
        if (versionInfo == null || (noticeConfig = versionInfo.getNoticeConfig()) == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        this.updateVersionName = updateVersionName;
        this.manual = Boolean.valueOf(manual);
    }
}
