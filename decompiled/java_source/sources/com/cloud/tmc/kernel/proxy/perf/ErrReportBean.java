package com.cloud.tmc.kernel.proxy.perf;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR(\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\b¨\u00063"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;", "", "()V", "aggregationType", "", "getAggregationType", "()Ljava/lang/String;", "setAggregationType", "(Ljava/lang/String;)V", "arg1", "getArg1", "setArg1", "arg2", "getArg2", "setArg2", "arg3", "getArg3", "setArg3", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "", "getArgs", "()Ljava/util/Map;", "setArgs", "(Ljava/util/Map;)V", "errorAggregationCode", "getErrorAggregationCode", "setErrorAggregationCode", "errorDetail", "getErrorDetail", "setErrorDetail", "errorId", "getErrorId", "setErrorId", "errorType", "getErrorType", "setErrorType", "thread", "Ljava/lang/Thread;", "getThread", "()Ljava/lang/Thread;", "setThread", "(Ljava/lang/Thread;)V", "throwable", "", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "version", "getVersion", "setVersion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ErrReportBean {
    private String aggregationType;
    private String arg1;
    private String arg2;
    private String arg3;
    private Map<String, String> args;
    private String errorAggregationCode;
    private String errorDetail;
    private String errorId;
    private String errorType;
    private Thread thread;
    private Throwable throwable;
    private String version;

    public final String getAggregationType() {
        return this.aggregationType;
    }

    public final String getArg1() {
        return this.arg1;
    }

    public final String getArg2() {
        return this.arg2;
    }

    public final String getArg3() {
        return this.arg3;
    }

    public final Map<String, String> getArgs() {
        return this.args;
    }

    public final String getErrorAggregationCode() {
        return this.errorAggregationCode;
    }

    public final String getErrorDetail() {
        return this.errorDetail;
    }

    public final String getErrorId() {
        return this.errorId;
    }

    public final String getErrorType() {
        return this.errorType;
    }

    public final Thread getThread() {
        return this.thread;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setAggregationType(String str) {
        this.aggregationType = str;
    }

    public final void setArg1(String str) {
        this.arg1 = str;
    }

    public final void setArg2(String str) {
        this.arg2 = str;
    }

    public final void setArg3(String str) {
        this.arg3 = str;
    }

    public final void setArgs(Map<String, String> map) {
        this.args = map;
    }

    public final void setErrorAggregationCode(String str) {
        this.errorAggregationCode = str;
    }

    public final void setErrorDetail(String str) {
        this.errorDetail = str;
    }

    public final void setErrorId(String str) {
        this.errorId = str;
    }

    public final void setErrorType(String str) {
        this.errorType = str;
    }

    public final void setThread(Thread thread) {
        this.thread = thread;
    }

    public final void setThrowable(Throwable th2) {
        this.throwable = th2;
    }

    public final void setVersion(String str) {
        this.version = str;
    }
}
