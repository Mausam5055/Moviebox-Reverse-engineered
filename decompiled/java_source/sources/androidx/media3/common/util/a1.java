package androidx.media3.common.util;

import android.app.Notification;
import android.app.Service;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.ParserException;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f10350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f10351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f10352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f10353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f10354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f10355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long[] f10356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f10357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f10358i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f10359j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f10360k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static HashMap f10361l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f10362m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f10363n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f10364o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f10365p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f10366q;

    private static class a {
        public static void a(Service service, int i11, Notification notification, int i12, String str) {
            try {
                service.startForeground(i11, notification, i12);
            } catch (RuntimeException e11) {
                u.c("Util", "The service must be declared with a foregroundServiceType that includes " + str);
                throw e11;
            }
        }
    }

    static {
        int i11 = Build.VERSION.SDK_INT;
        f10350a = i11;
        String str = Build.DEVICE;
        f10351b = str;
        String str2 = Build.MANUFACTURER;
        f10352c = str2;
        String str3 = Build.MODEL;
        f10353d = str3;
        f10354e = str + ", " + str3 + ", " + str2 + ", " + i11;
        f10355f = new byte[0];
        f10356g = new long[0];
        f10357h = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f10358i = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f10359j = Pattern.compile("%([A-Fa-f0-9]{2})");
        f10360k = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f10362m = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f10363n = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f10364o = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f10365p = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f10366q = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 126, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 196, 195, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 144, 151, 158, 153, 140, 139, 130, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 168, 175, 166, 161, 180, 179, 186, PsExtractor.PRIVATE_STREAM_1, 199, PsExtractor.AUDIO_STREAM, 201, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 200, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, 211, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, 105, 110, 103, 96, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_EMPTY_VALUE, 194, 197, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static Handler A() {
        return B(null);
    }

    public static int A0(Uri uri, String str) {
        if (str == null) {
            return y0(uri);
        }
        switch (str) {
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/dash+xml":
                return 0;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    public static Handler B(Handler.Callback callback) {
        return z((Looper) androidx.media3.common.util.a.i(Looper.myLooper()), callback);
    }

    public static boolean B0(j0 j0Var, j0 j0Var2, Inflater inflater) {
        if (j0Var.a() <= 0) {
            return false;
        }
        if (j0Var2.b() < j0Var.a()) {
            j0Var2.c(j0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(j0Var.e(), j0Var.f(), j0Var.a());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(j0Var2.e(), iInflate, j0Var2.b() - iInflate);
                if (inflater.finished()) {
                    j0Var2.V(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    if (iInflate == j0Var2.b()) {
                        j0Var2.c(j0Var2.b() * 2);
                    }
                }
                inflater.reset();
                return false;
            } catch (DataFormatException unused) {
                inflater.reset();
                return false;
            } catch (Throwable th2) {
                inflater.reset();
                throw th2;
            }
        }
    }

    public static Handler C() {
        return D(null);
    }

    public static String C0(int i11) {
        return Integer.toString(i11, 36);
    }

    public static Handler D(Handler.Callback callback) {
        return z(X(), callback);
    }

    public static boolean D0(Context context) {
        return f10350a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    private static HashMap E() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap map = new HashMap(iSOLanguages.length + f10362m.length);
        int i11 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f10362m;
            if (i11 >= strArr.length) {
                return map;
            }
            map.put(strArr[i11], strArr[i11 + 1]);
            i11 += 2;
        }
    }

    public static boolean E0(String str) {
        str.hashCode();
        switch (str) {
            case "image/avif":
                return f10350a >= 34;
            case "image/heic":
            case "image/heif":
                return f10350a >= 26;
            case "image/jpeg":
            case "image/webp":
            case "image/bmp":
            case "image/png":
                return true;
            default:
                return false;
        }
    }

    public static long F(long j11, int i11) {
        return g1(j11, i11, 1000000L, RoundingMode.UP);
    }

    public static boolean F0(int i11) {
        return i11 == 21 || i11 == 1342177280 || i11 == 22 || i11 == 1610612736 || i11 == 4;
    }

    public static String G(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static boolean G0(int i11) {
        return i11 == 3 || i11 == 2 || i11 == 268435456 || i11 == 21 || i11 == 1342177280 || i11 == 22 || i11 == 1610612736 || i11 == 4;
    }

    public static String H(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    public static boolean H0(Context context) {
        int i11 = f10350a;
        if (i11 >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
            if (i11 != 30) {
                if (i11 == 34) {
                }
                return false;
            }
            String str = Build.MODEL;
            if (!com.google.common.base.a.a(str, "moto g(20)") && !com.google.common.base.a.a(str, "rmx3231")) {
                if (i11 == 34 || !com.google.common.base.a.a(Build.MODEL, "sm-x200")) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String I(byte[] bArr, int i11, int i12) {
        return new String(bArr, i11, i12, StandardCharsets.UTF_8);
    }

    public static boolean I0(int i11) {
        return i11 == 10 || i11 == 13;
    }

    public static int J(Context context) {
        return t1.m.c(context).generateAudioSessionId();
    }

    public static boolean J0(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE.equals(scheme);
    }

    public static int K(int i11) {
        if (i11 == 20) {
            return 30;
        }
        if (i11 == 22) {
            return 31;
        }
        if (i11 == 30) {
            return 34;
        }
        switch (i11) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i11) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        return Integer.MAX_VALUE;
                }
        }
    }

    public static boolean K0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static AudioFormat L(int i11, int i12, int i13) {
        return new AudioFormat.Builder().setSampleRate(i11).setChannelMask(i12).setEncoding(i13).build();
    }

    public static boolean L0(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static int M(int i11) {
        if (i11 == 10) {
            return f10350a >= 32 ? 737532 : 6396;
        }
        if (i11 == 12) {
            return 743676;
        }
        if (i11 == 24) {
            return f10350a >= 32 ? 67108860 : 0;
        }
        switch (i11) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE;
            case 5:
                return Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread M0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static String N(int i11) {
        if (i11 == 0) {
            return "undefined";
        }
        if (i11 == 1) {
            return "original";
        }
        if (i11 == 2) {
            return "depth-linear";
        }
        if (i11 == 3) {
            return "depth-inverse";
        }
        if (i11 == 4) {
            return "depth metadata";
        }
        throw new IllegalStateException("Unsupported auxiliary track type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread N0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static androidx.media3.common.a0.b O(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.b bVar) {
        boolean zIsPlayingAd = a0Var.isPlayingAd();
        boolean zS = a0Var.s();
        boolean zQ = a0Var.q();
        boolean zG = a0Var.g();
        boolean z10 = a0Var.z();
        boolean zI = a0Var.i();
        boolean zQ2 = a0Var.getCurrentTimeline().q();
        boolean z11 = false;
        androidx.media3.common.a0.b.a aVarD = new androidx.media3.common.a0.b.a().b(bVar).d(4, !zIsPlayingAd).d(5, zS && !zIsPlayingAd).d(6, zQ && !zIsPlayingAd).d(7, !zQ2 && (zQ || !z10 || zS) && !zIsPlayingAd).d(8, zG && !zIsPlayingAd).d(9, !zQ2 && (zG || (z10 && zI)) && !zIsPlayingAd).d(10, !zIsPlayingAd).d(11, zS && !zIsPlayingAd);
        if (zS && !zIsPlayingAd) {
            z11 = true;
        }
        return aVarD.d(12, z11).e();
    }

    public static int O0(int[] iArr, int i11) {
        for (int i12 = 0; i12 < iArr.length; i12++) {
            if (iArr[i12] == i11) {
                return i12;
            }
        }
        return -1;
    }

    public static int P(ByteBuffer byteBuffer, int i11) {
        int i12 = byteBuffer.getInt(i11);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i12 : Integer.reverseBytes(i12);
    }

    public static boolean P0(j0 j0Var, j0 j0Var2, Inflater inflater) {
        return j0Var.a() > 0 && j0Var.j() == 120 && B0(j0Var, j0Var2, inflater);
    }

    public static int Q(int i11) {
        if (i11 != 2) {
            if (i11 == 3) {
                return 1;
            }
            if (i11 != 4) {
                if (i11 != 21) {
                    if (i11 != 22) {
                        if (i11 != 268435456) {
                            if (i11 != 1342177280) {
                                if (i11 != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    private static String Q0(String str) {
        int i11 = 0;
        while (true) {
            String[] strArr = f10363n;
            if (i11 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i11])) {
                return strArr[i11 + 1] + str.substring(strArr[i11].length());
            }
            i11 += 2;
        }
    }

    public static int R(String str, int i11) {
        int i12 = 0;
        for (String str2 : q1(str)) {
            if (i11 == androidx.media3.common.y.m(str2)) {
                i12++;
            }
        }
        return i12;
    }

    public static long R0(long j11) {
        return (j11 == C.TIME_UNSET || j11 == Long.MIN_VALUE) ? j11 : j11 * 1000;
    }

    public static String S(String str, int i11) {
        String[] strArrQ1 = q1(str);
        if (strArrQ1.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrQ1) {
            if (i11 == androidx.media3.common.y.m(str2)) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
        }
        if (sb2.length() > 0) {
            return sb2.toString();
        }
        return null;
    }

    public static ExecutorService S0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.x0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return a1.M0(str, runnable);
            }
        });
    }

    public static String T(String str, int i11) {
        String[] strArrQ1 = q1(str);
        if (strArrQ1.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrQ1) {
            if (i11 != androidx.media3.common.y.m(str2)) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
        }
        if (sb2.length() > 0) {
            return sb2.toString();
        }
        return null;
    }

    public static ScheduledExecutorService T0(final String str) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.y0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return a1.N0(str, runnable);
            }
        });
    }

    public static String U(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return com.google.common.base.a.g(networkCountryIso);
            }
        }
        return com.google.common.base.a.g(Locale.getDefault().getCountry());
    }

    public static String U0(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        String strE = com.google.common.base.a.e(str);
        String str2 = p1(strE, "-")[0];
        if (f10361l == null) {
            f10361l = E();
        }
        String str3 = (String) f10361l.get(str2);
        if (str3 != null) {
            strE = str3 + strE.substring(str2.length());
            str2 = str3;
        }
        return ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) ? Q0(strE) : strE;
    }

    public static Point V(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            display = ((WindowManager) androidx.media3.common.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return W(context, display);
    }

    public static Object[] V0(Object[] objArr, Object obj) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
        objArrCopyOf[objArr.length] = obj;
        return j(objArrCopyOf);
    }

    public static Point W(Context context, Display display) {
        if (display.getDisplayId() == 0 && K0(context)) {
            String strS0 = f10350a < 28 ? s0("sys.display-size") : s0("vendor.display-size");
            if (!TextUtils.isEmpty(strS0)) {
                try {
                    String[] strArrO1 = o1(strS0.trim(), "x");
                    if (strArrO1.length == 2) {
                        int i11 = Integer.parseInt(strArrO1[0]);
                        int i12 = Integer.parseInt(strArrO1[1]);
                        if (i11 > 0 && i12 > 0) {
                            return new Point(i11, i12);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                u.c("Util", "Invalid display size: " + strS0);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        if (f10350a >= 23) {
            Z(display, point);
        } else {
            display.getRealSize(point);
        }
        return point;
    }

    public static Object[] W0(Object[] objArr, Object[] objArr2) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + objArr2.length);
        System.arraycopy(objArr2, 0, objArrCopyOf, objArr.length, objArr2.length);
        return objArrCopyOf;
    }

    public static Looper X() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static Object[] X0(Object[] objArr, int i11) {
        androidx.media3.common.util.a.a(i11 <= objArr.length);
        return Arrays.copyOf(objArr, i11);
    }

    public static Locale Y() {
        return f10350a >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    public static Object[] Y0(Object[] objArr, int i11, int i12) {
        androidx.media3.common.util.a.a(i11 >= 0);
        androidx.media3.common.util.a.a(i12 <= objArr.length);
        return Arrays.copyOfRange(objArr, i11, i12);
    }

    private static void Z(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static long Z0(String str) throws ParserException {
        Matcher matcher = f10357h.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedContainer("Invalid date/time format: " + str, null);
        }
        int i11 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i11 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            if ("-".equals(matcher.group(11))) {
                i11 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i11 != 0 ? timeInMillis - (((long) i11) * 60000) : timeInMillis;
    }

    public static Drawable a0(Context context, Resources resources, int i11) {
        return resources.getDrawable(i11, context.getTheme());
    }

    public static long a1(String str) {
        Matcher matcher = f10358i.matcher(str);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = TextUtils.isEmpty(matcher.group(1));
        String strGroup = matcher.group(3);
        double d11 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        String strGroup2 = matcher.group(5);
        double d12 = d11 + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        String strGroup3 = matcher.group(7);
        double d13 = d12 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        String strGroup4 = matcher.group(10);
        double d14 = d13 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        String strGroup5 = matcher.group(12);
        double d15 = d14 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        String strGroup6 = matcher.group(14);
        long j11 = (long) ((d15 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
        return !zIsEmpty ? -j11 : j11;
    }

    public static int b0(int i11) {
        if (i11 == 2 || i11 == 4) {
            return 6005;
        }
        if (i11 == 10) {
            return 6004;
        }
        if (i11 == 7) {
            return 6005;
        }
        if (i11 == 8) {
            return 6003;
        }
        switch (i11) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i11) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static boolean b1(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    public static long c(long j11, long j12, long j13) {
        long j14 = j11 + j12;
        return ((j11 ^ j14) & (j12 ^ j14)) < 0 ? j13 : j14;
    }

    public static int c0(String str) {
        String[] strArrO1;
        int length;
        if (str == null || (length = (strArrO1 = o1(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrO1[length - 1];
        boolean z10 = length >= 3 && "neg".equals(strArrO1[length - 2]);
        try {
            int i11 = Integer.parseInt((String) androidx.media3.common.util.a.e(str2));
            return z10 ? -i11 : i11;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static void c1(List list, int i11, int i12) {
        if (i11 < 0 || i12 > list.size() || i11 > i12) {
            throw new IllegalArgumentException();
        }
        if (i11 != i12) {
            list.subList(i11, i12).clear();
        }
    }

    public static int d(long[] jArr, long j11, boolean z10, boolean z11) {
        int i11;
        int i12;
        int iBinarySearch = Arrays.binarySearch(jArr, j11);
        if (iBinarySearch < 0) {
            i12 = ~iBinarySearch;
        } else {
            while (true) {
                i11 = iBinarySearch + 1;
                if (i11 >= jArr.length || jArr[i11] != j11) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z10 ? iBinarySearch : i11;
        }
        return z11 ? Math.min(jArr.length - 1, i12) : i12;
    }

    public static String d0(int i11) {
        if (i11 == 0) {
            return "NO";
        }
        if (i11 == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i11 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i11 == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i11 == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    public static long d1(long j11, int i11) {
        return g1(j11, 1000000L, i11, RoundingMode.DOWN);
    }

    public static int e(v vVar, long j11, boolean z10, boolean z11) {
        int i11;
        int iD = vVar.d() - 1;
        int i12 = 0;
        while (i12 <= iD) {
            int i13 = (i12 + iD) >>> 1;
            if (vVar.c(i13) < j11) {
                i12 = i13 + 1;
            } else {
                iD = i13 - 1;
            }
        }
        if (z10 && (i11 = iD + 1) < vVar.d() && vVar.c(i11) == j11) {
            return i11;
        }
        if (z11 && iD == -1) {
            return 0;
        }
        return iD;
    }

    public static String e0(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long e1(long j11, long j12, long j13) {
        return g1(j11, j12, j13, RoundingMode.DOWN);
    }

    public static int f(List list, Comparable comparable, boolean z10, boolean z11) {
        int i11;
        int i12;
        int iBinarySearch = Collections.binarySearch(list, comparable);
        if (iBinarySearch < 0) {
            i12 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i11 = iBinarySearch - 1;
                if (i11 < 0 || ((Comparable) list.get(i11)).compareTo(comparable) != 0) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z10 ? iBinarySearch : i11;
        }
        return z11 ? Math.max(0, i12) : i12;
    }

    public static int f0(Context context) {
        return H0(context) ? 1 : 5;
    }

    public static void f1(long[] jArr, long j11, long j12) {
        i1(jArr, j11, j12, RoundingMode.DOWN);
    }

    public static int g(int[] iArr, int i11, boolean z10, boolean z11) {
        int i12;
        int i13;
        int iBinarySearch = Arrays.binarySearch(iArr, i11);
        if (iBinarySearch < 0) {
            i13 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i12 = iBinarySearch - 1;
                if (i12 < 0 || iArr[i12] != i11) {
                    break;
                }
                iBinarySearch = i12;
            }
            i13 = z10 ? iBinarySearch : i12;
        }
        return z11 ? Math.max(0, i13) : i13;
    }

    public static long g0(long j11, float f11) {
        return f11 == 1.0f ? j11 : Math.round(j11 * ((double) f11));
    }

    public static long g1(long j11, long j12, long j13, RoundingMode roundingMode) {
        if (j11 == 0 || j12 == 0) {
            return 0L;
        }
        if (j13 >= j12 && j13 % j12 == 0) {
            return com.google.common.math.f.c(j11, com.google.common.math.f.c(j13, j12, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j13 < j12 && j12 % j13 == 0) {
            return com.google.common.math.f.e(j11, com.google.common.math.f.c(j12, j13, RoundingMode.UNNECESSARY));
        }
        if (j13 < j11 || j13 % j11 != 0) {
            return (j13 >= j11 || j11 % j13 != 0) ? h1(j11, j12, j13, roundingMode) : com.google.common.math.f.e(j12, com.google.common.math.f.c(j11, j13, RoundingMode.UNNECESSARY));
        }
        return com.google.common.math.f.c(j12, com.google.common.math.f.c(j13, j11, RoundingMode.UNNECESSARY), roundingMode);
    }

    public static int h(long[] jArr, long j11, boolean z10, boolean z11) {
        int i11;
        int i12;
        int iBinarySearch = Arrays.binarySearch(jArr, j11);
        if (iBinarySearch < 0) {
            i12 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i11 = iBinarySearch - 1;
                if (i11 < 0 || jArr[i11] != j11) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z10 ? iBinarySearch : i11;
        }
        return z11 ? Math.max(0, i12) : i12;
    }

    public static long h0(long j11) {
        return j11 == C.TIME_UNSET ? System.currentTimeMillis() : j11 + SystemClock.elapsedRealtime();
    }

    private static long h1(long j11, long j12, long j13, RoundingMode roundingMode) {
        long jE = com.google.common.math.f.e(j11, j12);
        if (jE != Long.MAX_VALUE && jE != Long.MIN_VALUE) {
            return com.google.common.math.f.c(jE, j13, roundingMode);
        }
        long jD = com.google.common.math.f.d(Math.abs(j12), Math.abs(j13));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jC = com.google.common.math.f.c(j12, jD, roundingMode2);
        long jC2 = com.google.common.math.f.c(j13, jD, roundingMode2);
        long jD2 = com.google.common.math.f.d(Math.abs(j11), Math.abs(jC2));
        long jC3 = com.google.common.math.f.c(j11, jD2, roundingMode2);
        long jC4 = com.google.common.math.f.c(jC2, jD2, roundingMode2);
        long jE2 = com.google.common.math.f.e(jC3, jC);
        if (jE2 != Long.MAX_VALUE && jE2 != Long.MIN_VALUE) {
            return com.google.common.math.f.c(jE2, jC4, roundingMode);
        }
        double d11 = jC3 * (jC / jC4);
        if (d11 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d11 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return com.google.common.math.b.f(d11, roundingMode);
    }

    public static Object i(Object obj) {
        return obj;
    }

    public static int i0(int i11) {
        if (i11 == 8) {
            return 3;
        }
        if (i11 == 16) {
            return 2;
        }
        if (i11 != 24) {
            return i11 != 32 ? 0 : 22;
        }
        return 21;
    }

    public static void i1(long[] jArr, long j11, long j12, RoundingMode roundingMode) {
        if (j11 == 0) {
            Arrays.fill(jArr, 0L);
            return;
        }
        int i11 = 0;
        if (j12 >= j11 && j12 % j11 == 0) {
            long jC = com.google.common.math.f.c(j12, j11, RoundingMode.UNNECESSARY);
            while (i11 < jArr.length) {
                jArr[i11] = com.google.common.math.f.c(jArr[i11], jC, roundingMode);
                i11++;
            }
            return;
        }
        if (j12 < j11 && j11 % j12 == 0) {
            long jC2 = com.google.common.math.f.c(j11, j12, RoundingMode.UNNECESSARY);
            while (i11 < jArr.length) {
                jArr[i11] = com.google.common.math.f.e(jArr[i11], jC2);
                i11++;
            }
            return;
        }
        for (int i12 = 0; i12 < jArr.length; i12++) {
            long j13 = jArr[i12];
            if (j13 != 0) {
                if (j12 >= j13 && j12 % j13 == 0) {
                    jArr[i12] = com.google.common.math.f.c(j11, com.google.common.math.f.c(j12, j13, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j12 >= j13 || j13 % j12 != 0) {
                    jArr[i12] = h1(j13, j11, j12, roundingMode);
                } else {
                    jArr[i12] = com.google.common.math.f.e(j11, com.google.common.math.f.c(j13, j12, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    public static Object[] j(Object[] objArr) {
        return objArr;
    }

    public static androidx.media3.common.r j0(int i11, int i12, int i13) {
        return new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_RAW).R(i12).v0(i13).o0(i11).N();
    }

    public static void j1(Service service, int i11, Notification notification, int i12, String str) {
        if (f10350a >= 29) {
            a.a(service, i11, notification, i12, str);
        } else {
            service.startForeground(i11, notification);
        }
    }

    public static int k(int i11, int i12) {
        return ((i11 + i12) - 1) / i12;
    }

    public static int k0(int i11, int i12) {
        return Q(i11) * i12;
    }

    public static boolean k1(androidx.media3.common.a0 a0Var) {
        return (a0Var == null || !a0Var.h(1) || (a0Var.h(17) && a0Var.getCurrentTimeline().q())) ? false : true;
    }

    public static long l(long j11, long j12) {
        return ((j11 + j12) - 1) / j12;
    }

    public static long l0(long j11, float f11) {
        return f11 == 1.0f ? j11 : Math.round(j11 / ((double) f11));
    }

    public static boolean l1(androidx.media3.common.a0 a0Var, boolean z10) {
        if (a0Var == null || !a0Var.getPlayWhenReady() || a0Var.getPlaybackState() == 1 || a0Var.getPlaybackState() == 4) {
            return true;
        }
        return z10 && a0Var.j() != 0;
    }

    public static void m(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static List m0(int i11) {
        ArrayList arrayList = new ArrayList();
        if ((i11 & 1) != 0) {
            arrayList.add("main");
        }
        if ((i11 & 2) != 0) {
            arrayList.add("alt");
        }
        if ((i11 & 4) != 0) {
            arrayList.add("supplementary");
        }
        if ((i11 & 8) != 0) {
            arrayList.add("commentary");
        }
        if ((i11 & 16) != 0) {
            arrayList.add("dub");
        }
        if ((i11 & 32) != 0) {
            arrayList.add("emergency");
        }
        if ((i11 & 64) != 0) {
            arrayList.add("caption");
        }
        if ((i11 & 128) != 0) {
            arrayList.add("subtitle");
        }
        if ((i11 & 256) != 0) {
            arrayList.add(TmcConstants.EXTRA_APP_DEV_TOKEN);
        }
        if ((i11 & 512) != 0) {
            arrayList.add("describes-video");
        }
        if ((i11 & 1024) != 0) {
            arrayList.add("describes-music");
        }
        if ((i11 & 2048) != 0) {
            arrayList.add("enhanced-intelligibility");
        }
        if ((i11 & 4096) != 0) {
            arrayList.add("transcribes-dialog");
        }
        if ((i11 & 8192) != 0) {
            arrayList.add("easy-read");
        }
        if ((i11 & 16384) != 0) {
            arrayList.add("trick-play");
        }
        if ((i11 & 32768) != 0) {
            arrayList.add("auxiliary");
        }
        return arrayList;
    }

    public static void m1(Throwable th2) throws Throwable {
        n1(th2);
    }

    public static int n(long j11, long j12) {
        if (j11 < j12) {
            return -1;
        }
        return j11 == j12 ? 0 : 1;
    }

    public static List n0(int i11) {
        ArrayList arrayList = new ArrayList();
        if ((i11 & 4) != 0) {
            arrayList.add("auto");
        }
        if ((i11 & 1) != 0) {
            arrayList.add("default");
        }
        if ((i11 & 2) != 0) {
            arrayList.add("forced");
        }
        return arrayList;
    }

    private static void n1(Throwable th2) throws Throwable {
        throw th2;
    }

    public static float o(float f11, float f12, float f13) {
        return Math.max(f12, Math.min(f11, f13));
    }

    public static String o0(StringBuilder sb2, Formatter formatter, long j11) {
        long j12 = j11 == C.TIME_UNSET ? 0L : j11;
        String str = j12 < 0 ? "-" : "";
        long jAbs = (Math.abs(j12) + 500) / 1000;
        long j13 = jAbs % 60;
        long j14 = (jAbs / 60) % 60;
        long j15 = jAbs / 3600;
        sb2.setLength(0);
        return j15 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j15), Long.valueOf(j14), Long.valueOf(j13)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j14), Long.valueOf(j13)).toString();
    }

    public static String[] o1(String str, String str2) {
        return str.split(str2, -1);
    }

    public static int p(int i11, int i12, int i13) {
        return Math.max(i12, Math.min(i11, i13));
    }

    public static String[] p0() {
        String[] strArrQ0 = q0();
        for (int i11 = 0; i11 < strArrQ0.length; i11++) {
            strArrQ0[i11] = U0(strArrQ0[i11]);
        }
        return strArrQ0;
    }

    public static String[] p1(String str, String str2) {
        return str.split(str2, 2);
    }

    public static long q(long j11, long j12, long j13) {
        return Math.max(j12, Math.min(j11, j13));
    }

    private static String[] q0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f10350a >= 24 ? r0(configuration) : new String[]{e0(configuration.locale)};
    }

    public static String[] q1(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : o1(str.trim(), "(\\s*,\\s*)");
    }

    public static boolean r(SparseArray sparseArray, int i11) {
        return sparseArray.indexOfKey(i11) >= 0;
    }

    private static String[] r0(Configuration configuration) {
        return o1(configuration.getLocales().toLanguageTags(), ",");
    }

    public static ComponentName r1(Context context, Intent intent) {
        return f10350a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    public static boolean s(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    private static String s0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e11) {
            u.d("Util", "Failed to read system property " + str, e11);
            return null;
        }
    }

    public static long s1(long j11, long j12, long j13) {
        long j14 = j11 - j12;
        return ((j11 ^ j14) & (j12 ^ j11)) < 0 ? j13 : j14;
    }

    public static boolean t(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 == null) {
            return false;
        }
        if (f10350a >= 31) {
            return sparseArray.contentEquals(sparseArray2);
        }
        int size = sparseArray.size();
        if (size != sparseArray2.size()) {
            return false;
        }
        for (int i11 = 0; i11 < size; i11++) {
            if (!Objects.equals(sparseArray.valueAt(i11), sparseArray2.get(sparseArray.keyAt(i11)))) {
                return false;
            }
        }
        return true;
    }

    public static String t0(int i11) {
        switch (i11) {
            case -2:
                return "none";
            case -1:
                return TmcConstants.ROUTE_UNKNOWN;
            case 0:
                return "default";
            case 1:
                return MimeTypes.BASE_TYPE_AUDIO;
            case 2:
                return "video";
            case 3:
                return MimeTypes.BASE_TYPE_TEXT;
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            case 6:
                return "camera motion";
            default:
                if (i11 < 10000) {
                    return UrlUtils.QUESTION_MARK;
                }
                return "custom (" + i11 + ")";
        }
    }

    public static boolean t1(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    public static int u(SparseArray sparseArray) {
        if (f10350a >= 31) {
            return sparseArray.contentHashCode();
        }
        int iKeyAt = 17;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            iKeyAt = (((iKeyAt * 31) + sparseArray.keyAt(i11)) * 31) + Objects.hashCode(sparseArray.valueAt(i11));
        }
        return iKeyAt;
    }

    public static byte[] u0(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static String u1(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i11 = 0; i11 < bArr.length; i11++) {
            sb2.append(Character.forDigit((bArr[i11] >> 4) & 15, 16));
            sb2.append(Character.forDigit(bArr[i11] & 15, 16));
        }
        return sb2.toString();
    }

    public static int v(byte[] bArr, int i11, int i12, int i13) {
        while (i11 < i12) {
            int iC = com.google.common.primitives.e.c(bArr[i11]);
            i13 = w(iC & 15, w(iC >> 4, i13));
            i11++;
        }
        return i13;
    }

    public static boolean v0(androidx.media3.common.a0 a0Var) {
        if (a0Var == null || !a0Var.h(1)) {
            return false;
        }
        a0Var.pause();
        return true;
    }

    public static long v1(int i11, int i12) {
        return w1(i12) | (w1(i11) << 32);
    }

    private static int w(int i11, int i12) {
        int i13 = (i11 ^ ((i12 >> 12) & 255)) & 255;
        return (f10365p[i13] ^ ((i12 << 4) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    public static boolean w0(androidx.media3.common.a0 a0Var) {
        boolean z10 = false;
        if (a0Var == null) {
            return false;
        }
        int playbackState = a0Var.getPlaybackState();
        if (playbackState != 1 || !a0Var.h(2)) {
            if (playbackState == 4 && a0Var.h(4)) {
                a0Var.seekToDefaultPosition();
            }
            if (a0Var.h(1)) {
                return z10;
            }
            a0Var.play();
            return true;
        }
        a0Var.prepare();
        z10 = true;
        if (a0Var.h(1)) {
            return z10;
        }
        a0Var.play();
        return true;
    }

    public static long w1(int i11) {
        return ((long) i11) & 4294967295L;
    }

    public static int x(byte[] bArr, int i11, int i12, int i13) {
        while (i11 < i12) {
            i13 = f10364o[((i13 >>> 24) ^ (bArr[i11] & 255)) & 255] ^ (i13 << 8);
            i11++;
        }
        return i13;
    }

    public static boolean x0(androidx.media3.common.a0 a0Var, boolean z10) {
        return l1(a0Var, z10) ? w0(a0Var) : v0(a0Var);
    }

    public static String x1(String str) {
        int length = str.length();
        int iEnd = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (str.charAt(i12) == '%') {
                i11++;
            }
        }
        if (i11 == 0) {
            return str;
        }
        int i13 = length - (i11 * 2);
        StringBuilder sb2 = new StringBuilder(i13);
        Matcher matcher = f10359j.matcher(str);
        while (i11 > 0 && matcher.find()) {
            char c11 = (char) Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(1)), 16);
            sb2.append((CharSequence) str, iEnd, matcher.start());
            sb2.append(c11);
            iEnd = matcher.end();
            i11--;
        }
        if (iEnd < length) {
            sb2.append((CharSequence) str, iEnd, length);
        }
        if (sb2.length() != i13) {
            return null;
        }
        return sb2.toString();
    }

    public static int y(byte[] bArr, int i11, int i12, int i13) {
        while (i11 < i12) {
            i13 = f10366q[i13 ^ (bArr[i11] & 255)];
            i11++;
        }
        return i13;
    }

    public static int y0(Uri uri) {
        int iZ0;
        String scheme = uri.getScheme();
        if (scheme != null && (com.google.common.base.a.a("rtsp", scheme) || com.google.common.base.a.a("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iZ0 = z0(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iZ0;
        }
        Matcher matcher = f10360k.matcher((CharSequence) androidx.media3.common.util.a.e(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (strGroup.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static long y1(long j11) {
        return (j11 == C.TIME_UNSET || j11 == Long.MIN_VALUE) ? j11 : j11 / 1000;
    }

    public static Handler z(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static int z0(String str) {
        String strE = com.google.common.base.a.e(str);
        strE.hashCode();
        switch (strE) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }
}
