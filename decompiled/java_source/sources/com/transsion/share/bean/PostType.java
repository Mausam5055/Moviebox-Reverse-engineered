package com.transsion.share.bean;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/share/bean/PostType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "UNKNOWN_TYPE", "SUBJECT_TYPE", "GROUP_TYPE", "POST_TYPE", "STAFF_TYPE", "SHORT_TV_TYPE", "LIVE_TYPE", "UGC_VIDEO", "UGC_SHORT_TV", "ShareLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum PostType {
    UNKNOWN_TYPE("UnknownType"),
    SUBJECT_TYPE("SubjectType"),
    GROUP_TYPE("GroupType"),
    POST_TYPE("PostType"),
    STAFF_TYPE("StaffType"),
    SHORT_TV_TYPE("ShortTVType"),
    LIVE_TYPE("Live"),
    UGC_VIDEO("UGCVideo"),
    UGC_SHORT_TV("UGCShortTV");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String value;

    PostType(String str) {
        this.value = str;
    }

    public static EnumEntries<PostType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
