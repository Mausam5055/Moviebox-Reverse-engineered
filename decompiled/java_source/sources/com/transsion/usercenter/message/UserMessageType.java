package com.transsion.usercenter.message;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.usercenter.message.adapter.a;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/usercenter/message/UserMessageType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ALL", a.I, "LIKE", "LIKE_COMMENT", a.J, a.K, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum UserMessageType {
    ALL("ALL"),
    SYSTEM(a.I),
    LIKE("LIKE"),
    LIKE_COMMENT("LIKE_COMMENT"),
    COMMENT(a.J),
    REPLY_COMMENT(a.K);

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String value;

    UserMessageType(String str) {
        this.value = str;
    }

    public static EnumEntries<UserMessageType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
