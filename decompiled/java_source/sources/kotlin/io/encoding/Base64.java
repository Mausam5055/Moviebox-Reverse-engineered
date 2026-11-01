package kotlin.io.encoding;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
@ExperimentalEncodingApi
@SinceKotlin
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0017\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0015B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u0006\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "", "isUrlSafe", "isMimeScheme", "Lkotlin/io/encoding/Base64$PaddingOption;", "paddingOption", "<init>", "(ZZLkotlin/io/encoding/Base64$PaddingOption;)V", "a", "Z", "isUrlSafe$kotlin_stdlib", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "isMimeScheme$kotlin_stdlib", "c", "Lkotlin/io/encoding/Base64$PaddingOption;", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "PaddingOption", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class Base64 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f67239e = {13, 10};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Base64 f67240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Base64 f67241g;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final boolean isUrlSafe;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final boolean isMimeScheme;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final PaddingOption paddingOption;

    @SinceKotlin
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "<init>", "(Ljava/lang/String;I)V", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum PaddingOption {
        PRESENT,
        ABSENT,
        PRESENT_OPTIONAL,
        ABSENT_OPTIONAL;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<PaddingOption> getEntries() {
            return $ENTRIES;
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        f67240f = new Base64(true, false, paddingOption);
        f67241g = new Base64(false, true, paddingOption);
    }

    private Base64(boolean z10, boolean z11, PaddingOption paddingOption) {
        this.isUrlSafe = z10;
        this.isMimeScheme = z11;
        this.paddingOption = paddingOption;
        if (z10 && z11) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public /* synthetic */ Base64(boolean z10, boolean z11, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, paddingOption);
    }
}
