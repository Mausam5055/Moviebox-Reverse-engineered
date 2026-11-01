package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabFpsDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lfw/v;", "c", "Lfw/v;", "viewBinding", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabFpsDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private fw.v viewBinding;

    public LabFpsDialog() {
        super(R$layout.dialog_lab_fps_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(LabFpsDialog labFpsDialog, View view) {
        labFpsDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(LabFpsDialog labFpsDialog, View view) {
        labFpsDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(RadioGroup radioGroup, int i11) {
        if (i11 == R$id.radioButtonFpsOpen) {
            uh.b.f76753a.e("show fps");
            com.transsion.baselib.report.launch.b.f43370a.b().putString("debug_fps", MRAIDPresenter.OPEN);
        } else if (i11 == R$id.radioButtonFpsClose) {
            uh.b.f76753a.e("dismiss fps");
            com.transsion.baselib.report.launch.b.f43370a.b().putString("debug_fps", "close");
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
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = fw.v.a(view);
        if (getActivity() != null) {
            if (Intrinsics.c(com.transsion.baselib.report.launch.b.f43370a.b().getString("debug_fps", ""), MRAIDPresenter.OPEN)) {
                fw.v vVar = this.viewBinding;
                if (vVar != null && (radioGroup3 = vVar.f62951f) != null) {
                    radioGroup3.check(R$id.radioButtonFpsOpen);
                }
            } else {
                fw.v vVar2 = this.viewBinding;
                if (vVar2 != null && (radioGroup2 = vVar2.f62951f) != null) {
                    radioGroup2.check(R$id.radioButtonFpsClose);
                }
            }
        }
        fw.v vVar3 = this.viewBinding;
        if (vVar3 != null && (button2 = vVar3.f62947b) != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabFpsDialog.q0(this.f56845a, view2);
                }
            });
        }
        fw.v vVar4 = this.viewBinding;
        if (vVar4 != null && (button = vVar4.f62948c) != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabFpsDialog.r0(this.f56847a, view2);
                }
            });
        }
        fw.v vVar5 = this.viewBinding;
        if (vVar5 == null || (radioGroup = vVar5.f62951f) == null) {
            return;
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.transsion.usercenter.laboratory.o
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup4, int i11) {
                LabFpsDialog.s0(radioGroup4, i11);
            }
        });
    }
}
