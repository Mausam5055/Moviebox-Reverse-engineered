package kotlin.internal.jdk8;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.internal.jdk7.JDK7PlatformImplementations;
import kotlin.random.Random;
import kotlin.random.jdk8.PlatformThreadLocalRandom;
import kotlin.time.Clock;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlin/internal/jdk8/JDK8PlatformImplementations;", "Lkotlin/internal/jdk7/JDK7PlatformImplementations;", "<init>", "()V", "", "version", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(I)Z", "Lkotlin/random/Random;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lkotlin/random/Random;", "Lkotlin/time/Clock;", "c", "()Lkotlin/time/Clock;", "a", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class JDK8PlatformImplementations extends JDK7PlatformImplementations {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f67198a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Integer f67199b;

        static {
            Integer num;
            Integer num2 = null;
            try {
                Object obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
                num = obj instanceof Integer ? (Integer) obj : null;
            } catch (Throwable unused) {
            }
            if (num != null && num.intValue() > 0) {
                num2 = num;
            }
            f67199b = num2;
        }

        private a() {
        }
    }

    private final boolean d(int version) {
        Integer num = a.f67199b;
        return num == null || num.intValue() >= version;
    }

    @Override // kotlin.internal.PlatformImplementations
    public Random b() {
        return d(34) ? new PlatformThreadLocalRandom() : super.b();
    }

    @Override // kotlin.internal.PlatformImplementations
    public Clock c() {
        return d(26) ? new Clock() { // from class: kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$1
        } : new Clock() { // from class: kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$2
        };
    }
}
