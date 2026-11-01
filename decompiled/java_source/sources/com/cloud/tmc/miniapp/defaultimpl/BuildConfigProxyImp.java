package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildConfigProxyImp implements BuildConfigProxy {
    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy
    public Boolean isDebug() {
        return Boolean.valueOf(AppDynamicBuildConfig.isAppDebugAble());
    }
}
