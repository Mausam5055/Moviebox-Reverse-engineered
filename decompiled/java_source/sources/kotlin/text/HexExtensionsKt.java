package kotlin.text;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0010\u0016\n\u0002\b\u0004\" \u0010\u0006\u001a\u00020\u00008\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0001\u0010\u0002\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0001\u0010\u0003\"\u0014\u0010\b\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0002\"\u0014\u0010\n\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0002\"\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"", "a", "[I", "()[I", "getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations", "()V", "BYTE_TO_LOWER_CASE_HEX_DIGITS", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "BYTE_TO_UPPER_CASE_HEX_DIGITS", "c", "HEX_DIGITS_TO_DECIMAL", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "[J", "HEX_DIGITS_TO_LONG_DECIMAL", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HexExtensionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f67503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f67504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f67505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long[] f67506d;

    static {
        int[] iArr = new int[256];
        int i11 = 0;
        for (int i12 = 0; i12 < 256; i12++) {
            iArr[i12] = "0123456789abcdef".charAt(i12 & 15) | ("0123456789abcdef".charAt(i12 >> 4) << '\b');
        }
        f67503a = iArr;
        int[] iArr2 = new int[256];
        for (int i13 = 0; i13 < 256; i13++) {
            iArr2[i13] = "0123456789ABCDEF".charAt(i13 & 15) | ("0123456789ABCDEF".charAt(i13 >> 4) << '\b');
        }
        f67504b = iArr2;
        int[] iArr3 = new int[256];
        for (int i14 = 0; i14 < 256; i14++) {
            iArr3[i14] = -1;
        }
        int i15 = 0;
        int i16 = 0;
        while (i15 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i15)] = i16;
            i15++;
            i16++;
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i17)] = i18;
            i17++;
            i18++;
        }
        f67505c = iArr3;
        long[] jArr = new long[256];
        for (int i19 = 0; i19 < 256; i19++) {
            jArr[i19] = -1;
        }
        int i20 = 0;
        int i21 = 0;
        while (i20 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i20)] = i21;
            i20++;
            i21++;
        }
        int i22 = 0;
        while (i11 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i11)] = i22;
            i11++;
            i22++;
        }
        f67506d = jArr;
    }

    public static final int[] a() {
        return f67503a;
    }
}
