package androidx.work.impl.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/work/impl/utils/StopWorkRunnable;", "Ljava/lang/Runnable;", "Landroidx/work/impl/s;", "processor", "Landroidx/work/impl/y;", "token", "", "stopInForeground", "", "reason", "<init>", "(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V", "(Landroidx/work/impl/s;Landroidx/work/impl/y;Z)V", "", "run", "()V", "Landroidx/work/impl/s;", "Landroidx/work/impl/y;", "Z", "I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class StopWorkRunnable implements Runnable {
    private final androidx.work.impl.s processor;
    private final int reason;
    private final boolean stopInForeground;
    private final androidx.work.impl.y token;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StopWorkRunnable(androidx.work.impl.s processor, androidx.work.impl.y token, boolean z10) {
        this(processor, token, z10, -512);
        Intrinsics.h(processor, "processor");
        Intrinsics.h(token, "token");
    }

    public StopWorkRunnable(androidx.work.impl.s processor, androidx.work.impl.y token, boolean z10, int i11) {
        Intrinsics.h(processor, "processor");
        Intrinsics.h(token, "token");
        this.processor = processor;
        this.token = token;
        this.stopInForeground = z10;
        this.reason = i11;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zU = this.stopInForeground ? this.processor.u(this.token, this.reason) : this.processor.v(this.token, this.reason);
        androidx.work.t.e().a(androidx.work.t.i("StopWorkRunnable"), "StopWorkRunnable for " + this.token.a().b() + "; Processor.stopWork = " + zU);
    }
}
