package com.cloud.tmc.miniapp.utils.intercept;

import android.content.Context;
import android.os.Build;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o implements IBackPressedIntercept {
    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result backResult(App app, boolean z10, IBackPressedIntercept iBackPressedIntercept, boolean z11) {
        return IBackPressedIntercept.DefaultImpls.backResult(this, app, z10, iBackPressedIntercept, z11);
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public String getInterceptName() {
        return "BackToShowAddHomeDialogIntercept";
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public int getPriority() {
        return 30;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result intercept(IBackPressedIntercept.Chain chain) {
        AppNode app;
        Intrinsics.h(chain, "chain");
        TmcLogger.i("BackToShowAddHomeDialogIntercept", "BackToShowAddHomeDialogIntercept: " + chain.getParams());
        String appId = chain.getParams().getAppId();
        if (appId != null && (app = chain.getParams().getApp()) != null) {
            app.getMiniAppAutoPopover();
            Context context = chain.getParams().getContext();
            if (context != null && Build.VERSION.SDK_INT >= 26 && !AppUtils.INSTANCE.queryShortcutExist(context, appId) && !AddHomeToScreenUtils.INSTANCE.checkAddhomeShowStatus(83, app)) {
                MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
                if (miniAppActivity != null) {
                    miniAppActivity.showAddHomeTipsDialog(chain.getParams().getFromType());
                }
                app.updateAddHomeShowStatus(83);
                return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), true, this, false, 8, null);
            }
            return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
        }
        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
    }
}
