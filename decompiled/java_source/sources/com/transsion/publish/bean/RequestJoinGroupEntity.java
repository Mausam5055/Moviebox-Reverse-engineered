package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/transsion/publish/bean/RequestJoinGroupEntity;", "Ljava/io/Serializable;", "groupId", "", "<init>", "(Ljava/lang/String;)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestJoinGroupEntity implements Serializable {
    private String groupId;

    public RequestJoinGroupEntity(String groupId) {
        Intrinsics.h(groupId, "groupId");
        this.groupId = groupId;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }
}
