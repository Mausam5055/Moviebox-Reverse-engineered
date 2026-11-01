package com.cloud.tmc.offline.download.utils;

import android.os.SystemClock;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\bj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/FastClickUtils;", "", "()V", "ALL_FAST_CLICK_KEY", "", "DOUBLE_DEVIATE_TIME", "", "lastClickTimeMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "isFastDoubleClick", "", "key", "deviateTime", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FastClickUtils {
    private static final String ALL_FAST_CLICK_KEY = "fastclick";
    private static final long DOUBLE_DEVIATE_TIME = 400;
    public static final FastClickUtils INSTANCE = new FastClickUtils();
    private static final HashMap<String, Long> lastClickTimeMap = new HashMap<>();

    private FastClickUtils() {
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean isFastDoubleClick() {
        return isFastDoubleClick$default(null, 0L, 3, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean isFastDoubleClick(String key) {
        Intrinsics.h(key, "key");
        return isFastDoubleClick$default(key, 0L, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean isFastDoubleClick(String key, long deviateTime) {
        Intrinsics.h(key, "key");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap<String, Long> map = lastClickTimeMap;
        Long l11 = map.get(key);
        if (l11 == null) {
            l11 = 0L;
        }
        long jLongValue = jElapsedRealtime - l11.longValue();
        if (jLongValue > deviateTime) {
            map.put(key, Long.valueOf(jElapsedRealtime));
            return false;
        }
        if (jLongValue >= 0) {
            return true;
        }
        map.put(key, 0L);
        return false;
    }

    public static /* synthetic */ boolean isFastDoubleClick$default(String str, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = ALL_FAST_CLICK_KEY;
        }
        if ((i11 & 2) != 0) {
            j11 = DOUBLE_DEVIATE_TIME;
        }
        return isFastDoubleClick(str, j11);
    }
}
