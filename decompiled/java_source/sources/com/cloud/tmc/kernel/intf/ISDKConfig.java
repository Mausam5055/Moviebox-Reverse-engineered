package com.cloud.tmc.kernel.intf;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.kernel.deftimpl.DefaultSDKConfig")
public interface ISDKConfig extends Proxiable {
    String getAppVersion();

    boolean openShareTarget();
}
