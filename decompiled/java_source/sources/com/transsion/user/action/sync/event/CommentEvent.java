package com.transsion.user.action.sync.event;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J3\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/transsion/user/action/sync/event/CommentEvent;", "Ljava/io/Serializable;", NotificationCompat.CATEGORY_STATUS, "", "commentsId", "", "commentsNum", "subjectId", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getStatus", "()Z", "getCommentsId", "()Ljava/lang/String;", "getCommentsNum", "getSubjectId", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CommentEvent implements Serializable {
    private final String commentsId;
    private final String commentsNum;
    private final boolean status;
    private final String subjectId;

    public CommentEvent(boolean z10, String commentsId, String commentsNum, String str) {
        Intrinsics.h(commentsId, "commentsId");
        Intrinsics.h(commentsNum, "commentsNum");
        this.status = z10;
        this.commentsId = commentsId;
        this.commentsNum = commentsNum;
        this.subjectId = str;
    }

    public /* synthetic */ CommentEvent(boolean z10, String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, str, str2, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ CommentEvent copy$default(CommentEvent commentEvent, boolean z10, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = commentEvent.status;
        }
        if ((i11 & 2) != 0) {
            str = commentEvent.commentsId;
        }
        if ((i11 & 4) != 0) {
            str2 = commentEvent.commentsNum;
        }
        if ((i11 & 8) != 0) {
            str3 = commentEvent.subjectId;
        }
        return commentEvent.copy(z10, str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCommentsId() {
        return this.commentsId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCommentsNum() {
        return this.commentsNum;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    public final CommentEvent copy(boolean status, String commentsId, String commentsNum, String subjectId) {
        Intrinsics.h(commentsId, "commentsId");
        Intrinsics.h(commentsNum, "commentsNum");
        return new CommentEvent(status, commentsId, commentsNum, subjectId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentEvent)) {
            return false;
        }
        CommentEvent commentEvent = (CommentEvent) other;
        return this.status == commentEvent.status && Intrinsics.c(this.commentsId, commentEvent.commentsId) && Intrinsics.c(this.commentsNum, commentEvent.commentsNum) && Intrinsics.c(this.subjectId, commentEvent.subjectId);
    }

    public final String getCommentsId() {
        return this.commentsId;
    }

    public final String getCommentsNum() {
        return this.commentsNum;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        int iA = ((((e.a(this.status) * 31) + this.commentsId.hashCode()) * 31) + this.commentsNum.hashCode()) * 31;
        String str = this.subjectId;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CommentEvent(status=" + this.status + ", commentsId=" + this.commentsId + ", commentsNum=" + this.commentsNum + ", subjectId=" + this.subjectId + ")";
    }
}
