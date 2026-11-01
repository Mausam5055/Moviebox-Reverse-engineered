package com.cloud.tmc.integration.listener;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.kernel.listener.OnKeyboardListener;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\b\u0010\u0010\u001a\u00020\u000eH\u0016J\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "tmcFragment", "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;", "(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V", "lastKeyboardHeight", "", "onKeyboardListeners", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;", "Lkotlin/collections/ArrayList;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "addOnKeyboardListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "onGlobalLayout", "release", "removeOnKeyboardListener", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RootViewGlobalLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
    private static final String TAG = "RootViewGlobalLayoutLis";
    private int lastKeyboardHeight;
    private final ArrayList<OnKeyboardListener> onKeyboardListeners;
    private View view;

    public RootViewGlobalLayoutListener(TmcFragment tmcFragment) {
        Intrinsics.h(tmcFragment, "tmcFragment");
        this.onKeyboardListeners = new ArrayList<>();
        this.view = tmcFragment.getView();
    }

    public final void addOnKeyboardListener(OnKeyboardListener listener) {
        Intrinsics.h(listener, "listener");
        this.onKeyboardListeners.add(listener);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        try {
            View view = this.view;
            if (view != null) {
                Rect rect = new Rect();
                view.getWindowVisibleDisplayFrame(rect);
                int height = view.getRootView().getHeight();
                int i11 = height - rect.bottom;
                if (i11 != this.lastKeyboardHeight) {
                    this.lastKeyboardHeight = i11;
                    Iterator<OnKeyboardListener> it = this.onKeyboardListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onKeyBoardChanged(i11, height);
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to adjust TabBarView", th2);
        }
    }

    public final void release() {
        this.onKeyboardListeners.clear();
        this.view = null;
    }

    public final void removeOnKeyboardListener(OnKeyboardListener listener) {
        Intrinsics.h(listener, "listener");
        this.onKeyboardListeners.remove(listener);
    }
}
