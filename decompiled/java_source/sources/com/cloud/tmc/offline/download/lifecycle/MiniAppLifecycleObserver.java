package com.cloud.tmc.offline.download.lifecycle;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.utils.TrackReportUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;", "Landroidx/lifecycle/r;", "", "appId", "<init>", "(Ljava/lang/String;)V", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "", "dispatchStateChange", "(Landroidx/lifecycle/Lifecycle$Event;)V", "checkSpecialGroupsReport", "()V", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "Ljava/lang/String;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MiniAppLifecycleObserver implements r {
    private static final String TAG = "MiniAppLifecycleObserve";
    private final String appId;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MiniAppLifecycleObserver(String str) {
        this.appId = str;
    }

    private final void checkSpecialGroupsReport() {
        try {
            ArrayList arrayListH = CollectionsKt.h("100000");
            Context context$com_cloud_tmc_offline_download = OfflineManager.getContext$com_cloud_tmc_offline_download();
            String packageName = context$com_cloud_tmc_offline_download != null ? context$com_cloud_tmc_offline_download.getPackageName() : null;
            if (packageName != null) {
                arrayListH.add(packageName);
            }
            Iterator it = arrayListH.iterator();
            while (it.hasNext()) {
                TrackReportUtils.INSTANCE.reportResourceRecord((String) it.next());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkSpecialGroupsReport", th2);
        }
    }

    private final void dispatchStateChange(Lifecycle.Event event) {
        if (WhenMappings.$EnumSwitchMapping$0[event.ordinal()] == 1) {
            TrackReportUtils.INSTANCE.reportResourceRecord(this.appId);
            checkSpecialGroupsReport();
        }
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        try {
            dispatchStateChange(event);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onStateChanged", th2);
        }
    }
}
