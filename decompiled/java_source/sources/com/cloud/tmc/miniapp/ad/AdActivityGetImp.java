package com.cloud.tmc.miniapp.ad;

import com.cloud.tmc.integration.proxy.IAdActivityGetProxy;

/* JADX INFO: loaded from: classes3.dex */
public final class AdActivityGetImp implements IAdActivityGetProxy {
    @Override // com.cloud.tmc.integration.proxy.IAdActivityGetProxy
    public Class<?> getAdFormActivity() {
        return WebviewAdFormActivity.class;
    }

    @Override // com.cloud.tmc.integration.proxy.IAdActivityGetProxy
    public Class<?> getAdLandingPageActivity() {
        return WebviewAdLandingPageActivity.class;
    }

    @Override // com.cloud.tmc.integration.proxy.IAdActivityGetProxy
    public Class<?> getAdPersonalizationActivity() {
        return WebviewPersonalizationActivity.class;
    }
}
