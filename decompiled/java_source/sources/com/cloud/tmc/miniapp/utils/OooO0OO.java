package com.cloud.tmc.miniapp.utils;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.integration.model.CacheReportBean;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0OO {
    public static final OooO0OO OooO00o = new OooO0OO();
    public static final ConcurrentLinkedQueue<CacheReportBean> OooO0O0 = new ConcurrentLinkedQueue<>();
    public static final ConcurrentHashMap<String, ConcurrentLinkedQueue<CacheReportBean>> OooO0OO = new ConcurrentHashMap<>();

    public static final void OooO00o(ArrayList tmpDataCache) {
        Intrinsics.h(tmpDataCache, "$tmpDataCache");
        try {
            String gAId = DeviceUtil.getGAId();
            Iterator it = tmpDataCache.iterator();
            while (it.hasNext()) {
                Bundle data = ((CacheReportBean) it.next()).getData();
                com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
                data.putString("miniGaid", gAId);
            }
            OooO00o.OooO0Oo(tmpDataCache);
        } catch (Throwable unused) {
        }
    }

    public static final void OooO0O0(ArrayList tmpDataCache) {
        Intrinsics.h(tmpDataCache, "$tmpDataCache");
        try {
            String gAId = DeviceUtil.getGAId();
            Iterator it = tmpDataCache.iterator();
            while (it.hasNext()) {
                Bundle data = ((CacheReportBean) it.next()).getData();
                com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
                data.putString("miniGaid", gAId);
            }
            OooO00o.OooO0Oo(tmpDataCache);
            OooO0O0.clear();
        } catch (Throwable unused) {
        }
    }

    public static final void OooO0OO(ArrayList tmpDataCache) {
        Intrinsics.h(tmpDataCache, "$tmpDataCache");
        try {
            String gAId = DeviceUtil.getGAId();
            Iterator it = tmpDataCache.iterator();
            while (it.hasNext()) {
                Bundle data = ((CacheReportBean) it.next()).getData();
                com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
                data.putString("miniGaid", gAId);
            }
            OooO00o.OooO0Oo(tmpDataCache);
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(CacheReportBean dataBean) {
        Intrinsics.h(dataBean, "dataBean");
        try {
            OooO0O0.add(dataBean);
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(String str) {
        try {
            final ArrayList arrayList = new ArrayList();
            ConcurrentLinkedQueue<CacheReportBean> concurrentLinkedQueue = OooO0O0;
            arrayList.addAll(concurrentLinkedQueue);
            ConcurrentHashMap<String, ConcurrentLinkedQueue<CacheReportBean>> concurrentHashMap = OooO0OO;
            ConcurrentLinkedQueue<CacheReportBean> concurrentLinkedQueue2 = concurrentHashMap.get(str);
            if ((concurrentLinkedQueue2 != null ? Boolean.valueOf(concurrentLinkedQueue2.isEmpty()) : null) != null && !concurrentLinkedQueue2.isEmpty()) {
                arrayList.addAll(concurrentLinkedQueue2);
            }
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.h
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0OO.OooO00o(arrayList);
                }
            });
            if (concurrentLinkedQueue2 != null) {
                concurrentLinkedQueue2.clear();
            }
            TypeIntrinsics.d(concurrentHashMap).remove(str);
            concurrentLinkedQueue.clear();
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(String appId, CacheReportBean athenaDataBean) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(athenaDataBean, "athenaDataBean");
        try {
            ConcurrentHashMap<String, ConcurrentLinkedQueue<CacheReportBean>> concurrentHashMap = OooO0OO;
            ConcurrentLinkedQueue<CacheReportBean> concurrentLinkedQueue = concurrentHashMap.get(appId);
            if (concurrentLinkedQueue == null) {
                concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                concurrentHashMap.put(appId, concurrentLinkedQueue);
            }
            concurrentLinkedQueue.add(athenaDataBean);
        } catch (Throwable th2) {
            TmcLogger.e("MiniSyncMiniappData", "setAthenaDataForId", th2);
        }
    }

    public final void OooO0O0(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    final ArrayList arrayList = new ArrayList();
                    ConcurrentHashMap<String, ConcurrentLinkedQueue<CacheReportBean>> concurrentHashMap = OooO0OO;
                    ConcurrentLinkedQueue<CacheReportBean> concurrentLinkedQueue = concurrentHashMap.get(str);
                    if (concurrentLinkedQueue == null) {
                        return;
                    }
                    if (concurrentLinkedQueue.isEmpty()) {
                        TmcLogger.d("MiniSyncMiniappData", "reportCache ->reportCacheData is empty return ");
                        return;
                    }
                    arrayList.addAll(concurrentLinkedQueue);
                    ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            OooO0OO.OooO0OO(arrayList);
                        }
                    });
                    concurrentLinkedQueue.clear();
                    concurrentHashMap.remove(str);
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        ConcurrentLinkedQueue<CacheReportBean> concurrentLinkedQueue2 = OooO0O0;
        if (concurrentLinkedQueue2.isEmpty()) {
            TmcLogger.d("MiniSyncMiniappData", "reportCache ->reportCacheData is empty return ");
            return;
        }
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(concurrentLinkedQueue2);
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.i
            @Override // java.lang.Runnable
            public final void run() {
                OooO0OO.OooO0O0(arrayList2);
            }
        });
    }

    public final void OooO0Oo(ArrayList<CacheReportBean> arrayList) {
        try {
            TmcLogger.d("MiniSyncMiniappData", "reportCache ->reportCacheDataBroadcast");
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk != null) {
                com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
                Intent intent = new Intent("com.cloud.tmc.miniapp.report_cache");
                intent.putParcelableArrayListExtra("reportCachedata", arrayList);
                intent.setPackage(application$com_cloud_tmc_miniapp_sdk.getPackageName());
                application$com_cloud_tmc_miniapp_sdk.sendBroadcast(intent);
            }
        } catch (Throwable unused) {
        }
    }
}
