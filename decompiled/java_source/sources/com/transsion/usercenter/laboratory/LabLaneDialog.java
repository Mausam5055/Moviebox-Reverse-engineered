package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.mmkv.MMKV;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabLaneDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", "lane", "", "t0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabLaneDialog extends BaseDialog implements View.OnClickListener {
    public LabLaneDialog() {
        super(R$layout.dialog_lab_lane);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(LabLaneDialog labLaneDialog, View view) {
        labLaneDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(fw.y yVar, LabLaneDialog labLaneDialog, View view) {
        Editable text = yVar.f62993d.getText();
        if (text == null || text.length() == 0) {
            uh.b.f76753a.e("text is null~");
        } else {
            labLaneDialog.t0(text.toString());
            labLaneDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(LabLaneDialog labLaneDialog, View view) {
        Toast.makeText(labLaneDialog.getContext(), "reset success", 1).show();
        yg.b.f79009a.b("x-md-global-color", "");
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("x-md-global-color", "");
        }
        labLaneDialog.dismiss();
    }

    private final void t0(String lane) {
        Toast.makeText(getContext(), "set \"" + lane + "\" success", 1).show();
        yg.b.f79009a.b("x-md-global-color", lane);
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("x-md-global-color", lane);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        Intrinsics.f(v11, "null cannot be cast to non-null type android.widget.TextView");
        t0(((TextView) v11).getText().toString());
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final fw.y yVarA = fw.y.a(view);
        Intrinsics.g(yVarA, "bind(...)");
        MMKV mmkvC = bh.a.f16469a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("x-md-global-color", "")) != null) {
            str = string;
        }
        yVarA.f63003n.setText(str);
        yVarA.f62991b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabLaneDialog.q0(this.f56861a, view2);
            }
        });
        yVarA.f62992c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabLaneDialog.r0(yVarA, this, view2);
            }
        });
        yVarA.f62994e.setOnClickListener(this);
        yVarA.f62995f.setOnClickListener(this);
        yVarA.f62996g.setOnClickListener(this);
        yVarA.f62997h.setOnClickListener(this);
        yVarA.f62998i.setOnClickListener(this);
        yVarA.f62999j.setOnClickListener(this);
        yVarA.f63000k.setOnClickListener(this);
        yVarA.f63001l.setOnClickListener(this);
        yVarA.f63002m.setOnClickListener(this);
        yVarA.f63004o.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabLaneDialog.s0(this.f56865a, view2);
            }
        });
    }
}
