package com.transsion.edcation.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/edcation/bean/CourseBody;", "Ljava/io/Serializable;", "subjectId", "", EventConstants.KEY_ACTION, "", "<init>", "(Ljava/lang/String;I)V", "getSubjectId", "()Ljava/lang/String;", "getAction", "()I", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CourseBody implements Serializable {
    private final int action;
    private final String subjectId;

    public CourseBody(String subjectId, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.action = i11;
    }

    public final int getAction() {
        return this.action;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }
}
