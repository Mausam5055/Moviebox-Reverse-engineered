package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f22159a = new h();

    private h() {
    }

    public final ConfigCodeSeatDTO a(ConfigCodeSeatDTO defaultConfig) {
        Intrinsics.h(defaultConfig, "defaultConfig");
        defaultConfig.setApplicationId(a7.c.f365b);
        defaultConfig.setAdSeatType("");
        defaultConfig.setOfflineAdCacheCount(5);
        defaultConfig.setOfflineAdRequestCount(2);
        defaultConfig.setOfflineAdRequestTimeInterval(30);
        defaultConfig.setOfflineAdRequestTimeIntervalNoAd(24);
        defaultConfig.setAdShowCountLimit(-1);
        defaultConfig.setCarouselTime(0);
        defaultConfig.setCarouselCount(1);
        defaultConfig.setShowInterval(0);
        defaultConfig.setLastOfflineAdEnable(Boolean.FALSE);
        defaultConfig.setDefaultConfig(Boolean.TRUE);
        return defaultConfig;
    }
}
