package com.cloud.tmc.reporttrack;

import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.reporttrack.utils.AthenaDataBean;
import com.cloud.tmc.reporttrack.utils.AthenaDataCache;
import com.cloud.tmc.reporttrack.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J \u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001c\u0010\r\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/reporttrack/ReportForExternal;", "", "()V", "APP_ID", "", "TAG", "", "athenaReport", "", "tag", "athenaAppId", "data", "Landroid/os/Bundle;", "report", "bundle", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ReportForExternal {
    private static final int APP_ID = 3755;
    public static final ReportForExternal INSTANCE = new ReportForExternal();
    public static final String TAG = "ExternalAthenaUtil";

    private ReportForExternal() {
    }

    private final void athenaReport(String tag, int athenaAppId, Bundle data) {
        if (TextUtils.isEmpty(tag)) {
            return;
        }
        new yi.a(tag, athenaAppId).c(data, null).b();
    }

    private final void report(String tag, int athenaAppId, Bundle data) {
        try {
            boolean z10 = true;
            if (Utils.delayStatus.get() != -1 && ((Utils.currentProcessIsInitAthena.get() && Utils.mainProcessIsInitAthena.get()) || Utils.delayStatus.get() != 1)) {
                z10 = false;
            }
            if (z10) {
                if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                    Utils.mThreadPoolExecutor.execute(new Runnable() { // from class: com.cloud.tmc.reporttrack.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            Utils.getInitAthenaStatus();
                        }
                    });
                } else {
                    Utils.getInitAthenaStatus();
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("report -> isNeedGetAthenaStatus:");
            sb2.append(z10);
            if (z10) {
                AthenaDataCache.INSTANCE.setAthenaData(new AthenaDataBean(athenaAppId, tag, data));
                return;
            }
            AthenaDataCache athenaDataCache = AthenaDataCache.INSTANCE;
            final List<AthenaDataBean> athenaData = athenaDataCache.getAthenaData();
            athenaDataCache.clearAthenaData();
            if (athenaData.isEmpty()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("report -> no cache, post only current, athenaAppId = ");
                sb3.append(athenaAppId);
                sb3.append(", tag = ");
                sb3.append(tag);
                athenaReport(tag, athenaAppId, data);
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("report -> exist cache, post all size = ");
            sb4.append(athenaData.size());
            athenaData.add(new AthenaDataBean(athenaAppId, tag, data));
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                new Thread(new Runnable() { // from class: com.cloud.tmc.reporttrack.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportForExternal.report$lambda$3(athenaData);
                    }
                }).start();
                return;
            }
            for (AthenaDataBean athenaDataBean : athenaData) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("report -> cache, post, athenaAppId = ");
                sb5.append(athenaDataBean.getAthenaAppId());
                sb5.append(", tag = ");
                sb5.append(athenaDataBean.getEvent());
                INSTANCE.athenaReport(athenaDataBean.getEvent(), athenaDataBean.getAthenaAppId(), athenaDataBean.getData());
            }
        } catch (Throwable unused) {
        }
    }

    public static /* synthetic */ void report$default(ReportForExternal reportForExternal, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        reportForExternal.report(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void report$lambda$3(List dataCaches) {
        Intrinsics.h(dataCaches, "$dataCaches");
        Iterator it = dataCaches.iterator();
        while (it.hasNext()) {
            AthenaDataBean athenaDataBean = (AthenaDataBean) it.next();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("report -> cache, post, athenaAppId = ");
            sb2.append(athenaDataBean.getAthenaAppId());
            sb2.append(", tag = ");
            sb2.append(athenaDataBean.getEvent());
            INSTANCE.athenaReport(athenaDataBean.getEvent(), athenaDataBean.getAthenaAppId(), athenaDataBean.getData());
        }
    }

    public final void report(String tag, Bundle bundle) {
        if (tag != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            INSTANCE.report(tag, 3755, bundle2);
        }
    }
}
