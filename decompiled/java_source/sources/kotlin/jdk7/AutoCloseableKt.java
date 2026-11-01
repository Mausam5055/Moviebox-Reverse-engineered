package kotlin.jdk7;

import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmName;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a%\u0010\u0005\u001a\u00020\u0004*\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0001¢\u0006\u0004\b\u0005\u0010\u0006*\u001a\b\u0007\u0010\n\"\u00020\u00002\u00020\u0000B\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t¨\u0006\u000b"}, d2 = {"Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "", "cause", "", "a", "(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V", "Lkotlin/SinceKotlin;", "version", MBridgeConstans.NATIVE_VIDEO_VERSION, "AutoCloseable", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class AutoCloseableKt {
    public static final void a(AutoCloseable autoCloseable, Throwable th2) throws Exception {
        if (autoCloseable != null) {
            if (th2 == null) {
                autoCloseable.close();
                return;
            }
            try {
                autoCloseable.close();
            } catch (Throwable th3) {
                ExceptionsKt.a(th2, th3);
            }
        }
    }
}
