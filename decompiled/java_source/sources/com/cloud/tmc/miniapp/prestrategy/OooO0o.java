package com.cloud.tmc.miniapp.prestrategy;

import android.app.Application;
import android.os.Bundle;
import android.util.LruCache;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0o {
    public static boolean OooO0O0;
    public static int OooO0OO;
    public static ThreadPoolExecutor OooO0o;
    public static final OooO0o OooO00o = new OooO0o();
    public static final LruCache<PrefetchConfigModel, Integer> OooO0Oo = new LruCache<>(20);
    public static final LruCache<PrefetchConfigModel, Integer> OooO0o0 = new LruCache<>(50);

    public static final class OooO00o implements NetworkUtils.OnNetworkStatusChangedListener {
        public static final void OooO00o() {
            OooO0OO oooO0OO = OooO0OO.OooO00o;
            try {
                if (ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk() != null) {
                    LruCache<String, PrefetchData> lruCache = OooO0OO.OooO0O0;
                    if (lruCache.size() <= 0) {
                        TmcLogger.e("Prefetch:PrefetchConfigManager", "no recover request, request queue is empty.");
                    } else {
                        PrefetchData prefetchData = null;
                        for (String str : lruCache.snapshot().keySet()) {
                            LruCache<String, PrefetchData> lruCache2 = OooO0OO.OooO0O0;
                            PrefetchData prefetchData2 = lruCache2.get(str);
                            if (prefetchData2 != null) {
                                lruCache2.remove(str);
                                prefetchData = prefetchData2;
                            }
                        }
                        if (prefetchData != null) {
                            TmcLogger.e("Prefetch:PrefetchConfigManager", "start recover config request.");
                            OooO0OO.OooO00o.OooO00o(prefetchData);
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:PrefetchConfigManager", th2);
            }
            OooO0o oooO0o = OooO0o.OooO00o;
            try {
                LruCache<PrefetchConfigModel, Integer> lruCache3 = OooO0o.OooO0o0;
                if (lruCache3.size() <= 0) {
                    TmcLogger.e("Prefetch:StrategyExecuteManager", "strategyWaitCache is empty.");
                } else {
                    Set<PrefetchConfigModel> setKeySet = lruCache3.snapshot().keySet();
                    lruCache3.evictAll();
                    oooO0o.OooO00o(CollectionsKt.R0(setKeySet), (Map<String, Bundle>) null);
                }
            } catch (Throwable th3) {
                TmcLogger.e("Prefetch:StrategyExecuteManager", th3);
            }
        }

        @Override // com.cloud.tmc.miniutils.util.NetworkUtils.OnNetworkStatusChangedListener
        public void onConnected(NetworkUtils.NetworkType networkType) {
            OooO0o.OooO0O0 = true;
            int i11 = networkType == NetworkUtils.NetworkType.NETWORK_WIFI ? 2 : 1;
            OooO0o.OooO0OO = i11;
            TmcLogger.e("Prefetch:StrategyExecuteManager", "network connected. netType=" + i11);
            ExecutorUtils.execute(ExecutorType.IDLE, new Runnable() { // from class: com.cloud.tmc.miniapp.prestrategy.d
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0o.OooO00o.OooO00o();
                }
            });
        }

        @Override // com.cloud.tmc.miniutils.util.NetworkUtils.OnNetworkStatusChangedListener
        public void onDisconnected() {
            OooO0o.OooO0OO = 0;
            OooO0o.OooO0O0 = false;
            TmcLogger.e("Prefetch:StrategyExecuteManager", "network disconnected.");
        }
    }

    public static final class OooO0O0 implements Runnable {
        public final PrefetchConfigModel OooO00o;

        public OooO0O0(PrefetchConfigModel model) {
            Intrinsics.h(model, "model");
            this.OooO00o = model;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TmcLogger.d("Prefetch:StrategyExecuteManager", "StrategyTask execute. (appId=" + this.OooO00o.getAppId() + ", dataType=" + this.OooO00o.getDataType() + ") ");
                if (System.currentTimeMillis() > this.OooO00o.getExpiredTime() * ((long) 1000)) {
                    TmcLogger.e("Prefetch:StrategyExecuteManager", "this strategy(appId=" + this.OooO00o.getAppId() + ", dataType=" + this.OooO00o.getDataType() + ") has expired.");
                    return;
                }
                LruCache<PrefetchConfigModel, Integer> lruCache = OooO0o.OooO0o0;
                synchronized (lruCache) {
                    if (!OooO0o.OooO0O0) {
                        TmcLogger.e("Prefetch:StrategyExecuteManager", "no network, push wait queue.");
                        lruCache.put(this.OooO00o, 0);
                        return;
                    }
                    if (this.OooO00o.getNetType() == 2 && OooO0o.OooO0OO != 2) {
                        TmcLogger.e("Prefetch:StrategyExecuteManager", "this strategy require wifi. push wait queue.");
                        lruCache.put(this.OooO00o, 0);
                        return;
                    }
                    Unit unit = Unit.f67061a;
                    String dataType = this.OooO00o.getDataType();
                    if (dataType != null) {
                        int iHashCode = dataType.hashCode();
                        if (iHashCode == 49) {
                            if (dataType.equals("1")) {
                                if (this.OooO00o.getMiniappType() == 2) {
                                    new com.cloud.tmc.miniapp.prestrategy.task.OooO0o(this.OooO00o).OooO00o();
                                    return;
                                } else {
                                    new com.cloud.tmc.miniapp.prestrategy.task.OooO0OO(this.OooO00o).OooO00o();
                                    return;
                                }
                            }
                            return;
                        }
                        if (iHashCode == 50) {
                            if (dataType.equals("2")) {
                                new com.cloud.tmc.miniapp.prestrategy.task.OooO0O0(this.OooO00o).OooO00o();
                            }
                        } else {
                            if (iHashCode == 52 && dataType.equals("4")) {
                                new com.cloud.tmc.miniapp.prestrategy.task.OooO00o(this.OooO00o).OooO00o();
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:StrategyExecuteManager", th2);
            }
        }
    }

    static {
        boolean zIsConnected = NetworkUtils.isConnected();
        OooO0O0 = zIsConnected;
        if (zIsConnected) {
            OooO0OO = NetworkUtils.isMobileData() ? 1 : 2;
        }
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.prestrategy.b
            @Override // java.lang.Runnable
            public final void run() {
                OooO0o.OooO00o();
            }
        });
        OooO0o = new ThreadPoolExecutor(1, 2, 60L, TimeUnit.SECONDS, new PriorityBlockingQueue(50, new Comparator() { // from class: com.cloud.tmc.miniapp.prestrategy.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return OooO0o.OooO00o((Runnable) obj, (Runnable) obj2);
            }
        }), new ThreadPoolExecutor.DiscardOldestPolicy());
    }

    public static final int OooO00o(Runnable runnable, Runnable runnable2) {
        PrefetchConfigModel prefetchConfigModel;
        PrefetchConfigModel prefetchConfigModel2;
        int priority = 0;
        try {
            OooO0O0 oooO0O0 = runnable instanceof OooO0O0 ? (OooO0O0) runnable : null;
            int priority2 = (oooO0O0 == null || (prefetchConfigModel2 = oooO0O0.OooO00o) == null) ? 0 : prefetchConfigModel2.getPriority();
            OooO0O0 oooO0O1 = runnable2 instanceof OooO0O0 ? (OooO0O0) runnable2 : null;
            if (oooO0O1 != null && (prefetchConfigModel = oooO0O1.OooO00o) != null) {
                priority = prefetchConfigModel.getPriority();
            }
            return priority2 - priority;
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:StrategyExecuteManager", th2);
            return 0;
        }
    }

    public static final void OooO00o() {
        NetworkUtils.registerNetworkStatusChangedListener(new OooO00o());
        try {
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk == null) {
                return;
            }
            Type type = new TypeToken<Set<PrefetchConfigModel>>() { // from class: com.cloud.tmc.miniapp.prestrategy.StrategyExecuteManager$recoverSource$setType$1
            }.getType();
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application$com_cloud_tmc_miniapp_sdk, "mini_PrefetchData", "keyPrefetchSource");
            if (string != null && string.length() != 0) {
                Set set = (Set) GsonUtils.fromJson(string, type);
                if (set == null) {
                    return;
                }
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    OooO0Oo.put((PrefetchConfigModel) it.next(), 0);
                }
                return;
            }
            TmcLogger.e("Prefetch:StrategyExecuteManager", "no source strategy cache.");
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:StrategyExecuteManager", th2);
        }
    }

    public final void OooO00o(List<PrefetchConfigModel> list, Map<String, Bundle> map) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    boolean z10 = false;
                    for (PrefetchConfigModel prefetchConfigModel : list) {
                        String appId = prefetchConfigModel.getAppId();
                        if (appId == null || appId.length() == 0) {
                            TmcLogger.e("Prefetch:StrategyExecuteManager", "skip: appId is empty.");
                        } else if (Intrinsics.c(prefetchConfigModel.getDataType(), "3")) {
                            TmcLogger.e("Prefetch:StrategyExecuteManager", "skip: strategy is source.");
                            OooO0Oo.put(prefetchConfigModel, 0);
                            z10 = true;
                        } else {
                            if (prefetchConfigModel.getBundle() == null) {
                                prefetchConfigModel.setBundle(map != null ? map.get(prefetchConfigModel.getAppId()) : null);
                            }
                            OooO0o.execute(new OooO0O0(prefetchConfigModel));
                        }
                    }
                    if (z10) {
                        OooO0O0();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:StrategyExecuteManager", th2);
                return;
            }
        }
        TmcLogger.e("Prefetch:StrategyExecuteManager", "executePreStrategy failed: strategyList is empty.");
    }

    public final void OooO0O0() {
        Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
        LruCache<PrefetchConfigModel, Integer> lruCache = OooO0Oo;
        if (lruCache.size() <= 0 || application$com_cloud_tmc_miniapp_sdk == null) {
            return;
        }
        try {
            synchronized (lruCache) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application$com_cloud_tmc_miniapp_sdk, "mini_PrefetchData", "keyPrefetchSource", GsonUtils.toJson(lruCache.snapshot().keySet()));
                Unit unit = Unit.f67061a;
            }
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:StrategyExecuteManager", th2);
        }
    }
}
