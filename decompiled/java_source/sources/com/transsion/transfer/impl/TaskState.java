package com.transsion.transfer.impl;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/transfer/impl/TaskState;", "", "<init>", "(Ljava/lang/String;I)V", "DISCONNECT", "ERROR", "NO_FILE", "FINISH", "CANCEL", "TRANSFERRING", "CONNECTING", "SPACE_LIMIT", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum TaskState {
    DISCONNECT,
    ERROR,
    NO_FILE,
    FINISH,
    CANCEL,
    TRANSFERRING,
    CONNECTING,
    SPACE_LIMIT;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    public static EnumEntries<TaskState> getEntries() {
        return $ENTRIES;
    }
}
