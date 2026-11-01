package com.hisavana.common.interfacz;

import com.hisavana.common.bean.Network;

/* JADX INFO: loaded from: classes4.dex */
public interface ICacheAd {
    void destroyAd();

    void detachContext();

    int getAdSource();

    int getAdType();

    double getEcpmPrice();

    int getExpireReason();

    String getExt();

    String getFilterSource();

    String getMediatorSourceName();

    String getMediatorSourceUnitId();

    Network getNetwork();

    String getPlacementId();

    long getValidTimeLimit();

    boolean isAdxAd();

    boolean isEwAd();

    boolean isExpired();

    boolean isIconAd();

    boolean isInternalAd();

    boolean isMatchVulgarBrand();

    boolean isOfflineAd();

    void setAdSource(int i11);

    void setEcpmPrice(double d11);

    void setExpireReason(int i11);

    void setExt(String str);

    void setMaxPrice(double d11);

    void setPreload(boolean z10);

    void setRequestType(int i11);

    void setSecondPrice(double d11);

    void setTimeOut(boolean z10);
}
