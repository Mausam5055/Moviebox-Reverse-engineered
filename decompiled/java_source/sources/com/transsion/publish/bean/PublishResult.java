package com.transsion.publish.bean;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\"\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\t\u001a\u0004\b\u0017\u0010\u000b\"\u0004\b\u0018\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/transsion/publish/bean/PublishResult;", "Ljava/io/Serializable;", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "", "state", "I", "getState", "()I", "setState", "(I)V", NotificationCompat.CATEGORY_PROGRESS, "getProgress", "setProgress", "postId", "Ljava/lang/String;", "getPostId", "setPostId", "(Ljava/lang/String;)V", EventConstants.KEY_SOURCE, "getSource", "setSource", "Companion", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PublishResult implements Serializable {
    public static final int CANCEL = 4;
    public static final int FAIL = 2;
    public static final int START = 0;
    public static final int SUCCEED = 1;
    public static final int UPLOADING = 3;
    private String postId = "";
    private int progress;
    private int source;
    private int state;

    public final String getPostId() {
        return this.postId;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getState() {
        return this.state;
    }

    public final void setPostId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.postId = str;
    }

    public final void setProgress(int i11) {
        this.progress = i11;
    }

    public final void setSource(int i11) {
        this.source = i11;
    }

    public final void setState(int i11) {
        this.state = i11;
    }

    public String toString() {
        return "PublishResult(state=" + this.state + ", progress=" + this.progress + ")";
    }
}
