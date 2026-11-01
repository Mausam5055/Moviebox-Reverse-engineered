package com.cloud.tmc.offline.download.model;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0018\u0019\u001aB=\b\u0004\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0017\u001a\u00020\tH\u0016R\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0016\u0082\u0001\u0003\u001b\u001c\u001d¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/offline/download/model/TaskResult;", "T", "", "data", "delay", "", "errorCode", "", "errorMsg", "", "isTrace", "", "(Ljava/lang/Object;JILjava/lang/String;Z)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getDelay", "()J", "getErrorCode", "()I", "getErrorMsg", "()Ljava/lang/String;", "()Z", "toString", "Failure", "Retry", "Success", "Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;", "Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;", "Lcom/cloud/tmc/offline/download/model/TaskResult$Success;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class TaskResult<T> {
    private final T data;
    private final long delay;
    private final int errorCode;
    private final String errorMsg;
    private final boolean isTrace;

    @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "errorCode", "", "errorMsg", "isTrace", "", "(ILjava/lang/String;Z)V", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Failure extends TaskResult<String> {
        public Failure() {
            this(0, null, false, 7, null);
        }

        public Failure(int i11, String str, boolean z10) {
            super(null, 0L, i11, str, z10, 3, null);
        }

        public /* synthetic */ Failure(int i11, String str, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 1000 : i11, (i12 & 2) != 0 ? "" : str, (i12 & 4) != 0 ? false : z10);
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "delay", "", "(J)V", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Retry extends TaskResult<String> {
        public Retry() {
            this(0L, 1, null);
        }

        public Retry(long j11) {
            super(null, j11, 201, null, false, 25, null);
        }

        public /* synthetic */ Retry(long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 100L : j11);
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/offline/download/model/TaskResult$Success;", "T", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "data", "isTrace", "", "(Ljava/lang/Object;Z)V", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Success<T> extends TaskResult<T> {
        /* JADX WARN: Illegal instructions before constructor call */
        public Success() {
            DefaultConstructorMarker defaultConstructorMarker = null;
            this(defaultConstructorMarker, false, 3, defaultConstructorMarker);
        }

        public Success(T t11, boolean z10) {
            super(t11, 0L, 200, null, z10, 10, null);
        }

        public /* synthetic */ Success(Object obj, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : obj, (i11 & 2) != 0 ? false : z10);
        }
    }

    private TaskResult(T t11, long j11, int i11, String str, boolean z10) {
        this.data = t11;
        this.delay = j11;
        this.errorCode = i11;
        this.errorMsg = str;
        this.isTrace = z10;
    }

    public /* synthetic */ TaskResult(Object obj, long j11, int i11, String str, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : obj, (i12 & 2) != 0 ? 100L : j11, (i12 & 4) != 0 ? 200 : i11, (i12 & 8) == 0 ? str : null, (i12 & 16) != 0 ? false : z10, null);
    }

    public /* synthetic */ TaskResult(Object obj, long j11, int i11, String str, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, j11, i11, str, z10);
    }

    public final T getData() {
        return this.data;
    }

    public final long getDelay() {
        return this.delay;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMsg() {
        return this.errorMsg;
    }

    /* JADX INFO: renamed from: isTrace, reason: from getter */
    public final boolean getIsTrace() {
        return this.isTrace;
    }

    public String toString() {
        if (this instanceof Success) {
            return "Success[data=" + this.data + "]";
        }
        if (!(this instanceof Failure)) {
            if (!(this instanceof Retry)) {
                throw new NoWhenBranchMatchedException();
            }
            return "Retry[delay=" + this.delay + "]";
        }
        return "Failure[errorCode=" + this.errorCode + ", errorMsg=" + this.errorMsg + "]";
    }
}
