package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Activity;
import android.app.Application;
import android.content.res.Resources;
import com.cloud.tmc.kernel.service.EnvironmentService;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniutils.util.ActivityUtils;
import com.cloud.tmc.miniutils.util.AppUtils;
import com.cloud.tmc.miniutils.util.LanguageUtils;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class EnvironmentServiceImpl implements EnvironmentService {
    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public String defaultPlatform() {
        return "TMC";
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public String getAppLanguage() {
        return LanguageUtils.getAppContextLanguage().getLanguage();
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public String getAppName() {
        String appName = AppUtils.getAppName();
        Intrinsics.g(appName, "getAppName()");
        return appName;
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public Application getApplicationContext() {
        return ByteAppManager.getSApplication();
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public int getLpid() {
        return ProcessUtils.getPid();
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public String getProductVersion() {
        String appVersionName = AppUtils.getAppVersionName();
        Intrinsics.g(appVersionName, "getAppVersionName()");
        return appVersionName;
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public Resources getResources() {
        Resources resources = getApplicationContext().getResources();
        Intrinsics.g(resources, "applicationContext.resources");
        return resources;
    }

    @Override // com.cloud.tmc.kernel.service.EnvironmentService
    public WeakReference<Activity> getTopActivity() {
        return new WeakReference<>(ActivityUtils.getTopActivity());
    }
}
