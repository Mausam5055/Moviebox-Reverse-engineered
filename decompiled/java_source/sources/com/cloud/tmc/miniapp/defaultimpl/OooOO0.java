package com.cloud.tmc.miniapp.defaultimpl;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.widget.SwipeBackLayout;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOO0 implements com.cloud.tmc.miniapp.utils.manager.OooO0O0 {
    public TmcFragment OooO00o;
    public SwipeBackLayout OooO0O0;

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public View OooO00o(View view) {
        Intrinsics.h(view, "view");
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        Intrinsics.e(swipeBackLayout);
        TmcFragment tmcFragment = this.OooO00o;
        View view2 = swipeBackLayout.OooO0o0;
        if (view2 != null) {
            swipeBackLayout.removeView(view2);
        }
        ViewExtKt.removeSelf(view);
        swipeBackLayout.addView(view);
        swipeBackLayout.OooO0o = tmcFragment;
        swipeBackLayout.OooO0o0 = view;
        return swipeBackLayout;
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o() {
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout != null) {
            swipeBackLayout.OooOOOO = true;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o(float f11) {
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout != null) {
            swipeBackLayout.setParallaxOffset(f11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o(int i11) {
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout != null) {
            swipeBackLayout.setEdgeLevel(i11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o(TmcFragment tmcFragment, Bundle bundle) {
        Intrinsics.h(tmcFragment, "tmcFragment");
        this.OooO00o = tmcFragment;
        TmcFragment tmcFragment2 = this.OooO00o;
        Intrinsics.e(tmcFragment2);
        this.OooO0O0 = new SwipeBackLayout(tmcFragment2.getContext(), null);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        Intrinsics.e(swipeBackLayout);
        swipeBackLayout.setLayoutParams(layoutParams);
        SwipeBackLayout swipeBackLayout2 = this.OooO0O0;
        Intrinsics.e(swipeBackLayout2);
        swipeBackLayout2.setBackgroundColor(0);
        SwipeBackLayout swipeBackLayout3 = this.OooO0O0;
        Intrinsics.e(swipeBackLayout3);
        swipeBackLayout3.setSwipeAlpha(0.0f);
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o(SwipeBackLayout.EdgeLevel edgeLevel) {
        Intrinsics.h(edgeLevel, "edgeLevel");
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout != null) {
            swipeBackLayout.setEdgeLevel(edgeLevel);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO00o(boolean z10) {
        View view;
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout == null || !z10) {
            return;
        }
        swipeBackLayout.OooO00o();
        Fragment fragment = swipeBackLayout.OooO0oO;
        if (fragment == null || (view = fragment.getView()) == null) {
            return;
        }
        view.setVisibility(8);
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void OooO0O0(boolean z10) {
        SwipeBackLayout swipeBackLayout = this.OooO0O0;
        if (swipeBackLayout != null) {
            swipeBackLayout.setEnableGesture(z10);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO0O0
    public void onDestroy() {
        this.OooO00o = null;
        this.OooO0O0 = null;
    }
}
