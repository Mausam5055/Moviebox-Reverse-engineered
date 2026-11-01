package com.tn.lib.widget.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/tn/lib/widget/dialog/TRBottomDialog;", "Lcom/tn/lib/widget/dialog/TRBaseDialog;", "", "Y", "()I", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "Z", "(Landroid/view/View;)V", "onResume", "()V", "f", "Landroid/view/View;", "contentView", "g", "I", "dialogBgDrawableId", "", "h", "F", "dimAmount", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TRBottomDialog extends TRBaseDialog {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private View contentView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final int dialogBgDrawableId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final float dimAmount;

    @Override // com.tn.lib.widget.dialog.TRBaseDialog
    public int Y() {
        return R$layout.libui_dialog_bottom_shadow;
    }

    @Override // com.tn.lib.widget.dialog.TRBaseDialog
    public void Z(View view) {
        Intrinsics.h(view, "view");
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R$id.root);
        constraintLayout.setBackgroundResource(this.dialogBgDrawableId);
        View view2 = this.contentView;
        if (view2 != null) {
            constraintLayout.addView(view2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        Window window2;
        if (getContext() != null) {
            Dialog dialog = getDialog();
            if (dialog != null && (window2 = dialog.getWindow()) != null) {
                window2.setLayout(-1, -2);
            }
            Dialog dialog2 = getDialog();
            if (dialog2 != null && (window = dialog2.getWindow()) != null) {
                window.setGravity(80);
            }
            a0(this.dimAmount);
        }
        super.onResume();
    }
}
