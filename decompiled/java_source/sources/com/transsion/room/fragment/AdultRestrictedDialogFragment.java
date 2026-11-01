package com.transsion.room.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ!\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\f\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/transsion/room/fragment/AdultRestrictedDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onActivityCreated", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "btnNegative", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "btnPositive", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdultRestrictedDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextView btnNegative;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView btnPositive;

    public AdultRestrictedDialogFragment() {
        super(R$layout.dialog_adult_restricted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(AdultRestrictedDialogFragment adultRestrictedDialogFragment, View view) {
        FragmentActivity activity = adultRestrictedDialogFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(AdultRestrictedDialogFragment adultRestrictedDialogFragment, View view) {
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("adult_restricted", false);
        adultRestrictedDialogFragment.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        Window window;
        super.onActivityCreated(savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(-1, -2);
        window.setGravity(17);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        this.btnNegative = (TextView) view.findViewById(R$id.btn_negative);
        this.btnPositive = (TextView) view.findViewById(R$id.btn_positive);
        TextView textView = this.btnNegative;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AdultRestrictedDialogFragment.Z(this.f51534a, view2);
                }
            });
        }
        TextView textView2 = this.btnPositive;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AdultRestrictedDialogFragment.a0(this.f51536a, view2);
                }
            });
        }
    }
}
