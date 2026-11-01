package com.transsion.postdetail.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsnet.downloader.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R0\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)`*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "speed", "", "r0", "(F)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/transsion/postdetail/ui/dialog/o;", "c", "Lkotlin/Lazy;", "o0", "()Lcom/transsion/postdetail/ui/dialog/o;", "speedViewModel", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isPortrait", "()Z", "q0", "(Z)V", "", "e", "[Ljava/lang/Float;", "speedConfigs", "Ljava/util/HashMap;", "Lcom/transsion/baseui/widget/GradientTextView;", "Lkotlin/collections/HashMap;", "f", "Ljava/util/HashMap;", "itemViewMap", "g", "F", "currentSpeed", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SpeedConfigDialog extends BaseDialog {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isPortrait;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy speedViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(o.class), new Function0<x0>() { // from class: com.transsion.postdetail.ui.dialog.SpeedConfigDialog$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.postdetail.ui.dialog.SpeedConfigDialog$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Float[] speedConfigs = {Float.valueOf(0.5f), Float.valueOf(0.75f), Float.valueOf(1.0f), Float.valueOf(1.25f), Float.valueOf(1.5f), Float.valueOf(2.0f)};

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final HashMap itemViewMap = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float currentSpeed = com.transsion.baselib.helper.d.f43265a.d();

    private final o o0() {
        return (o) this.speedViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(SpeedConfigDialog speedConfigDialog, float f11, View view) {
        speedConfigDialog.r0(f11);
    }

    private final void r0(float speed) {
        float f11 = this.currentSpeed;
        if (f11 == speed) {
            return;
        }
        GradientTextView gradientTextView = (GradientTextView) this.itemViewMap.get(Float.valueOf(f11));
        if (gradientTextView != null) {
            gradientTextView.setTextColor(-1);
        }
        GradientTextView gradientTextView2 = (GradientTextView) this.itemViewMap.get(Float.valueOf(speed));
        if (gradientTextView2 != null) {
            gradientTextView2.setGradientColors(androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end));
        }
        this.currentSpeed = speed;
        o0().c(speed);
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.DownloadBottomDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.dialog_speed_config, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.ll_root);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, com.blankj.utilcode.util.i.e(48.0f));
        for (Float f11 : this.speedConfigs) {
            final float fFloatValue = f11.floatValue();
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            GradientTextView gradientTextView = new GradientTextView(context, null, 0, 6, null);
            gradientTextView.setGravity(17);
            if (this.currentSpeed == fFloatValue) {
                gradientTextView.setGradientColors(androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end));
            } else {
                gradientTextView.setGradientColors(androidx.core.content.b.getColor(Utils.a(), R$color.white), androidx.core.content.b.getColor(Utils.a(), R$color.white), androidx.core.content.b.getColor(Utils.a(), R$color.white));
            }
            gradientTextView.setTextSize(16.0f);
            Context context2 = view.getContext();
            Intrinsics.g(context2, "getContext(...)");
            gradientTextView.setTypeface(jg.a.c(context2));
            int i11 = (int) fFloatValue;
            gradientTextView.setText(i11 == fFloatValue ? i11 + "x" : fFloatValue + "x");
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SpeedConfigDialog.p0(this.f49458a, fFloatValue, view2);
                }
            });
            linearLayout.addView(gradientTextView, layoutParams);
            this.itemViewMap.put(f11, gradientTextView);
        }
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setDimAmount(0.0f);
        window.setBackgroundDrawable(null);
        if (this.isPortrait) {
            window.setWindowAnimations(com.tn.lib.widget.R$style.bottom_dialog_animation);
            window.setGravity(80);
            window.setLayout(-1, -2);
        } else {
            window.setWindowAnimations(com.tn.lib.widget.R$style.ActionSheetDialogRight);
            window.setGravity(GravityCompat.END);
            window.setLayout(a0.a(140.0f), -1);
        }
        ImmersionBar immersionBarWith = ImmersionBar.with((DialogFragment) this);
        immersionBarWith.hideBar(BarHide.FLAG_HIDE_BAR);
        immersionBarWith.init();
    }

    public final void q0(boolean z10) {
        this.isPortrait = z10;
    }
}
