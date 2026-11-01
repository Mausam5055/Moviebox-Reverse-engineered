package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.miniapp.NewTaskManager;
import com.cloud.tmc.miniapp.ui.MiniSchemaFilterActivity;
import com.cloud.tmc.miniapp.ui.WebViewActivity;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultLauncherMiniActivityProxy implements StartActivityProxy {
    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public Boolean checkFeedBackApp(String str) {
        return Boolean.valueOf(NewTaskManager.Companion.getInstance().checkUseSingleTaskMode(str));
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public Boolean checkOpenMutipleTask(String str) {
        return Boolean.valueOf(NewTaskManager.Companion.getInstance().checkOpenMutipleTask(str));
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public Class<?> getLauncherShortCutActivity() {
        return MiniSchemaFilterActivity.class;
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public Class<?> getWebViewActivity() {
        return WebViewActivity.class;
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public void launchMiniApp(Context context, String url) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        MiniAppLaunch.launchMiniApp$default(MiniAppLaunch.INSTANCE, context, url, null, 4, null);
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public void launchMiniAppForId(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        MiniAppLaunch.launchMiniAppForId(MiniAppLaunch.INSTANCE.getLaunchContext(appId, context), appId, new Bundle());
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public void removeMiniAppTask(String str, Activity activity) {
        NewTaskManager.Companion companion = NewTaskManager.Companion;
        if (!companion.getInstance().checkOpenMutipleTask(str)) {
            if (activity != null) {
                activity.finishAndRemoveTask();
            }
        } else if (str != null) {
            companion.getInstance().removeFromStack(str, true);
            if (!companion.getInstance().checkFeedBackApp(str) || activity == null) {
                return;
            }
            activity.finish();
        }
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public void removeMiniAppTaskByRecent(String str) {
        try {
            NewTaskManager.Companion companion = NewTaskManager.Companion;
            if (!companion.getInstance().checkOpenMutipleTask(str) || str == null) {
                return;
            }
            companion.getInstance().remoceFromStackFromRecent(str);
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.StartActivityProxy
    public void updateTaskRootId(String str) {
        if (str != null) {
            NewTaskManager.Companion.getInstance().updateProcessInfoByAppId(str);
        }
    }
}
