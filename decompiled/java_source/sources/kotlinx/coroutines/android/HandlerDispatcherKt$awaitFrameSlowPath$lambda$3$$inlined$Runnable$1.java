package kotlinx.coroutines.android;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1 implements Runnable {
    final /* synthetic */ n $cont$inlined;

    public HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1(n nVar) {
        this.$cont$inlined = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g.g(this.$cont$inlined);
    }
}
