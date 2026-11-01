package com.transsion.publish.view.operation;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/transsion/publish/view/operation/OperationBean;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "disable", "<init>", "(III)V", "getType", "()I", "setType", "(I)V", "getEnable", "setEnable", "getDisable", "setDisable", NotificationCompat.CATEGORY_STATUS, "", "getStatus", "()Z", "setStatus", "(Z)V", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OperationBean implements Serializable {
    private int disable;
    private int enable;
    private boolean status = true;
    private int type;

    public OperationBean(int i11, int i12, int i13) {
        this.type = i11;
        this.enable = i12;
        this.disable = i13;
    }

    public final int getDisable() {
        return this.disable;
    }

    public final int getEnable() {
        return this.enable;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    public final void setDisable(int i11) {
        this.disable = i11;
    }

    public final void setEnable(int i11) {
        this.enable = i11;
    }

    public final void setStatus(boolean z10) {
        this.status = z10;
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
