package kotlin.text;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0000H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\u000b\u001a\u00020\n*\u00020\u0000H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u0015\u0010\r\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0004*\u00020\u0000H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0000H\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u0007*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0015\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0000H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001d\u0010\u001d\u001a\u0004\u0018\u00010\n*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"", "Lkotlin/UByte;", "a", "(Ljava/lang/String;)B", "Lkotlin/UShort;", "j", "(Ljava/lang/String;)S", "Lkotlin/UInt;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;)I", "Lkotlin/ULong;", "g", "(Ljava/lang/String;)J", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)Lkotlin/UByte;", "", "radix", "c", "(Ljava/lang/String;I)Lkotlin/UByte;", CampaignEx.JSON_KEY_AD_K, "(Ljava/lang/String;)Lkotlin/UShort;", "l", "(Ljava/lang/String;I)Lkotlin/UShort;", "e", "(Ljava/lang/String;)Lkotlin/UInt;", "f", "(Ljava/lang/String;I)Lkotlin/UInt;", "h", "(Ljava/lang/String;)Lkotlin/ULong;", "i", "(Ljava/lang/String;I)Lkotlin/ULong;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class UStringsKt {
    public static final byte a(String str) {
        Intrinsics.h(str, "<this>");
        UByte uByteB = b(str);
        if (uByteB != null) {
            return uByteB.getData();
        }
        r.u(str);
        throw new KotlinNothingValueException();
    }

    public static final UByte b(String str) {
        Intrinsics.h(str, "<this>");
        return c(str, 10);
    }

    public static final UByte c(String str, int i11) {
        Intrinsics.h(str, "<this>");
        UInt uIntF = f(str, i11);
        if (uIntF == null) {
            return null;
        }
        int data = uIntF.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.b(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.a(UByte.b((byte) data));
    }

    public static final int d(String str) {
        Intrinsics.h(str, "<this>");
        UInt uIntE = e(str);
        if (uIntE != null) {
            return uIntE.getData();
        }
        r.u(str);
        throw new KotlinNothingValueException();
    }

    public static final UInt e(String str) {
        Intrinsics.h(str, "<this>");
        return f(str, 10);
    }

    public static final UInt f(String str, int i11) {
        int i12;
        Intrinsics.h(str, "<this>");
        CharsKt.a(i11);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i13 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.j(cCharAt, 48) < 0) {
            i12 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i12 = 0;
        }
        int iB = UInt.b(i11);
        int iA = 119304647;
        while (i12 < length) {
            int iB2 = b.b(str.charAt(i12), i11);
            if (iB2 < 0) {
                return null;
            }
            if (Integer.compare(i13 ^ Integer.MIN_VALUE, iA ^ Integer.MIN_VALUE) > 0) {
                if (iA == 119304647) {
                    iA = y.a(-1, iB);
                    if (Integer.compare(i13 ^ Integer.MIN_VALUE, iA ^ Integer.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            int iB3 = UInt.b(i13 * iB);
            int iB4 = UInt.b(UInt.b(iB2) + iB3);
            if (Integer.compare(iB4 ^ Integer.MIN_VALUE, iB3 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i12++;
            i13 = iB4;
        }
        return UInt.a(i13);
    }

    public static final long g(String str) {
        Intrinsics.h(str, "<this>");
        ULong uLongH = h(str);
        if (uLongH != null) {
            return uLongH.getData();
        }
        r.u(str);
        throw new KotlinNothingValueException();
    }

    public static final ULong h(String str) {
        Intrinsics.h(str, "<this>");
        return i(str, 10);
    }

    public static final ULong i(String str, int i11) {
        Intrinsics.h(str, "<this>");
        CharsKt.a(i11);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.j(cCharAt, 48) < 0) {
            i12 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jB = ULong.b(i11);
        long j11 = 0;
        long jA = 512409557603043100L;
        while (i12 < length) {
            int iB = b.b(str.charAt(i12), i11);
            if (iB < 0) {
                return null;
            }
            if (Long.compare(j11 ^ Long.MIN_VALUE, jA ^ Long.MIN_VALUE) > 0) {
                if (jA == 512409557603043100L) {
                    jA = x.a(-1L, jB);
                    if (Long.compare(j11 ^ Long.MIN_VALUE, jA ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            long jB2 = ULong.b(j11 * jB);
            long jB3 = ULong.b(ULong.b(((long) UInt.b(iB)) & 4294967295L) + jB2);
            if (Long.compare(jB3 ^ Long.MIN_VALUE, jB2 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i12++;
            j11 = jB3;
        }
        return ULong.a(j11);
    }

    public static final short j(String str) {
        Intrinsics.h(str, "<this>");
        UShort uShortK = k(str);
        if (uShortK != null) {
            return uShortK.getData();
        }
        r.u(str);
        throw new KotlinNothingValueException();
    }

    public static final UShort k(String str) {
        Intrinsics.h(str, "<this>");
        return l(str, 10);
    }

    public static final UShort l(String str, int i11) {
        Intrinsics.h(str, "<this>");
        UInt uIntF = f(str, i11);
        if (uIntF == null) {
            return null;
        }
        int data = uIntF.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.b(Settings.DEFAULT_INITIAL_WINDOW_SIZE) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.a(UShort.b((short) data));
    }
}
