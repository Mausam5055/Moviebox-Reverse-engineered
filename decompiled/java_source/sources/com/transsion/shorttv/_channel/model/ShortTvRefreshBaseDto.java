package com.transsion.shorttv._channel.model;

import androidx.core.app.NotificationCompat;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvRefreshBaseDto;", "T", "Lcom/tn/lib/net/bean/BaseDto;", NotificationCompat.CATEGORY_MESSAGE, "", "code", "data", "reason", "isRefresh", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V", "()Z", "setRefresh", "(Z)V", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvRefreshBaseDto<T> extends BaseDto<T> {
    private boolean isRefresh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvRefreshBaseDto(String msg, String code, T t11, String reason, boolean z10) {
        super(msg, code, t11, reason);
        Intrinsics.h(msg, "msg");
        Intrinsics.h(code, "code");
        Intrinsics.h(reason, "reason");
        this.isRefresh = z10;
    }

    /* JADX INFO: renamed from: isRefresh, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }
}
