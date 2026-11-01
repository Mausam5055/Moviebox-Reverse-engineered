package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import androidx.fragment.app.FragmentActivity;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabChannelDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lfw/s;", "c", "Lfw/s;", "viewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "channelTag", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabChannelDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private fw.s viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String channelTag;

    public LabChannelDialog() {
        super(R$layout.dialog_lab_channel_layout);
        this.channelTag = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(LabChannelDialog labChannelDialog, View view) {
        labChannelDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(LabChannelDialog labChannelDialog, View view) {
        if (!TextUtils.isEmpty(labChannelDialog.channelTag)) {
            yg.b.f79009a.k(labChannelDialog.channelTag);
            uh.b.f76753a.e("自定义成功 -- channel = " + labChannelDialog.channelTag);
        }
        labChannelDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(LabChannelDialog labChannelDialog, RadioGroup radioGroup, int i11) {
        if (i11 == R$id.radioButtonGP) {
            uh.b.f76753a.e("gp");
            labChannelDialog.channelTag = "gp";
        } else if (i11 == R$id.radioButtonPS) {
            uh.b.f76753a.e("ps");
            labChannelDialog.channelTag = "ps";
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
        Button button;
        Button button2;
        RadioGroup radioGroup2;
        RadioGroup radioGroup3;
        RadioGroup radioGroup4;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = fw.s.a(view);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            String strE = yg.b.f79009a.e(activity);
            if (TextUtils.equals("ps", strE)) {
                fw.s sVar = this.viewBinding;
                if (sVar != null && (radioGroup4 = sVar.f62898f) != null) {
                    radioGroup4.check(R$id.radioButtonPS);
                }
            } else if (TextUtils.equals("gp", strE)) {
                fw.s sVar2 = this.viewBinding;
                if (sVar2 != null && (radioGroup3 = sVar2.f62898f) != null) {
                    radioGroup3.check(R$id.radioButtonGP);
                }
            } else {
                fw.s sVar3 = this.viewBinding;
                if (sVar3 != null && (radioGroup2 = sVar3.f62898f) != null) {
                    radioGroup2.clearCheck();
                }
            }
        }
        fw.s sVar4 = this.viewBinding;
        if (sVar4 != null && (button2 = sVar4.f62894b) != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabChannelDialog.q0(this.f56811a, view2);
                }
            });
        }
        fw.s sVar5 = this.viewBinding;
        if (sVar5 != null && (button = sVar5.f62895c) != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabChannelDialog.r0(this.f56814a, view2);
                }
            });
        }
        fw.s sVar6 = this.viewBinding;
        if (sVar6 == null || (radioGroup = sVar6.f62898f) == null) {
            return;
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.transsion.usercenter.laboratory.c
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup5, int i11) {
                LabChannelDialog.s0(this.f56817a, radioGroup5, i11);
            }
        });
    }
}
