package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabPwdDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "callback", "r0", "(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/LabPwdDialog;", "", "c", "Ljava/lang/String;", "SALT", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "PASSWORD_MD5", "e", "Lkotlin/jvm/functions/Function0;", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LabPwdDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final String SALT;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final String PASSWORD_MD5;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 callback;

    public static final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ fw.a0 f56803a;

        public b(fw.a0 a0Var) {
            this.f56803a = a0Var;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            Editable text = this.f56803a.f62577d.getText();
            if (text == null || text.length() == 0) {
                this.f56803a.f62578e.setErrorEnabled(false);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public LabPwdDialog() {
        super(R$layout.dialog_lab_pwd);
        this.SALT = "-321";
        this.PASSWORD_MD5 = "031A68C3912D796E235A72EE0BF89C16";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(LabPwdDialog labPwdDialog, View view) {
        labPwdDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(fw.a0 a0Var, LabPwdDialog labPwdDialog, View view) {
        String lowerCase = a0Var.f62577d.getText().toString().toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (!com.blankj.utilcode.util.b0.b(com.blankj.utilcode.util.l.b(lowerCase + labPwdDialog.SALT), labPwdDialog.PASSWORD_MD5)) {
            a0Var.f62578e.setErrorEnabled(true);
            a0Var.f62578e.setError("wrong password");
            return;
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putLong("lab_enter_password_time", System.currentTimeMillis());
        Function0 function0 = labPwdDialog.callback;
        if (function0 != null) {
            function0.invoke();
        }
        labPwdDialog.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final fw.a0 a0VarA = fw.a0.a(view);
        Intrinsics.g(a0VarA, "bind(...)");
        a0VarA.f62578e.setHelperText("input password");
        a0VarA.f62575b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabPwdDialog.p0(this.f56826a, view2);
            }
        });
        a0VarA.f62576c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabPwdDialog.q0(a0VarA, this, view2);
            }
        });
        a0VarA.f62578e.setBoxBackgroundColor(0);
        EditText etPwd = a0VarA.f62577d;
        Intrinsics.g(etPwd, "etPwd");
        etPwd.addTextChangedListener(new b(a0VarA));
    }

    public final LabPwdDialog r0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.callback = callback;
        return this;
    }
}
