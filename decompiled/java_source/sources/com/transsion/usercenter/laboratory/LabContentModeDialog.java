package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabContentModeDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lfw/t;", "c", "Lfw/t;", "viewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isUGCMode", "e", "isResetMode", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabContentModeDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private fw.t viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isUGCMode;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isResetMode;

    public LabContentModeDialog() {
        super(R$layout.dialog_lab_content_mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(LabContentModeDialog labContentModeDialog, View view) {
        labContentModeDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(LabContentModeDialog labContentModeDialog, View view) {
        if (labContentModeDialog.isResetMode) {
            uh.b.f76753a.e("当前媒体播放模式已使用线上配置");
            com.transsion.baselib.report.launch.b.f43370a.b().remove("key_or_content_mode_local");
        } else {
            uh.b.f76753a.e("当前媒体播放模式是 playMode = " + (labContentModeDialog.isUGCMode ? "UGCVideo" : "Subject"));
            ak.g.f639a.e(labContentModeDialog.isUGCMode);
            com.transsion.baselib.report.launch.b.f43370a.b().putInt("key_or_content_mode_local", labContentModeDialog.isUGCMode ? 1 : 0);
        }
        labContentModeDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(LabContentModeDialog labContentModeDialog, RadioGroup radioGroup, int i11) {
        if (i11 == R$id.radioButtonSubject) {
            labContentModeDialog.isUGCMode = false;
            labContentModeDialog.isResetMode = false;
        } else if (i11 == R$id.radioButtonUGCVideo) {
            labContentModeDialog.isUGCMode = true;
            labContentModeDialog.isResetMode = false;
        } else if (i11 == R$id.radioButtonReset) {
            labContentModeDialog.isUGCMode = false;
            labContentModeDialog.isResetMode = true;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        RadioGroup radioGroup;
        RadioGroup radioGroup2;
        RadioGroup radioGroup3;
        Button button;
        Button button2;
        RadioGroup radioGroup4;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = fw.t.a(view);
        if (com.transsion.baselib.report.launch.b.f43370a.b().getInt("key_or_content_mode_local", -1) == -1) {
            fw.t tVar = this.viewBinding;
            if (tVar != null && (radioGroup4 = tVar.f62909g) != null) {
                radioGroup4.check(R$id.radioButtonReset);
            }
            this.isResetMode = true;
            this.isUGCMode = false;
        } else if (ak.g.f639a.b()) {
            fw.t tVar2 = this.viewBinding;
            if (tVar2 != null && (radioGroup2 = tVar2.f62909g) != null) {
                radioGroup2.check(R$id.radioButtonUGCVideo);
            }
            this.isUGCMode = true;
            this.isResetMode = false;
        } else {
            fw.t tVar3 = this.viewBinding;
            if (tVar3 != null && (radioGroup = tVar3.f62909g) != null) {
                radioGroup.check(R$id.radioButtonSubject);
            }
            this.isUGCMode = false;
            this.isResetMode = false;
        }
        fw.t tVar4 = this.viewBinding;
        if (tVar4 != null && (button2 = tVar4.f62904b) != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabContentModeDialog.q0(this.f56820a, view2);
                }
            });
        }
        fw.t tVar5 = this.viewBinding;
        if (tVar5 != null && (button = tVar5.f62905c) != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabContentModeDialog.r0(this.f56825a, view2);
                }
            });
        }
        fw.t tVar6 = this.viewBinding;
        if (tVar6 == null || (radioGroup3 = tVar6.f62909g) == null) {
            return;
        }
        radioGroup3.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.transsion.usercenter.laboratory.f
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup5, int i11) {
                LabContentModeDialog.s0(this.f56828a, radioGroup5, i11);
            }
        });
    }
}
