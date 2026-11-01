package com.cloud.tmc.miniapp.utils.athena;

import android.app.Application;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.defaultimpl.AthenaReport;
import com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO;
import com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO0o;
import com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0OO {
    public static final OooO0OO OooO00o = new OooO0OO();
    public static AtomicBoolean OooO0O0 = new AtomicBoolean(false);
    public static Application OooO0OO;

    static {
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
    }

    public static final void OooO00o(List dataCaches) {
        Intrinsics.h(dataCaches, "$dataCaches");
        Iterator it = dataCaches.iterator();
        while (it.hasNext()) {
            OooO00o oooO00o = (OooO00o) it.next();
            TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":mfah report -> cache, post, athenaAppId = " + oooO00o.OooO00o + ", tag = " + oooO00o.OooO0O0);
            OooO00o.OooO00o(oooO00o.OooO0O0, oooO00o.OooO00o, oooO00o.OooO0OO);
        }
    }

    public static final void OooO0O0(List dataCaches) {
        Intrinsics.h(dataCaches, "$dataCaches");
        Iterator it = dataCaches.iterator();
        while (it.hasNext()) {
            OooO00o oooO00o = (OooO00o) it.next();
            TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> cache, post, athenaAppId = " + oooO00o.OooO00o + ", tag = " + oooO00o.OooO0O0);
            OooO00o.OooO00o(oooO00o.OooO0O0, oooO00o.OooO00o, oooO00o.OooO0OO);
        }
    }

    public final com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o(String str, boolean z10) {
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o athenaReportBean;
        if (!ProcessUtils.isMiniProcess()) {
            if (ProcessUtils.isMainProcess()) {
                return null;
            }
            return new com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o(false, false, false);
        }
        if (z10) {
            Application application = OooO0OO;
            ArrayList steps = CollectionsKt.h(new com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO00o(), new com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO0O0(), new com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO0OO(), new OooO(), new OooO0o());
            Intrinsics.h(steps, "steps");
            athenaReportBean = new com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o(false, false, false);
            Intrinsics.h(steps, "steps");
            Intrinsics.h(athenaReportBean, "athenaReportBean");
            if (steps.size() > 0) {
                ((OooOO0) steps.get(0)).OooO00o(new com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0(application, str, steps, 1, athenaReportBean));
            }
        } else {
            Application application2 = OooO0OO;
            ArrayList steps2 = CollectionsKt.h(new com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO00o(), new com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooO0OO(), new OooO(), new OooO0o());
            Intrinsics.h(steps2, "steps");
            athenaReportBean = new com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o(false, false, false);
            Intrinsics.h(steps2, "steps");
            Intrinsics.h(athenaReportBean, "athenaReportBean");
            if (steps2.size() > 0) {
                ((OooOO0) steps2.get(0)).OooO00o(new com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0(application2, str, steps2, 1, athenaReportBean));
            }
        }
        return athenaReportBean;
    }

    public final void OooO00o() {
        boolean zIsMiniProcess = ProcessUtils.isMiniProcess();
        AthenaReport.Companion.getClass();
        TmcLogger.d("AthenaUtil", "miniProcessAppOrPageReady -> delay:false, isMiniProcess:" + zIsMiniProcess + ", mainProcessInitAthenaFlag:" + AthenaReport.OooO0OO.get() + ", miniProcessInitAthenaFlag:" + AthenaReport.OooO0Oo.get() + ", zeroProcessInitAthenaFlag:" + AthenaReport.OooO0o0.get());
    }

    public final void OooO00o(String appId) {
        final ArrayList<OooO00o> arrayList;
        Intrinsics.h(appId, "appId");
        try {
            OooO0O0 oooO0O0 = OooO0O0.OooO00o;
            try {
                arrayList = new ArrayList();
                ConcurrentLinkedQueue<OooO00o> concurrentLinkedQueue = OooO0O0.OooO0Oo.get(appId);
                if (concurrentLinkedQueue != null && (!concurrentLinkedQueue.isEmpty())) {
                    arrayList.addAll(concurrentLinkedQueue);
                }
            } catch (Throwable unused) {
                arrayList = new ArrayList();
            }
            TmcLogger.d("AthenaUtil", "appId: ->" + appId + ",->mfah report -> report all cache :" + arrayList.size());
            try {
                ConcurrentHashMap<String, ConcurrentLinkedQueue<OooO00o>> concurrentHashMap = OooO0O0.OooO0Oo;
                ConcurrentLinkedQueue<OooO00o> concurrentLinkedQueue2 = concurrentHashMap.get(appId);
                if (concurrentLinkedQueue2 != null) {
                    concurrentLinkedQueue2.clear();
                }
                TypeIntrinsics.d(concurrentHashMap).remove(appId);
            } catch (Throwable th2) {
                TmcLogger.e("AthenaUtil", "clearAthenaDataForId", th2);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":mfah report -> exist cache, post all size = " + arrayList.size());
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.athena.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooO0OO.OooO00o(arrayList);
                    }
                });
                return;
            }
            for (OooO00o oooO00o : arrayList) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> cache, post, athenaAppId = " + oooO00o.OooO00o + ", tag = " + oooO00o.OooO0O0);
                OooO00o.OooO00o(oooO00o.OooO0O0, oooO00o.OooO00o, oooO00o.OooO0OO);
            }
        } catch (Throwable th3) {
            TmcLogger.e("AthenaUtil", "athena cache report ", th3);
        }
    }

    public final void OooO00o(String str, int i11, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new yi.a(str, i11).c(bundle, null).b();
    }

    public final void OooO00o(String tag, int i11, Bundle data, String appId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(data, "data");
        try {
            com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o2 = OooO00o(appId, true);
            if (OooO00o2 == null) {
                return;
            }
            TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":getAthenaStrategyResult -> setCache = " + OooO00o2.OooO00o + ", clearCache = " + OooO00o2.OooO0O0 + ",isMfah = " + OooO00o2.OooO0OO);
            if (OooO00o2.OooO0OO && OooO00o2.OooO00o) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ": mfah report -> save cache, athenaAppId = " + i11 + ", tag = " + tag);
                if (appId != null && appId.length() != 0) {
                    OooO0O0 oooO0O0 = OooO0O0.OooO00o;
                    OooO00o athenaDataBean = new OooO00o(i11, tag, data);
                    Intrinsics.h(appId, "appId");
                    Intrinsics.h(athenaDataBean, "athenaDataBean");
                    try {
                        ConcurrentHashMap<String, ConcurrentLinkedQueue<OooO00o>> concurrentHashMap = OooO0O0.OooO0Oo;
                        ConcurrentLinkedQueue<OooO00o> concurrentLinkedQueue = concurrentHashMap.get(appId);
                        if (concurrentLinkedQueue == null) {
                            concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                            concurrentHashMap.put(appId, concurrentLinkedQueue);
                        }
                        concurrentLinkedQueue.add(athenaDataBean);
                        return;
                    } catch (Throwable th2) {
                        TmcLogger.e("AthenaUtil", "setAthenaDataForId", th2);
                        return;
                    }
                }
                OooO0O0 oooO0O1 = OooO0O0.OooO00o;
                OooO00o athenaDataBean2 = new OooO00o(i11, tag, data);
                Intrinsics.h(athenaDataBean2, "athenaDataBean");
                oooO0O1.OooO00o();
                OooO0O0.OooO0OO.add(athenaDataBean2);
                return;
            }
            if (OooO00o2.OooO00o) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> save cache, athenaAppId = " + i11 + ", tag = " + tag);
                OooO0O0 oooO0O2 = OooO0O0.OooO00o;
                OooO00o athenaDataBean3 = new OooO00o(i11, tag, data);
                Intrinsics.h(athenaDataBean3, "athenaDataBean");
                oooO0O2.OooO00o();
                OooO0O0.OooO0OO.add(athenaDataBean3);
                return;
            }
            if (!OooO00o2.OooO0O0) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> no cache, post only current, athenaAppId = " + i11 + ", tag = " + tag);
                OooO00o(tag, i11, data);
                return;
            }
            OooO0O0 oooO0O3 = OooO0O0.OooO00o;
            final ArrayList<OooO00o> arrayList = new ArrayList();
            ConcurrentLinkedQueue<OooO00o> concurrentLinkedQueue2 = OooO0O0.OooO0OO;
            arrayList.addAll(concurrentLinkedQueue2);
            concurrentLinkedQueue2.clear();
            if (arrayList.isEmpty()) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> no cache, post only current, athenaAppId = " + i11 + ", tag = " + tag);
                OooO00o(tag, i11, data);
                return;
            }
            TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> exist cache, post all size = " + arrayList.size());
            arrayList.add(new OooO00o(i11, tag, data));
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.athena.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooO0OO.OooO0O0(arrayList);
                    }
                });
                return;
            }
            for (OooO00o oooO00o : arrayList) {
                TmcLogger.d("AthenaUtil", ProcessUtils.getProcessName() + ":report -> cache, post, athenaAppId = " + oooO00o.OooO00o + ", tag = " + oooO00o.OooO0O0);
                OooO00o.OooO00o(oooO00o.OooO0O0, oooO00o.OooO00o, oooO00o.OooO0OO);
            }
        } catch (Throwable unused) {
        }
    }

    public final void OooO0O0(String tag, int i11, Bundle bundle) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(bundle, "bundle");
        try {
            OooO00o(tag, i11, bundle);
        } catch (Throwable th2) {
            TmcLogger.e("AthenaUtil", "forceAthenaReport", th2);
        }
    }
}
