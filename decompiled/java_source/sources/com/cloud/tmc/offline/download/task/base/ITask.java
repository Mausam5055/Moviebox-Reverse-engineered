package com.cloud.tmc.offline.download.task.base;

import com.cloud.tmc.offline.download.model.TaskResult;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001J\"\u0010$\u001a\u00020\u000e2\u0018\u0010%\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010&H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\bR\u0012\u0010\t\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0005R0\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0000\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fX¦\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u00020\u0014X¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0019\u001a\u00020\u0014X¦\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u0012\u0010\u001c\u001a\u00020\u001dX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010 \u001a\u00020\u0003X¦\u0004¢\u0006\f\u0012\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u0005¨\u0006'"}, d2 = {"Lcom/cloud/tmc/offline/download/task/base/ITask;", "", "id", "", "getId", "()Ljava/lang/String;", "isIdleRunTask", "", "()Z", "name", "getName", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", TrackingKey.PRIORITY, "", "getPriority", "()I", "setPriority", "(I)V", "sequence", "getSequence", "setSequence", "startTaskTime", "", "getStartTaskTime", "()J", "trigger", "getTrigger$annotations", "()V", "getTrigger", "run", "block", "Lkotlin/Function1;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface ITask extends Comparable<ITask> {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ void getTrigger$annotations() {
        }
    }

    /* JADX INFO: renamed from: getId */
    String get_id();

    String getName();

    Function2<ITask, TaskResult<?>, Unit> getOnResult();

    /* JADX INFO: renamed from: getPriority */
    int get_priority();

    /* JADX INFO: renamed from: getSequence */
    int get_sequence();

    long getStartTaskTime();

    String getTrigger();

    boolean isIdleRunTask();

    void run(Function1<? super TaskResult<?>, Unit> block);

    void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2);

    void setPriority(int i11);

    void setSequence(int i11);
}
