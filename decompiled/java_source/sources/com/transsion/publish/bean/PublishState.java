package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\f"}, d2 = {"Lcom/transsion/publish/bean/PublishState;", "Ljava/io/Serializable;", "", "state", "<init>", "(I)V", "I", "getState", "()I", "setState", "Companion", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PublishState implements Serializable {
    public static final int HIDE = 2;
    public static final int SHOW = 1;
    private int state;

    public PublishState(int i11) {
        this.state = i11;
    }

    public final int getState() {
        return this.state;
    }

    public final void setState(int i11) {
        this.state = i11;
    }
}
