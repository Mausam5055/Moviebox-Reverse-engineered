package kotlin.text;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0006R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0006R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlin/text/Charsets;", "", "<init>", "()V", "Ljava/nio/charset/Charset;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/nio/charset/Charset;", "UTF_8", "c", "UTF_16", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "UTF_16BE", "e", "UTF_16LE", "f", "US_ASCII", "g", "ISO_8859_1", "h", "utf_32le", "i", "utf_32be", "()Ljava/nio/charset/Charset;", "UTF_32LE", "a", "UTF_32BE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Charsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charsets f67484a = new Charsets();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Charset UTF_8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final Charset UTF_16;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public static final Charset UTF_16BE;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Charset UTF_16LE;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Charset US_ASCII;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Charset ISO_8859_1;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private static volatile Charset utf_32le;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private static volatile Charset utf_32be;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        Intrinsics.g(charsetForName, "forName(...)");
        UTF_8 = charsetForName;
        Charset charsetForName2 = Charset.forName(C.UTF16_NAME);
        Intrinsics.g(charsetForName2, "forName(...)");
        UTF_16 = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        Intrinsics.g(charsetForName3, "forName(...)");
        UTF_16BE = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        Intrinsics.g(charsetForName4, "forName(...)");
        UTF_16LE = charsetForName4;
        Charset charsetForName5 = Charset.forName(C.ASCII_NAME);
        Intrinsics.g(charsetForName5, "forName(...)");
        US_ASCII = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        Intrinsics.g(charsetForName6, "forName(...)");
        ISO_8859_1 = charsetForName6;
    }

    private Charsets() {
    }

    public final Charset a() {
        Charset charset = utf_32be;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        Intrinsics.g(charsetForName, "forName(...)");
        utf_32be = charsetForName;
        return charsetForName;
    }

    public final Charset b() {
        Charset charset = utf_32le;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        Intrinsics.g(charsetForName, "forName(...)");
        utf_32le = charsetForName;
        return charsetForName;
    }
}
