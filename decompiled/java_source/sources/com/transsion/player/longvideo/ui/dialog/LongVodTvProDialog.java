package com.transsion.player.longvideo.ui.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.y;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.dialog.BaseDialog;
import com.transsion.baseui.R$style;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.view.LongVodTvProPanelView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 (2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u00020\u00002\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onDestroyView", "onDestroy", "", "pageName", "c0", "(Ljava/lang/String;)Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "", "height", "d0", "(I)Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "Lkotlin/Function0;", "callback", "b0", "(Lkotlin/jvm/functions/Function0;)Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "a", "Ljava/lang/String;", "Lcom/transsion/player/longvideo/view/LongVodTvProPanelView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/longvideo/view/LongVodTvProPanelView;", "panelView", "c", "Lkotlin/jvm/functions/Function0;", "dismissCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "panelMaxHeight", "e", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LongVodTvProDialog extends BaseDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private LongVodTvProPanelView panelView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 dismissCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int panelMaxHeight;

    public LongVodTvProDialog() {
        super(R$layout.long_vod_tv_pro_dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(LongVodTvProDialog longVodTvProDialog) {
        longVodTvProDialog.dismissAllowingStateLoss();
        return Unit.f67061a;
    }

    public final LongVodTvProDialog b0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.dismissCallback = callback;
        return this;
    }

    public final LongVodTvProDialog c0(String pageName) {
        this.pageName = pageName;
        return this;
    }

    public final LongVodTvProDialog d0(int height) {
        this.panelMaxHeight = height;
        return this;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        Function0 function0 = this.dismissCallback;
        if (function0 != null) {
            function0.invoke();
        }
        this.dismissCallback = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        LongVodTvProPanelView longVodTvProPanelView = this.panelView;
        if (longVodTvProPanelView != null) {
            longVodTvProPanelView.destroyWebFragment();
        }
        this.panelView = null;
        super.onDestroyView();
    }

    @Override // com.tn.lib.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setGravity(80);
        window.clearFlags(2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        window.setAttributes(attributes);
        int iC = (int) (y.c() * 0.75f);
        int i11 = this.panelMaxHeight;
        if (i11 > 0) {
            iC = Math.min(iC, i11);
        }
        window.setLayout(-1, iC);
        window.setBackgroundDrawable(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LongVodTvProPanelView longVodTvProPanelView = (LongVodTvProPanelView) view.findViewById(R$id.tvProPanel);
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        longVodTvProPanelView.bind(childFragmentManager, this.pageName, new Function0() { // from class: com.transsion.player.longvideo.ui.dialog.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodTvProDialog.a0(this.f48337a);
            }
        });
        this.panelView = longVodTvProPanelView;
    }
}
