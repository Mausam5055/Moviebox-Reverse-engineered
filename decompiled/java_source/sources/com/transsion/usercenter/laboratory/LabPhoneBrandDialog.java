package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0019\u0010\u000e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabPhoneBrandDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", MimeTypes.BASE_TYPE_TEXT, "", "q0", "(Ljava/lang/String;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "u0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "Lfw/r;", "c", "Lfw/r;", "getViewBinding", "()Lfw/r;", "setViewBinding", "(Lfw/r;)V", "viewBinding", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabPhoneBrandDialog extends BaseDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private fw.r viewBinding;

    public LabPhoneBrandDialog() {
        super(R$layout.dialog_lab_brand);
    }

    private final void q0(String text) {
        if (text == null || text.length() == 0) {
            uh.b.f76753a.e("text is null~");
            return;
        }
        u0(text);
        Toast.makeText(getContext(), "set brand:" + text + " success", 1).show();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        labPhoneBrandDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        EditTextWithClear editTextWithClear;
        fw.r rVar = labPhoneBrandDialog.viewBinding;
        labPhoneBrandDialog.q0(String.valueOf((rVar == null || (editTextWithClear = rVar.f62884d) == null) ? null : editTextWithClear.getText()));
        labPhoneBrandDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        Toast.makeText(labPhoneBrandDialog.getContext(), "reset success", 1).show();
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("phone_brand", "");
        }
        labPhoneBrandDialog.dismiss();
    }

    private final void u0(String value) {
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("phone_brand", value);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        q0(v11 instanceof TextView ? ((TextView) v11).getText().toString() : "");
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = fw.r.a(view);
        MMKV mmkvC = bh.a.f16469a.c();
        String string = mmkvC != null ? mmkvC.getString("phone_brand", "") : null;
        fw.r rVar = this.viewBinding;
        if (rVar != null && (appCompatTextView8 = rVar.f62885e) != null) {
            appCompatTextView8.setText(string);
        }
        fw.r rVar2 = this.viewBinding;
        if (rVar2 != null && (appCompatTextView7 = rVar2.f62882b) != null) {
            appCompatTextView7.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabPhoneBrandDialog.r0(this.f56815a, view2);
                }
            });
        }
        fw.r rVar3 = this.viewBinding;
        if (rVar3 != null && (appCompatTextView6 = rVar3.f62883c) != null) {
            appCompatTextView6.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabPhoneBrandDialog.s0(this.f56818a, view2);
                }
            });
        }
        fw.r rVar4 = this.viewBinding;
        if (rVar4 != null && (appCompatTextView5 = rVar4.f62889i) != null) {
            appCompatTextView5.setOnClickListener(this);
        }
        fw.r rVar5 = this.viewBinding;
        if (rVar5 != null && (appCompatTextView4 = rVar5.f62886f) != null) {
            appCompatTextView4.setOnClickListener(this);
        }
        fw.r rVar6 = this.viewBinding;
        if (rVar6 != null && (appCompatTextView3 = rVar6.f62887g) != null) {
            appCompatTextView3.setOnClickListener(this);
        }
        fw.r rVar7 = this.viewBinding;
        if (rVar7 != null && (appCompatTextView2 = rVar7.f62888h) != null) {
            appCompatTextView2.setOnClickListener(this);
        }
        fw.r rVar8 = this.viewBinding;
        if (rVar8 == null || (appCompatTextView = rVar8.f62890j) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabPhoneBrandDialog.t0(this.f56821a, view2);
            }
        });
    }
}
