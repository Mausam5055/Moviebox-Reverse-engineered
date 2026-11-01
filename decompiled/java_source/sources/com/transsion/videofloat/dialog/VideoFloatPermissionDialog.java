package com.transsion.videofloat.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.DialogFragment;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.permissionx.guolindev.dialog.RationaleDialog;
import com.transsion.baseui.R$style;
import com.transsion.videofloat.R$layout;
import com.transsion.videofloat.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import qx.a;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J4\u0010\u0019\u001a\u00020\u000b2#\u0010\u0018\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ4\u0010\u001c\u001a\u00020\u000b2#\u0010\u0018\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u000b0\u0014H\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R5\u0010%\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R5\u0010'\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$¨\u0006("}, d2 = {"Lcom/transsion/videofloat/dialog/VideoFloatPermissionDialog;", "Lcom/permissionx/guolindev/dialog/RationaleDialog;", "", "isPip", "", "", "permissions", "<init>", "(ZLjava/util/List;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "q0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "positiveButton", "callback", "p0", "(Lkotlin/jvm/functions/Function1;)V", "negativeButton", "o0", "n0", "()Ljava/util/List;", "c", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "e", "Lkotlin/jvm/functions/Function1;", "positiveButtonCallback", "f", "negativeButtonCallback", "VideoFloat_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoFloatPermissionDialog extends RationaleDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final boolean isPip;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final List permissions;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function1 positiveButtonCallback;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 negativeButtonCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoFloatPermissionDialog(boolean z10, List permissions) {
        super(R$layout.dialog_video_float_permission);
        Intrinsics.h(permissions, "permissions");
        this.isPip = z10;
        this.permissions = permissions;
    }

    private final void q0(View view) {
        a aVarA = a.a(view);
        Intrinsics.g(aVarA, "bind(...)");
        aVarA.f73887e.setText(Utils.a().getString(this.isPip ? R$string.video_float_tips_pip : R$string.video_float_tips_v2));
        Function1 function1 = this.positiveButtonCallback;
        if (function1 != null) {
            function1.invoke(aVarA.f73886d);
        }
        Function1 function2 = this.negativeButtonCallback;
        if (function2 != null) {
            function2.invoke(aVarA.f73884b);
        }
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    /* JADX INFO: renamed from: n0, reason: from getter */
    public List getPermissions() {
        return this.permissions;
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    public void o0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.negativeButtonCallback = callback;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.NormalDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setWindowAnimations(c.f() ? com.tn.lib.widget.R$style.ActionSheetDialogLeft : com.tn.lib.widget.R$style.ActionSheetDialogRight);
            window.setGravity(c.f() ? GravityCompat.START : GravityCompat.END);
            window.setDimAmount(0.0f);
            window.setBackgroundDrawable(null);
            window.setLayout(a0.a(360.0f), -1);
            ImmersionBar immersionBarWith = ImmersionBar.with((DialogFragment) this);
            immersionBarWith.hideBar(BarHide.FLAG_HIDE_BAR);
            immersionBarWith.init();
        }
        q0(view);
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    public void p0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.positiveButtonCallback = callback;
    }
}
