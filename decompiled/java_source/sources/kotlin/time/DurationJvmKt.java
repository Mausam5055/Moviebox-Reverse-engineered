package kotlin.time;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001a\u0010\u0004\u001a\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0001\u0010\u0003\" \u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"", "a", "Z", "()Z", "durationAssertionsEnabled", "", "Ljava/lang/ThreadLocal;", "Ljava/text/DecimalFormat;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "[Ljava/lang/ThreadLocal;", "precisionFormats", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DurationJvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f67588a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal[] f67589b;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i11 = 0; i11 < 4; i11++) {
            threadLocalArr[i11] = new ThreadLocal();
        }
        f67589b = threadLocalArr;
    }

    public static final boolean a() {
        return f67588a;
    }
}
