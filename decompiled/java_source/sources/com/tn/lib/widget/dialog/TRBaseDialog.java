package com.tn.lib.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.tn.lib.widget.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u0000 82\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH&¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\nH&¢\u0006\u0004\b \u0010!J\r\u0010#\u001a\u00020\"¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\"¢\u0006\u0004\b&\u0010'J\u0015\u0010*\u001a\u00020\u00112\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0011¢\u0006\u0004\b,\u0010\u0003J\u0019\u0010.\u001a\u00020-2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b.\u0010/R\u0016\u00101\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010 R\u0014\u00103\u001a\u00020\"8\u0002X\u0082D¢\u0006\u0006\n\u0004\b2\u0010 R\u0016\u00106\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010 ¨\u00069"}, d2 = {"Lcom/tn/lib/widget/dialog/TRBaseDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/content/Context;", "context", "", "tag", "", "c0", "(Landroid/content/Context;Ljava/lang/String;)V", "Landroidx/fragment/app/Fragment;", "fragment", "d0", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "", "Y", "()I", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Z", "(Landroid/view/View;)V", "", "isShow", "()Z", "isAnim", "b0", "(Z)V", "", RewardPlus.AMOUNT, "a0", "(F)V", "X", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "a", "mHasAnimation", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mIsVertical", "c", "I", "mDialogAnimation", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class TRBaseDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean mHasAnimation = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final boolean mIsVertical = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int mDialogAnimation = R$style.TNDialogAnimation;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isShow;

    public final void X() {
        try {
            dismissAllowingStateLoss();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public abstract int Y();

    public abstract void Z(View view);

    public final void a0(float amount) {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setDimAmount(amount);
    }

    public final void b0(boolean isAnim) {
        this.mHasAnimation = isAnim;
    }

    public final void c0(Context context, String tag) {
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                if (isAdded() || this.isShow) {
                    return;
                }
                this.isShow = true;
                show(((FragmentActivity) context).getSupportFragmentManager(), tag);
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public final void d0(Fragment fragment, String tag) {
        Intrinsics.h(fragment, "fragment");
        try {
            if (isAdded() || this.isShow) {
                return;
            }
            this.isShow = true;
            show(fragment.getChildFragmentManager(), tag);
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public final boolean isShow() {
        if (getDialog() != null) {
            Dialog dialog = getDialog();
            Intrinsics.e(dialog);
            if (dialog.isShowing()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        setStyle(2, R$style.TNDialog);
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(Y(), container, false);
        Intrinsics.g(viewInflate, "inflate(...)");
        Dialog dialog = getDialog();
        Window window = dialog != null ? dialog.getWindow() : null;
        if (window != null && this.mHasAnimation) {
            window.setWindowAnimations(this.mDialogAnimation);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(isCancelable());
        }
        Z(viewInflate);
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        this.isShow = false;
    }
}
