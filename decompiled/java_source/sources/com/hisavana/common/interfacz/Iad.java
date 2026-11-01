package com.hisavana.common.interfacz;

import android.os.Bundle;
import com.hisavana.common.bean.TInnerAdRequestBody;

/* JADX INFO: loaded from: classes4.dex */
public interface Iad extends ICacheAd {
    void addRequestBody(TInnerAdRequestBody tInnerAdRequestBody);

    String getAdUnit();

    int getLoadStatus();

    long getRequestTime();

    WrapTAdAllianceListener getTAdAllianceListener();

    boolean isSupportRtBidding();

    void loadAd();

    void setAdUnit(String str);

    void setLoadStatus(int i11);

    void setOfflineAd(boolean z10);

    void setRequestRound(int i11);

    void setRequestTime(long j11);

    void setSupportFlag(int i11);

    void setTrackingBundle(Bundle bundle);

    void stopLoader();
}
