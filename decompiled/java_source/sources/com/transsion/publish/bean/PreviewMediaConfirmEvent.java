package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0005¨\u0006\f"}, d2 = {"Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(I)V", "getType", "()I", "setType", "from", "getFrom", "setFrom", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PreviewMediaConfirmEvent implements Serializable {
    private int from;
    private int type;

    public PreviewMediaConfirmEvent() {
        this(0, 1, null);
    }

    public PreviewMediaConfirmEvent(int i11) {
        this.type = i11;
    }

    public /* synthetic */ PreviewMediaConfirmEvent(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public final int getFrom() {
        return this.from;
    }

    public final int getType() {
        return this.type;
    }

    public final void setFrom(int i11) {
        this.from = i11;
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
