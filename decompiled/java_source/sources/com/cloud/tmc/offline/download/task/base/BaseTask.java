package com.cloud.tmc.offline.download.task.base;

import android.os.SystemClock;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.utils.OfflineUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0013\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0001H\u0096\u0002J\b\u0010'\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR2\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010 \u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/cloud/tmc/offline/download/task/base/BaseTask;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "name", "", "startTaskTime", "", "(Ljava/lang/String;J)V", "_id", "_priority", "", "_sequence", "id", "getId", "()Ljava/lang/String;", "isIdleRunTask", "", "()Z", "getName", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, TrackingKey.PRIORITY, "getPriority", "()I", "setPriority", "(I)V", "sequence", "getSequence", "setSequence", "getStartTaskTime", "()J", "compareTo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "toString", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseTask implements ITask {
    private String _id;
    private int _priority;
    private int _sequence;
    private final String name;
    private Function2<? super ITask, ? super TaskResult<?>, Unit> onResult;
    private final long startTaskTime;

    public BaseTask(String name, long j11) {
        Intrinsics.h(name, "name");
        this.name = name;
        this.startTaskTime = j11;
        this._priority = 5;
        this._id = OfflineUtils.INSTANCE.generateUniqueId();
    }

    public /* synthetic */ BaseTask(String str, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? SystemClock.elapsedRealtime() : j11);
    }

    @Override // java.lang.Comparable
    public int compareTo(ITask other) {
        int i11;
        int i12;
        Intrinsics.h(other, "other");
        if (getPriority() == other.getPriority()) {
            i11 = get_sequence();
            i12 = other.get_sequence();
        } else {
            i11 = getPriority();
            i12 = other.getPriority();
        }
        return i11 - i12;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    /* JADX INFO: renamed from: getId, reason: from getter */
    public String get_id() {
        return this._id;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public String getName() {
        return this.name;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public Function2<ITask, TaskResult<?>, Unit> getOnResult() {
        return this.onResult;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public int getPriority() {
        return this._priority;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    /* JADX INFO: renamed from: getSequence, reason: from getter */
    public int get_sequence() {
        return this._sequence;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public long getStartTaskTime() {
        return this.startTaskTime;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    /* JADX INFO: renamed from: isIdleRunTask */
    public boolean getIsIdleRunTask() {
        return false;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        this.onResult = function2;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void setPriority(int i11) {
        this._priority = i11;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void setSequence(int i11) {
        this._sequence = i11;
    }

    public String toString() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", getName());
        jsonObject.addProperty("id", get_id());
        jsonObject.addProperty("sequence", Integer.valueOf(get_sequence()));
        jsonObject.addProperty(TrackingKey.PRIORITY, Integer.valueOf(getPriority()));
        jsonObject.addProperty("isIdleRunTask", Boolean.valueOf(getIsIdleRunTask()));
        String string = jsonObject.toString();
        Intrinsics.g(string, "JsonObject().apply {\n   …ask)\n        }.toString()");
        return string;
    }
}
