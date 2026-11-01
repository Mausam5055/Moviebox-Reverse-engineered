package com.cloud.tmc.kernel.intf;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.GlobalPackageConfig")
public interface IPackageConfig extends Proxiable {
    String getAppId();

    String getDevSDKVersion();

    @Nullable
    String getFrameworkVersion();

    boolean getOpenMutipleTask();

    String getSDKVersion();

    void setAppId(@NonNull String str);

    void setFrameworkVersion(@Nullable String str);

    void setOpenMutipleTask(boolean z10);
}
