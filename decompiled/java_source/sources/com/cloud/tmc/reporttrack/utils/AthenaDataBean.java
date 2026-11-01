package com.cloud.tmc.reporttrack.utils;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.reporttrack.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;", "", "athenaAppId", "", NotificationCompat.CATEGORY_EVENT, "", "data", "Landroid/os/Bundle;", "(ILjava/lang/String;Landroid/os/Bundle;)V", "getAthenaAppId", "()I", "setAthenaAppId", "(I)V", "getData", "()Landroid/os/Bundle;", "setData", "(Landroid/os/Bundle;)V", "getEvent", "()Ljava/lang/String;", "setEvent", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AthenaDataBean {
    private int athenaAppId;
    private Bundle data;
    private String event;

    public AthenaDataBean(int i11, String event, Bundle data) {
        Intrinsics.h(event, "event");
        Intrinsics.h(data, "data");
        this.athenaAppId = i11;
        this.event = event;
        this.data = data;
    }

    public static /* synthetic */ AthenaDataBean copy$default(AthenaDataBean athenaDataBean, int i11, String str, Bundle bundle, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = athenaDataBean.athenaAppId;
        }
        if ((i12 & 2) != 0) {
            str = athenaDataBean.event;
        }
        if ((i12 & 4) != 0) {
            bundle = athenaDataBean.data;
        }
        return athenaDataBean.copy(i11, str, bundle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getAthenaAppId() {
        return this.athenaAppId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEvent() {
        return this.event;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Bundle getData() {
        return this.data;
    }

    public final AthenaDataBean copy(int athenaAppId, String event, Bundle data) {
        Intrinsics.h(event, "event");
        Intrinsics.h(data, "data");
        return new AthenaDataBean(athenaAppId, event, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AthenaDataBean)) {
            return false;
        }
        AthenaDataBean athenaDataBean = (AthenaDataBean) other;
        return this.athenaAppId == athenaDataBean.athenaAppId && Intrinsics.c(this.event, athenaDataBean.event) && Intrinsics.c(this.data, athenaDataBean.data);
    }

    public final int getAthenaAppId() {
        return this.athenaAppId;
    }

    public final Bundle getData() {
        return this.data;
    }

    public final String getEvent() {
        return this.event;
    }

    public int hashCode() {
        return (((this.athenaAppId * 31) + this.event.hashCode()) * 31) + this.data.hashCode();
    }

    public final void setAthenaAppId(int i11) {
        this.athenaAppId = i11;
    }

    public final void setData(Bundle bundle) {
        Intrinsics.h(bundle, "<set-?>");
        this.data = bundle;
    }

    public final void setEvent(String str) {
        Intrinsics.h(str, "<set-?>");
        this.event = str;
    }

    public String toString() {
        return "AthenaDataBean(athenaAppId=" + this.athenaAppId + ", event=" + this.event + ", data=" + this.data + ')';
    }
}
