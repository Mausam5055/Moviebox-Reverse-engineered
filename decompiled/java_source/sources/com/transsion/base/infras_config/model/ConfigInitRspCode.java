package com.transsion.base.infras_config.model;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/base/infras_config/model/ConfigInitRspCode;", "", "<init>", "(Ljava/lang/String;I)V", "IRC_UNKNOWN", "IRC_NOT_MODIFIED", "IRC_MODIFIED", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum ConfigInitRspCode {
    IRC_UNKNOWN,
    IRC_NOT_MODIFIED,
    IRC_MODIFIED;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    public static EnumEntries<ConfigInitRspCode> getEntries() {
        return $ENTRIES;
    }
}
