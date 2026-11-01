package com.therouter;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\b\u0010\u000f\u001a\u00020\u0007H\u0016R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/therouter/Task;", "Ljava/lang/Runnable;", CampaignEx.JSON_KEY_AD_R, "trace", "", "block", "Lkotlin/Function0;", "", "(Ljava/lang/Runnable;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "getBlock", "()Lkotlin/jvm/functions/Function0;", "getR", "()Ljava/lang/Runnable;", "getTrace", "()Ljava/lang/String;", "run", "router_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class Task implements Runnable {
    private final Function0<Unit> block;
    private final Runnable r;
    private final String trace;

    public Task(Runnable r11, String trace, Function0<Unit> block) {
        Intrinsics.h(r11, "r");
        Intrinsics.h(trace, "trace");
        Intrinsics.h(block, "block");
        this.r = r11;
        this.trace = trace;
        this.block = block;
    }

    public final Function0<Unit> getBlock() {
        return this.block;
    }

    public final Runnable getR() {
        return this.r;
    }

    public final String getTrace() {
        return this.trace;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.r.run();
        } finally {
            this.block.invoke();
        }
    }
}
