package com.hisavana.common.manager;

import com.hisavana.common.bean.AdCache;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class AdCacheManager {
    private static final Map<String, AdCache> cacheMap;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        cacheMap = concurrentHashMap;
        concurrentHashMap.put(ComConstants.getAdType(2), new AdCache());
        concurrentHashMap.put(ComConstants.getAdType(3), new AdCache());
        concurrentHashMap.put(ComConstants.getAdType(1), new AdCache());
        concurrentHashMap.put(ComConstants.getAdType(6), new AdCache());
        concurrentHashMap.put(ComConstants.getAdType(4), new AdCache());
        concurrentHashMap.put(ComConstants.getAdType(5), new AdCache());
    }

    public static void clearCache(int i11) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            cacheMap.get(ComConstants.getAdType(i11)).removeAll();
        }
    }

    public static AdCache getCache(int i11) {
        return cacheMap.get(ComConstants.getAdType(i11));
    }

    public static void putCache(int i11, String str, ICacheAd iCacheAd) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            cacheMap.get(ComConstants.getAdType(i11)).addCache(str, iCacheAd);
        }
    }
}
