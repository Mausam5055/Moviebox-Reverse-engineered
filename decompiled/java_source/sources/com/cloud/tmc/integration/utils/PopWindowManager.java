package com.cloud.tmc.integration.utils;

import androidx.collection.s;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/cloud/tmc/integration/utils/PopWindowManager;", "", "()V", "TAG", "", "controllerMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;", "Lkotlin/collections/ArrayList;", "addPopWindow", "", "key", "bean", "clearPopWindow", "refreshPopWindow", "showPopWindow", "diffTime", "", "IPopWindowManagerController", "PopWindowData", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PopWindowManager {
    public static final PopWindowManager INSTANCE = new PopWindowManager();
    private static final ConcurrentHashMap<String, ArrayList<PopWindowData>> controllerMap = new ConcurrentHashMap<>();
    private static final String TAG = "PopWindowManager";

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;", "", "onRefresh", "", "bean", "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "appId", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface IPopWindowManagerController {
        void onRefresh(PopWindowData bean);

        void show(String appId);
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J;\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010'\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0007HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006,"}, d2 = {"Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", "delayTime", "", TrackingKey.PRIORITY, "", "popWindowController", "Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;", "ignoreInterval", "", "(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getDelayTime", "()J", "setDelayTime", "(J)V", "getIgnoreInterval", "()Z", "setIgnoreInterval", "(Z)V", "getPopWindowController", "()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;", "setPopWindowController", "(Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V", "getPriority", "()I", "setPriority", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class PopWindowData extends BaseBean {
        private String appId;
        private long delayTime;
        private boolean ignoreInterval;
        private IPopWindowManagerController popWindowController;
        private int priority;

        public PopWindowData(String appId, long j11, int i11, IPopWindowManagerController popWindowController, boolean z10) {
            Intrinsics.h(appId, "appId");
            Intrinsics.h(popWindowController, "popWindowController");
            this.appId = appId;
            this.delayTime = j11;
            this.priority = i11;
            this.popWindowController = popWindowController;
            this.ignoreInterval = z10;
        }

        public /* synthetic */ PopWindowData(String str, long j11, int i11, IPopWindowManagerController iPopWindowManagerController, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j11, i11, iPopWindowManagerController, (i12 & 16) != 0 ? false : z10);
        }

        public static /* synthetic */ PopWindowData copy$default(PopWindowData popWindowData, String str, long j11, int i11, IPopWindowManagerController iPopWindowManagerController, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                str = popWindowData.appId;
            }
            if ((i12 & 2) != 0) {
                j11 = popWindowData.delayTime;
            }
            long j12 = j11;
            if ((i12 & 4) != 0) {
                i11 = popWindowData.priority;
            }
            int i13 = i11;
            if ((i12 & 8) != 0) {
                iPopWindowManagerController = popWindowData.popWindowController;
            }
            IPopWindowManagerController iPopWindowManagerController2 = iPopWindowManagerController;
            if ((i12 & 16) != 0) {
                z10 = popWindowData.ignoreInterval;
            }
            return popWindowData.copy(str, j12, i13, iPopWindowManagerController2, z10);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAppId() {
            return this.appId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getDelayTime() {
            return this.delayTime;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getPriority() {
            return this.priority;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final IPopWindowManagerController getPopWindowController() {
            return this.popWindowController;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIgnoreInterval() {
            return this.ignoreInterval;
        }

        public final PopWindowData copy(String appId, long delayTime, int priority, IPopWindowManagerController popWindowController, boolean ignoreInterval) {
            Intrinsics.h(appId, "appId");
            Intrinsics.h(popWindowController, "popWindowController");
            return new PopWindowData(appId, delayTime, priority, popWindowController, ignoreInterval);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PopWindowData)) {
                return false;
            }
            PopWindowData popWindowData = (PopWindowData) other;
            return Intrinsics.c(this.appId, popWindowData.appId) && this.delayTime == popWindowData.delayTime && this.priority == popWindowData.priority && Intrinsics.c(this.popWindowController, popWindowData.popWindowController) && this.ignoreInterval == popWindowData.ignoreInterval;
        }

        public final String getAppId() {
            return this.appId;
        }

        public final long getDelayTime() {
            return this.delayTime;
        }

        public final boolean getIgnoreInterval() {
            return this.ignoreInterval;
        }

        public final IPopWindowManagerController getPopWindowController() {
            return this.popWindowController;
        }

        public final int getPriority() {
            return this.priority;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        public int hashCode() {
            int iHashCode = ((((((this.appId.hashCode() * 31) + s.a(this.delayTime)) * 31) + this.priority) * 31) + this.popWindowController.hashCode()) * 31;
            boolean z10 = this.ignoreInterval;
            ?? r11 = z10;
            if (z10) {
                r11 = 1;
            }
            return iHashCode + r11;
        }

        public final void setAppId(String str) {
            Intrinsics.h(str, "<set-?>");
            this.appId = str;
        }

        public final void setDelayTime(long j11) {
            this.delayTime = j11;
        }

        public final void setIgnoreInterval(boolean z10) {
            this.ignoreInterval = z10;
        }

        public final void setPopWindowController(IPopWindowManagerController iPopWindowManagerController) {
            Intrinsics.h(iPopWindowManagerController, "<set-?>");
            this.popWindowController = iPopWindowManagerController;
        }

        public final void setPriority(int i11) {
            this.priority = i11;
        }

        public String toString() {
            return "PopWindowData(appId=" + this.appId + ", delayTime=" + this.delayTime + ", priority=" + this.priority + ", popWindowController=" + this.popWindowController + ", ignoreInterval=" + this.ignoreInterval + ")";
        }
    }

    private PopWindowManager() {
    }

    private final void refreshPopWindow(String key) {
        PopWindowData popWindowData;
        try {
            ArrayList<PopWindowData> arrayList = controllerMap.get(key);
            if (arrayList == null || (popWindowData = (PopWindowData) CollectionsKt.k0(arrayList)) == null) {
                return;
            }
            popWindowData.getPopWindowController().onRefresh(popWindowData);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "refreshPopWindow error: " + th2);
        }
    }

    public final void addPopWindow(String key, PopWindowData bean) {
        Intrinsics.h(key, "key");
        Intrinsics.h(bean, "bean");
        ConcurrentHashMap<String, ArrayList<PopWindowData>> concurrentHashMap = controllerMap;
        synchronized (concurrentHashMap) {
            try {
                ArrayList<PopWindowData> arrayList = concurrentHashMap.get(key);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                } else {
                    Intrinsics.g(arrayList, "controllerMap[key] ?: ArrayList()");
                }
                Iterator<PopWindowData> it = arrayList.iterator();
                int i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    } else if (it.next().getDelayTime() >= bean.getDelayTime()) {
                        break;
                    } else {
                        i11++;
                    }
                }
                if (i11 == -1) {
                    arrayList.add(bean);
                } else {
                    arrayList.add(i11, bean);
                }
                controllerMap.put(key, arrayList);
                INSTANCE.refreshPopWindow(key);
            } catch (Throwable unused) {
                TmcLogger.e(TAG);
            }
            Unit unit = Unit.f67061a;
        }
    }

    public final void clearPopWindow(String key) {
        Intrinsics.h(key, "key");
        ConcurrentHashMap<String, ArrayList<PopWindowData>> concurrentHashMap = controllerMap;
        synchronized (concurrentHashMap) {
            try {
                concurrentHashMap.remove(key);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "clearPopWindow error: " + th2);
                Unit unit = Unit.f67061a;
            }
        }
    }

    public final void showPopWindow(String key, long diffTime) {
        Intrinsics.h(key, "key");
        ConcurrentHashMap<String, ArrayList<PopWindowData>> concurrentHashMap = controllerMap;
        synchronized (concurrentHashMap) {
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList<PopWindowData> arrayList2 = concurrentHashMap.get(key);
                PopWindowData popWindowData = null;
                if (arrayList2 != null) {
                    Intrinsics.g(arrayList2, "controllerMap[key]");
                    for (PopWindowData popWindowData2 : arrayList2) {
                        if (popWindowData != null) {
                            int configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_INTERVAL_TIME, 30000);
                            TmcLogger.d(TAG, "KEY_MINI_POPWINDOW_INTERVAL_TIME->" + configInt);
                            if (popWindowData.getIgnoreInterval()) {
                                continue;
                            } else if (popWindowData2.getDelayTime() - popWindowData.getDelayTime() >= configInt || popWindowData2.getIgnoreInterval()) {
                                break;
                                break;
                            } else if (popWindowData2.getPriority() > popWindowData.getPriority()) {
                                arrayList.add(popWindowData);
                            } else {
                                arrayList.add(popWindowData2);
                            }
                        }
                        popWindowData = popWindowData2;
                    }
                }
                if (popWindowData != null && diffTime >= popWindowData.getDelayTime()) {
                    arrayList.add(popWindowData);
                }
                ArrayList<PopWindowData> arrayList3 = controllerMap.get(key);
                if (arrayList3 != null) {
                    arrayList3.removeAll(CollectionsKt.W0(arrayList));
                }
                if (popWindowData != null) {
                    if (diffTime >= popWindowData.getDelayTime()) {
                        popWindowData.getPopWindowController().show(popWindowData.getAppId());
                        INSTANCE.refreshPopWindow(key);
                    } else {
                        popWindowData.getPopWindowController().onRefresh(popWindowData);
                    }
                    Unit unit = Unit.f67061a;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "showPopWindow error :" + th2);
                Unit unit2 = Unit.f67061a;
            }
        }
    }
}
