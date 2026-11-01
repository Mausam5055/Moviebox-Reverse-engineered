package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerLibraryInfo;
import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.SeekParameters;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class Util {
    private static final int[] CRC32_BYTES_MSBF;
    public static final String DEVICE;
    public static final String DEVICE_DEBUG_INFO;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    public static final String MANUFACTURER;
    public static final String MODEL;
    public static final int SDK_INT;
    private static final String TAG = "Util";
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;

    static {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') {
            i11 = 26;
        }
        SDK_INT = i11;
        String str = Build.DEVICE;
        DEVICE = str;
        String str2 = Build.MANUFACTURER;
        MANUFACTURER = str2;
        String str3 = Build.MODEL;
        MODEL = str3;
        DEVICE_DEBUG_INFO = str + ", " + str3 + ", " + str2 + ", " + i11;
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    private Util() {
    }

    public static long addWithOverflowDefault(long j11, long j12, long j13) {
        long j14 = j11 + j12;
        return ((j11 ^ j14) & (j12 ^ j14)) < 0 ? j13 : j14;
    }

    public static boolean areEqual(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static <T> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t11, boolean z10, boolean z11) {
        int i11;
        int i12;
        int iBinarySearch = Collections.binarySearch(list, t11);
        if (iBinarySearch < 0) {
            i12 = ~iBinarySearch;
        } else {
            int size = list.size();
            while (true) {
                i11 = iBinarySearch + 1;
                if (i11 >= size || list.get(i11).compareTo(t11) != 0) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z10 ? iBinarySearch : i11;
        }
        return z11 ? Math.min(list.size() - 1, i12) : i12;
    }

    public static int binarySearchCeil(long[] jArr, long j11, boolean z10, boolean z11) {
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

    public static <T> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t11, boolean z10, boolean z11) {
        int i11;
        int i12;
        int iBinarySearch = Collections.binarySearch(list, t11);
        if (iBinarySearch < 0) {
            i12 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i11 = iBinarySearch - 1;
                if (i11 < 0 || list.get(i11).compareTo(t11) != 0) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z10 ? iBinarySearch : i11;
        }
        return z11 ? Math.max(0, i12) : i12;
    }

    public static int binarySearchFloor(int[] iArr, int i11, boolean z10, boolean z11) {
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

    public static int binarySearchFloor(long[] jArr, long j11, boolean z10, boolean z11) {
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

    public static int ceilDivide(int i11, int i12) {
        return ((i11 + i12) - 1) / i12;
    }

    public static long ceilDivide(long j11, long j12) {
        return ((j11 + j12) - 1) / j12;
    }

    public static void closeQuietly(DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int compareLong(long j11, long j12) {
        if (j11 < j12) {
            return -1;
        }
        return j11 == j12 ? 0 : 1;
    }

    public static float constrainValue(float f11, float f12, float f13) {
        return Math.max(f12, Math.min(f11, f13));
    }

    public static int constrainValue(int i11, int i12, int i13) {
        return Math.max(i12, Math.min(i11, i13));
    }

    public static long constrainValue(long j11, long j12, long j13) {
        return Math.max(j12, Math.min(j11, j13));
    }

    public static boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (areEqual(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int crc(byte[] bArr, int i11, int i12, int i13) {
        while (i11 < i12) {
            i13 = CRC32_BYTES_MSBF[((i13 >>> 24) ^ (bArr[i11] & 255)) & 255] ^ (i13 << 8);
            i11++;
        }
        return i13;
    }

    public static File createTempDirectory(Context context, String str) throws IOException {
        File fileCreateTempFile = createTempFile(context, str);
        fileCreateTempFile.delete();
        fileCreateTempFile.mkdir();
        return fileCreateTempFile;
    }

    public static File createTempFile(Context context, String str) throws IOException {
        return File.createTempFile(str, null, context.getCacheDir());
    }

    public static String escapeFileName(String str) {
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            if (shouldEscapeCharacter(str.charAt(i13))) {
                i12++;
            }
        }
        if (i12 == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder((i12 * 2) + length);
        while (i12 > 0) {
            int i14 = i11 + 1;
            char cCharAt = str.charAt(i11);
            if (shouldEscapeCharacter(cCharAt)) {
                sb2.append('%');
                sb2.append(Integer.toHexString(cCharAt));
                i12--;
            } else {
                sb2.append(cCharAt);
            }
            i11 = i14;
        }
        if (i11 < length) {
            sb2.append((CharSequence) str, i11, length);
        }
        return sb2.toString();
    }

    public static String formatInvariant(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public static String fromUtf8Bytes(byte[] bArr, int i11, int i12) {
        return new String(bArr, i11, i12, Charset.forName("UTF-8"));
    }

    public static int getAudioContentTypeForStreamType(int i11) {
        if (i11 != 0) {
            return (i11 == 1 || i11 == 2 || i11 == 4 || i11 == 5 || i11 == 8) ? 4 : 2;
        }
        return 1;
    }

    public static int getAudioUsageForStreamType(int i11) {
        if (i11 == 0) {
            return 2;
        }
        if (i11 == 1) {
            return 13;
        }
        if (i11 == 2) {
            return 6;
        }
        int i12 = 4;
        if (i11 != 4) {
            i12 = 5;
            if (i11 != 5) {
                return i11 != 8 ? 1 : 3;
            }
        }
        return i12;
    }

    public static byte[] getBytesFromHexString(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i11 * 2;
            bArr[i11] = (byte) ((Character.digit(str.charAt(i12), 16) << 4) + Character.digit(str.charAt(i12 + 1), 16));
        }
        return bArr;
    }

    public static String getCodecsOfType(String str, int i11) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = split(str.trim(), "(\\s*,\\s*)");
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (i11 == MimeTypes.getTrackTypeOfCodec(str2)) {
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

    public static String getCommaDelimitedSimpleClassNames(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < objArr.length; i11++) {
            sb2.append(objArr[i11].getClass().getSimpleName());
            if (i11 < objArr.length - 1) {
                sb2.append(", ");
            }
        }
        return sb2.toString();
    }

    public static int getDefaultBufferSize(int i11) {
        if (i11 == 0) {
            return 16777216;
        }
        if (i11 == 1) {
            return C.DEFAULT_AUDIO_BUFFER_SIZE;
        }
        if (i11 == 2) {
            return C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        if (i11 == 3 || i11 == 4) {
            return 131072;
        }
        throw new IllegalStateException();
    }

    @TargetApi(16)
    private static void getDisplaySizeV16(Display display, Point point) {
        display.getSize(point);
    }

    @TargetApi(17)
    private static void getDisplaySizeV17(Display display, Point point) {
        display.getRealSize(point);
    }

    @TargetApi(23)
    private static void getDisplaySizeV23(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    private static void getDisplaySizeV9(Display display, Point point) {
        point.x = display.getWidth();
        point.y = display.getHeight();
    }

    public static UUID getDrmUuid(String str) {
        String lowerInvariant = toLowerInvariant(str);
        lowerInvariant.hashCode();
        switch (lowerInvariant) {
            case "playready":
                return C.PLAYREADY_UUID;
            case "widevine":
                return C.WIDEVINE_UUID;
            case "clearkey":
                return C.CLEARKEY_UUID;
            default:
                try {
                    return UUID.fromString(str);
                } catch (RuntimeException unused) {
                    return null;
                }
        }
    }

    public static int getIntegerCodeForString(String str) {
        int length = str.length();
        Assertions.checkArgument(length <= 4);
        int iCharAt = 0;
        for (int i11 = 0; i11 < length; i11++) {
            iCharAt = (iCharAt << 8) | str.charAt(i11);
        }
        return iCharAt;
    }

    public static long getMediaDurationForPlayoutDuration(long j11, float f11) {
        return f11 == 1.0f ? j11 : Math.round(j11 * ((double) f11));
    }

    public static int getPcmEncoding(int i11) {
        if (i11 == 8) {
            return 3;
        }
        if (i11 == 16) {
            return 2;
        }
        if (i11 != 24) {
            return i11 != 32 ? 0 : 1073741824;
        }
        return Integer.MIN_VALUE;
    }

    public static int getPcmFrameSize(int i11, int i12) {
        if (i11 == Integer.MIN_VALUE) {
            return i12 * 3;
        }
        if (i11 != 1073741824) {
            if (i11 == 2) {
                return i12 * 2;
            }
            if (i11 == 3) {
                return i12;
            }
            if (i11 != 4) {
                throw new IllegalArgumentException();
            }
        }
        return i12 * 4;
    }

    public static Point getPhysicalDisplaySize(Context context) {
        return getPhysicalDisplaySize(context, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[Catch: NumberFormatException -> 0x00c2, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:32:0x009e, B:34:0x00ac, B:37:0x00bc), top: B:52:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:52:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static Point getPhysicalDisplaySize(Context context, Display display) {
        String str;
        String[] strArrSplit;
        int i11;
        int i12;
        if (SDK_INT < 25 && display.getDisplayId() == 0) {
            String str2 = MANUFACTURER;
            if ("Sony".equals(str2) && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            if ("NVIDIA".equals(str2) && MODEL.contains("SHIELD")) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class).invoke(cls, "sys.display-size");
                if (!TextUtils.isEmpty(str)) {
                    strArrSplit = split(str.trim(), "x");
                    if (strArrSplit.length == 2) {
                        i11 = Integer.parseInt(strArrSplit[0]);
                        i12 = Integer.parseInt(strArrSplit[1]);
                        if (i11 > 0) {
                            return new Point(i11, i12);
                        }
                    }
                    Log.e(TAG, "Invalid sys.display-size: " + str);
                }
            } else if ("philips".equals(toLowerInvariant(str2))) {
                String str3 = MODEL;
                if (str3.startsWith("QM1") || str3.equals("QV151E") || str3.equals("TPM171E")) {
                    try {
                        Class<?> cls2 = Class.forName("android.os.SystemProperties");
                        str = (String) cls2.getMethod("get", String.class).invoke(cls2, "sys.display-size");
                    } catch (Exception e11) {
                        Log.e(TAG, "Failed to read sys.display-size", e11);
                        str = null;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            strArrSplit = split(str.trim(), "x");
                            if (strArrSplit.length == 2) {
                                i11 = Integer.parseInt(strArrSplit[0]);
                                i12 = Integer.parseInt(strArrSplit[1]);
                                if (i11 > 0 && i12 > 0) {
                                    return new Point(i11, i12);
                                }
                            }
                        } catch (NumberFormatException unused) {
                        }
                        Log.e(TAG, "Invalid sys.display-size: " + str);
                    }
                }
            }
        }
        Point point = new Point();
        int i13 = SDK_INT;
        if (i13 >= 23) {
            getDisplaySizeV23(display, point);
        } else if (i13 >= 17) {
            getDisplaySizeV17(display, point);
        } else if (i13 >= 16) {
            getDisplaySizeV16(display, point);
        } else {
            getDisplaySizeV9(display, point);
        }
        return point;
    }

    public static long getPlayoutDurationForMediaDuration(long j11, float f11) {
        return f11 == 1.0f ? j11 : Math.round(j11 / ((double) f11));
    }

    public static int getStreamTypeForAudioUsage(int i11) {
        if (i11 == 13) {
            return 1;
        }
        switch (i11) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static String getStringForTime(StringBuilder sb2, Formatter formatter, long j11) {
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        long j12 = (j11 + 500) / 1000;
        long j13 = j12 % 60;
        long j14 = (j12 / 60) % 60;
        long j15 = j12 / 3600;
        sb2.setLength(0);
        return j15 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j15), Long.valueOf(j14), Long.valueOf(j13)).toString() : formatter.format("%02d:%02d", Long.valueOf(j14), Long.valueOf(j13)).toString();
    }

    public static String getUserAgent(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = UrlUtils.QUESTION_MARK;
        }
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") " + ExoPlayerLibraryInfo.VERSION_SLASHY;
    }

    public static byte[] getUtf8Bytes(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    public static int inferContentType(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return 3;
        }
        return inferContentType(path);
    }

    public static int inferContentType(Uri uri, String str) {
        if (TextUtils.isEmpty(str)) {
            return inferContentType(uri);
        }
        return inferContentType("." + str);
    }

    public static int inferContentType(String str) {
        String lowerInvariant = toLowerInvariant(str);
        if (lowerInvariant.endsWith(".mpd")) {
            return 0;
        }
        if (lowerInvariant.endsWith(".m3u8")) {
            return 2;
        }
        return lowerInvariant.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }

    public static boolean isEncodingHighResolutionIntegerPcm(int i11) {
        return i11 == Integer.MIN_VALUE || i11 == 1073741824;
    }

    public static boolean isEncodingPcm(int i11) {
        return i11 == 3 || i11 == 2 || i11 == Integer.MIN_VALUE || i11 == 1073741824 || i11 == 4;
    }

    public static boolean isLinebreak(int i11) {
        return i11 == 10 || i11 == 13;
    }

    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE.equals(scheme);
    }

    @TargetApi(23)
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, Uri... uriArr) {
        return false;
    }

    public static ExecutorService newSingleThreadExecutor(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.mbridge.msdk.playercommon.exoplayer2.util.Util.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    @Nullable
    public static String normalizeLanguageCode(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return new Locale(str).getISO3Language();
        } catch (MissingResourceException unused) {
            return toLowerInvariant(str);
        }
    }

    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i11) {
        Assertions.checkArgument(i11 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i11);
    }

    public static long parseXsDateTime(String str) throws ParserException {
        int i11;
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new ParserException("Invalid date/time format: " + str);
        }
        if (matcher.group(9) == null || matcher.group(9).equalsIgnoreCase("Z")) {
            i11 = 0;
        } else {
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
        return i11 != 0 ? timeInMillis - ((long) (i11 * 60000)) : timeInMillis;
    }

    public static long parseXsDuration(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
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

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void recursiveDelete(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    public static <T> void removeRange(List<T> list, int i11, int i12) {
        list.subList(i11, i12).clear();
    }

    public static long resolveSeekPositionUs(long j11, SeekParameters seekParameters, long j12, long j13) {
        if (SeekParameters.EXACT.equals(seekParameters)) {
            return j11;
        }
        long jSubtractWithOverflowDefault = subtractWithOverflowDefault(j11, seekParameters.toleranceBeforeUs, Long.MIN_VALUE);
        long jAddWithOverflowDefault = addWithOverflowDefault(j11, seekParameters.toleranceAfterUs, Long.MAX_VALUE);
        boolean z10 = false;
        boolean z11 = jSubtractWithOverflowDefault <= j12 && j12 <= jAddWithOverflowDefault;
        if (jSubtractWithOverflowDefault <= j13 && j13 <= jAddWithOverflowDefault) {
            z10 = true;
        }
        if (z11 && z10) {
            return Math.abs(j12 - j11) <= Math.abs(j13 - j11) ? j12 : j13;
        }
        if (z11) {
            return j12;
        }
        return z10 ? j13 : jSubtractWithOverflowDefault;
    }

    public static long scaleLargeTimestamp(long j11, long j12, long j13) {
        if (j13 >= j12 && j13 % j12 == 0) {
            return j11 / (j13 / j12);
        }
        if (j13 < j12 && j12 % j13 == 0) {
            return j11 * (j12 / j13);
        }
        return (long) (j11 * (j12 / j13));
    }

    public static long[] scaleLargeTimestamps(List<Long> list, long j11, long j12) {
        int size = list.size();
        long[] jArr = new long[size];
        int i11 = 0;
        if (j12 >= j11 && j12 % j11 == 0) {
            long j13 = j12 / j11;
            while (i11 < size) {
                jArr[i11] = list.get(i11).longValue() / j13;
                i11++;
            }
        } else if (j12 >= j11 || j11 % j12 != 0) {
            double d11 = j11 / j12;
            while (i11 < size) {
                jArr[i11] = (long) (list.get(i11).longValue() * d11);
                i11++;
            }
        } else {
            long j14 = j11 / j12;
            while (i11 < size) {
                jArr[i11] = list.get(i11).longValue() * j14;
                i11++;
            }
        }
        return jArr;
    }

    public static void scaleLargeTimestampsInPlace(long[] jArr, long j11, long j12) {
        int i11 = 0;
        if (j12 >= j11 && j12 % j11 == 0) {
            long j13 = j12 / j11;
            while (i11 < jArr.length) {
                jArr[i11] = jArr[i11] / j13;
                i11++;
            }
            return;
        }
        if (j12 >= j11 || j11 % j12 != 0) {
            double d11 = j11 / j12;
            while (i11 < jArr.length) {
                jArr[i11] = (long) (jArr[i11] * d11);
                i11++;
            }
            return;
        }
        long j14 = j11 / j12;
        while (i11 < jArr.length) {
            jArr[i11] = jArr[i11] * j14;
            i11++;
        }
    }

    private static boolean shouldEscapeCharacter(char c11) {
        return c11 == '\"' || c11 == '%' || c11 == '*' || c11 == '/' || c11 == ':' || c11 == '<' || c11 == '\\' || c11 == '|' || c11 == '>' || c11 == '?';
    }

    public static void sneakyThrow(Throwable th2) throws Throwable {
        sneakyThrowInternal(th2);
    }

    private static <T extends Throwable> void sneakyThrowInternal(Throwable th2) throws Throwable {
        throw th2;
    }

    public static String[] split(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String[] splitAtFirst(String str, String str2) {
        return str.split(str2, 2);
    }

    public static ComponentName startForegroundService(Context context, Intent intent) {
        return SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    public static long subtractWithOverflowDefault(long j11, long j12, long j13) {
        long j14 = j11 - j12;
        return ((j11 ^ j14) & (j12 ^ j11)) < 0 ? j13 : j14;
    }

    public static int[] toArray(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = list.get(i11).intValue();
        }
        return iArr;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    public static String toLowerInvariant(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(Locale.US);
    }

    public static String toUpperInvariant(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(Locale.US);
    }

    public static String unescapeFileName(String str) {
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
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i11 > 0 && matcher.find()) {
            char c11 = (char) Integer.parseInt(matcher.group(1), 16);
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

    public static void writeBoolean(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }
}
