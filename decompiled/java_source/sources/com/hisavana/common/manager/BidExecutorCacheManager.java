package com.hisavana.common.manager;

import com.hisavana.common.base.BaseAd;
import com.hisavana.common.utils.AdLogUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class BidExecutorCacheManager {
    private static final String TAG = "InmobiBidCacheManager";
    private static BidExecutorCacheManager sInstance;
    private final Map<String, BaseAd> bidCache = new HashMap();

    public static synchronized BidExecutorCacheManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new BidExecutorCacheManager();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return sInstance;
    }

    public BaseAd removeData(String str) {
        AdLogUtil.Log().d(TAG, "removeBidData " + str);
        return this.bidCache.remove(str);
    }

    public void saveBidData(String str, BaseAd baseAd) {
        this.bidCache.put(str, baseAd);
    }
}
