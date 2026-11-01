package com.cloud.tmc.miniapp;

import android.content.Context;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.proxy.platform.IUpgradeProxy;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class UpgradeImpl implements IUpgradeProxy {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void showFwUpdateTipsDialog$lambda$0(Context context, o000oOoO prepareCallback, String str) {
        Intrinsics.h(prepareCallback, "$prepareCallback");
        if (StringsKt.H(context.getPackageName(), TmcConstants.HI_LAUNCHER_PACKAGE_NAME_UPGRADE, true) || StringsKt.H(context.getPackageName(), TmcConstants.X_LAUNCHER_PACKAGE_NAME_UPGRADE, true)) {
            MiniAppLaunch.killActivity(context);
        } else {
            prepareCallback.showUpgradeHintPrompt(str);
        }
    }

    @Override // com.cloud.tmc.miniapp.proxy.platform.IUpgradeProxy
    public void showFwUpdateTipsDialog(final Context context, final String str, final o000oOoO prepareCallback) {
        Intrinsics.h(prepareCallback, "prepareCallback");
        if (context == null) {
            return;
        }
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.k
            @Override // java.lang.Runnable
            public final void run() {
                UpgradeImpl.showFwUpdateTipsDialog$lambda$0(context, prepareCallback, str);
            }
        });
    }
}
