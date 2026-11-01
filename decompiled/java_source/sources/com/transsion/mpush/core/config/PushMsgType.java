package com.transsion.mpush.core.config;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/mpush/core/config/PushMsgType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "LOCAL_PUSH", "DOWNLOAD_PUSH", "PERMANENT", "TOP10_PUSH", "SUBJECT_SEEKING", "ONLINE_JSON_PUSH", "FIREBASE_PUSH", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum PushMsgType {
    LOCAL_PUSH("1"),
    DOWNLOAD_PUSH("4"),
    PERMANENT("5"),
    TOP10_PUSH(PrepareException.ERROR_NO_URL),
    SUBJECT_SEEKING("10"),
    ONLINE_JSON_PUSH(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY),
    FIREBASE_PUSH("101");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String type;

    PushMsgType(String str) {
        this.type = str;
    }

    public static EnumEntries<PushMsgType> getEntries() {
        return $ENTRIES;
    }

    public final String getType() {
        return this.type;
    }
}
