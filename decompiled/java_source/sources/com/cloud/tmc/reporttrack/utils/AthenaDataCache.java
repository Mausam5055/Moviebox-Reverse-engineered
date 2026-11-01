package com.cloud.tmc.reporttrack.utils;

import com.cloud.tmc.reporttrack.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0002J\u0006\u0010\n\u001a\u00020\tJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;", "", "()V", "CACHE_MAX_COUNT", "", "dataCache", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;", "checkOverFlow", "", "clearAthenaData", "getAthenaData", "", "setAthenaData", "athenaDataBean", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AthenaDataCache {
    private static final int CACHE_MAX_COUNT = 100;
    public static final AthenaDataCache INSTANCE = new AthenaDataCache();
    private static final ConcurrentLinkedQueue<AthenaDataBean> dataCache = new ConcurrentLinkedQueue<>();

    private AthenaDataCache() {
    }

    private final void checkOverFlow() {
        ConcurrentLinkedQueue<AthenaDataBean> concurrentLinkedQueue = dataCache;
        if (concurrentLinkedQueue.size() >= 100) {
            concurrentLinkedQueue.poll();
            checkOverFlow();
        }
    }

    public final void clearAthenaData() {
        dataCache.clear();
    }

    public final List<AthenaDataBean> getAthenaData() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(dataCache);
        return arrayList;
    }

    public final void setAthenaData(AthenaDataBean athenaDataBean) {
        Intrinsics.h(athenaDataBean, "athenaDataBean");
        checkOverFlow();
        dataCache.add(athenaDataBean);
    }
}
