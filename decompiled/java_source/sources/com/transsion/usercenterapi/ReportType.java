package com.transsion.usercenterapi;

import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.usercenter.message.adapter.a;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenterapi/ReportType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", NetworkUtil.NETWORK_TYPE_UNKNOWN, "USER", "POST", "GROUP", "SUBJECT", a.J, "STAFF", "UFC_VIDEO", "UserCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum ReportType {
    UNKNOWN("TYPE_UNKNOWN"),
    USER("TYPE_USER"),
    POST("TYPE_POST"),
    GROUP("TYPE_GROUP"),
    SUBJECT("TYPE_SUBJECT"),
    COMMENT("TYPE_COMMENT"),
    STAFF("TYPE_STAFF"),
    UFC_VIDEO("TYPE_UGC_VIDEO");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String value;

    ReportType(String str) {
        this.value = str;
    }

    public static EnumEntries<ReportType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
