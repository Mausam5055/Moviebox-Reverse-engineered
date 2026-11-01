package okio.internal;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okio.Base64;
import okio.Buffer;
import okio.SegmentedByteString;
import okio._JvmPlatformKt;

/* JADX INFO: renamed from: okio.internal.-ByteString, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0080\b\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0080\b\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\tH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0080\b\u001a\u0017\u0010\"\u001a\u00020 *\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\b\u001a\u0015\u0010$\u001a\u00020%*\u00020\f2\u0006\u0010&\u001a\u00020\u0007H\u0080\b\u001a\r\u0010'\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010(\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010)\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\r\u0010,\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\tH\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\fH\u0080\b\u001a\u001d\u00102\u001a\u00020\f*\u00020\f2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\b\u001a\r\u00105\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00106\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00107\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u00108\u001a\u00020\f*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010:\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a$\u0010;\u001a\u00020\u0017*\u00020\f2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006>"}, d2 = {"HEX_DIGIT_CHARS", "", "getHEX_DIGIT_CHARS$annotations", "()V", "getHEX_DIGIT_CHARS", "()[C", "codePointIndexToCharIndex", "", "s", "", "codePointCount", "commonOf", "Lokio/ByteString;", "data", "decodeHexDigit", "c", "", "commonBase64", "", "commonBase64Url", "commonCompareTo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "commonCopyInto", "", "offset", "target", "targetOffset", "byteCount", "commonDecodeBase64", "commonDecodeHex", "commonEncodeUtf8", "commonEndsWith", "", "suffix", "commonEquals", "", "commonGetByte", "", "pos", "commonGetSize", "commonHashCode", "commonHex", "commonIndexOf", "fromIndex", "commonInternalArray", "commonLastIndexOf", "commonRangeEquals", "otherOffset", "commonStartsWith", RequestParameters.PREFIX, "commonSubstring", "beginIndex", "endIndex", "commonToAsciiLowercase", "commonToAsciiUppercase", "commonToByteArray", "commonToByteString", "commonToString", "commonUtf8", "commonWrite", "buffer", "Lokio/Buffer;", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class ByteString {
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    public static final int codePointIndexToCharIndex(byte[] bArr, int i11) {
        byte b11;
        int i12;
        int length = bArr.length;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < length) {
            byte b12 = bArr[i13];
            if (b12 >= 0) {
                int i16 = i15 + 1;
                if (i15 == i11) {
                    return i14;
                }
                if ((b12 != 10 && b12 != 13 && ((b12 >= 0 && b12 < 32) || (127 <= b12 && b12 < 160))) || b12 == 65533) {
                    return -1;
                }
                i14 += b12 < 65536 ? 1 : 2;
                i13++;
                while (true) {
                    i15 = i16;
                    if (i13 >= length || (b11 = bArr[i13]) < 0) {
                        break;
                    }
                    i13++;
                    i16 = i15 + 1;
                    if (i15 == i11) {
                        return i14;
                    }
                    if ((b11 != 10 && b11 != 13 && ((b11 >= 0 && b11 < 32) || (127 <= b11 && b11 < 160))) || b11 == 65533) {
                        return -1;
                    }
                    i14 += b11 < 65536 ? 1 : 2;
                }
            } else {
                if ((b12 >> 5) == -2) {
                    int i17 = i13 + 1;
                    if (length <= i17) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b13 = bArr[i17];
                    if ((b13 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    int i18 = (b13 ^ 3968) ^ (b12 << 6);
                    if (i18 < 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    i12 = i15 + 1;
                    if (i15 == i11) {
                        return i14;
                    }
                    if ((i18 != 10 && i18 != 13 && ((i18 >= 0 && i18 < 32) || (127 <= i18 && i18 < 160))) || i18 == 65533) {
                        return -1;
                    }
                    i14 += i18 < 65536 ? 1 : 2;
                    Unit unit = Unit.f67061a;
                    i13 += 2;
                } else if ((b12 >> 4) == -2) {
                    int i19 = i13 + 2;
                    if (length <= i19) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b14 = bArr[i13 + 1];
                    if ((b14 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b15 = bArr[i19];
                    if ((b15 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    int i20 = ((b14 << 6) ^ ((-123008) ^ b15)) ^ (b12 << 12);
                    if (i20 < 2048) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    if (55296 <= i20 && i20 < 57344) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    i12 = i15 + 1;
                    if (i15 == i11) {
                        return i14;
                    }
                    if ((i20 != 10 && i20 != 13 && ((i20 >= 0 && i20 < 32) || (127 <= i20 && i20 < 160))) || i20 == 65533) {
                        return -1;
                    }
                    i14 += i20 < 65536 ? 1 : 2;
                    Unit unit2 = Unit.f67061a;
                    i13 += 3;
                } else {
                    if ((b12 >> 3) != -2) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    int i21 = i13 + 3;
                    if (length <= i21) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b16 = bArr[i13 + 1];
                    if ((b16 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b17 = bArr[i13 + 2];
                    if ((b17 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    byte b18 = bArr[i21];
                    if ((b18 & 192) != 128) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    int i22 = (((b18 ^ 3678080) ^ (b17 << 6)) ^ (b16 << 12)) ^ (b12 << 18);
                    if (i22 > 1114111) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    if (55296 <= i22 && i22 < 57344) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    if (i22 < 65536) {
                        if (i15 == i11) {
                            return i14;
                        }
                        return -1;
                    }
                    i12 = i15 + 1;
                    if (i15 == i11) {
                        return i14;
                    }
                    if ((i22 != 10 && i22 != 13 && ((i22 >= 0 && i22 < 32) || (127 <= i22 && i22 < 160))) || i22 == 65533) {
                        return -1;
                    }
                    i14 += i22 < 65536 ? 1 : 2;
                    Unit unit3 = Unit.f67061a;
                    i13 += 4;
                }
                i15 = i12;
            }
        }
        return i14;
    }

    public static final String commonBase64(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return Base64.encodeBase64$default(byteString.getData(), null, 1, null);
    }

    public static final String commonBase64Url(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return Base64.encodeBase64(byteString.getData(), Base64.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(okio.ByteString byteString, okio.ByteString other) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i11 = 0; i11 < iMin; i11++) {
            int i12 = byteString.getByte(i11) & 255;
            int i13 = other.getByte(i11) & 255;
            if (i12 != i13) {
                return i12 < i13 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(okio.ByteString byteString, int i11, byte[] target, int i12, int i13) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(target, "target");
        ArraysKt.j(byteString.getData(), target, i12, i11, i13 + i11);
    }

    public static final okio.ByteString commonDecodeBase64(String str) {
        Intrinsics.h(str, "<this>");
        byte[] bArrDecodeBase64ToArray = Base64.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new okio.ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    public static final okio.ByteString commonDecodeHex(String str) {
        Intrinsics.h(str, "<this>");
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i11 * 2;
            bArr[i11] = (byte) ((decodeHexDigit(str.charAt(i12)) << 4) + decodeHexDigit(str.charAt(i12 + 1)));
        }
        return new okio.ByteString(bArr);
    }

    public static final okio.ByteString commonEncodeUtf8(String str) {
        Intrinsics.h(str, "<this>");
        okio.ByteString byteString = new okio.ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, okio.ByteString suffix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, byte[] suffix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final boolean commonEquals(okio.ByteString byteString, Object obj) {
        Intrinsics.h(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof okio.ByteString) {
            okio.ByteString byteString2 = (okio.ByteString) obj;
            if (byteString2.size() == byteString.getData().length && byteString2.rangeEquals(0, byteString.getData(), 0, byteString.getData().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(okio.ByteString byteString, int i11) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData()[i11];
    }

    public static final int commonGetSize(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData().length;
    }

    public static final int commonHashCode(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        int hashCode = byteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int iHashCode = Arrays.hashCode(byteString.getData());
        byteString.setHashCode$okio(iHashCode);
        return iHashCode;
    }

    public static final String commonHex(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        char[] cArr = new char[byteString.getData().length * 2];
        int i11 = 0;
        for (byte b11 : byteString.getData()) {
            int i12 = i11 + 1;
            cArr[i11] = getHEX_DIGIT_CHARS()[(b11 >> 4) & 15];
            i11 += 2;
            cArr[i12] = getHEX_DIGIT_CHARS()[b11 & 15];
        }
        return StringsKt.B(cArr);
    }

    public static final int commonIndexOf(okio.ByteString byteString, byte[] other, int i11) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        int length = byteString.getData().length - other.length;
        int iMax = Math.max(i11, 0);
        if (iMax > length) {
            return -1;
        }
        while (!SegmentedByteString.arrayRangeEquals(byteString.getData(), iMax, other, 0, other.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public static final byte[] commonInternalArray(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData();
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, okio.ByteString other, int i11) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i11);
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, byte[] other, int i11) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        for (int iMin = Math.min(SegmentedByteString.resolveDefaultParameter(byteString, i11), byteString.getData().length - other.length); -1 < iMin; iMin--) {
            if (SegmentedByteString.arrayRangeEquals(byteString.getData(), iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public static final okio.ByteString commonOf(byte[] data) {
        Intrinsics.h(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        return new okio.ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i11, okio.ByteString other, int i12, int i13) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return other.rangeEquals(i12, byteString.getData(), i11, i13);
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i11, byte[] other, int i12, int i13) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return i11 >= 0 && i11 <= byteString.getData().length - i13 && i12 >= 0 && i12 <= other.length - i13 && SegmentedByteString.arrayRangeEquals(byteString.getData(), i11, other, i12, i13);
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, okio.ByteString prefix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, byte[] prefix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }

    public static final okio.ByteString commonSubstring(okio.ByteString byteString, int i11, int i12) {
        Intrinsics.h(byteString, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString, i12);
        if (i11 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (iResolveDefaultParameter <= byteString.getData().length) {
            if (iResolveDefaultParameter - i11 >= 0) {
                return (i11 == 0 && iResolveDefaultParameter == byteString.getData().length) ? byteString : new okio.ByteString(ArraysKt.s(byteString.getData(), i11, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.getData().length + ')').toString());
    }

    public static final okio.ByteString commonToAsciiLowercase(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        for (int i11 = 0; i11 < byteString.getData().length; i11++) {
            byte b11 = byteString.getData()[i11];
            if (b11 >= 65 && b11 <= 90) {
                byte[] data = byteString.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
                Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i11] = (byte) (b11 + 32);
                for (int i12 = i11 + 1; i12 < bArrCopyOf.length; i12++) {
                    byte b12 = bArrCopyOf[i12];
                    if (b12 >= 65 && b12 <= 90) {
                        bArrCopyOf[i12] = (byte) (b12 + 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final okio.ByteString commonToAsciiUppercase(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        for (int i11 = 0; i11 < byteString.getData().length; i11++) {
            byte b11 = byteString.getData()[i11];
            if (b11 >= 97 && b11 <= 122) {
                byte[] data = byteString.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
                Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i11] = (byte) (b11 - 32);
                for (int i12 = i11 + 1; i12 < bArrCopyOf.length; i12++) {
                    byte b12 = bArrCopyOf[i12];
                    if (b12 >= 97 && b12 <= 122) {
                        bArrCopyOf[i12] = (byte) (b12 - 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final byte[] commonToByteArray(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        byte[] data = byteString.getData();
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    public static final okio.ByteString commonToByteString(byte[] bArr, int i11, int i12) {
        Intrinsics.h(bArr, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i12);
        SegmentedByteString.checkOffsetAndCount(bArr.length, i11, iResolveDefaultParameter);
        return new okio.ByteString(ArraysKt.s(bArr, i11, iResolveDefaultParameter + i11));
    }

    public static final String commonToString(okio.ByteString byteString) {
        okio.ByteString byteString2 = byteString;
        Intrinsics.h(byteString2, "<this>");
        if (byteString.getData().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = byteString.utf8();
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strQ = StringsKt.Q(StringsKt.Q(StringsKt.Q(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strQ + ']';
            }
            return "[size=" + byteString.getData().length + " text=" + strQ + "…]";
        }
        if (byteString.getData().length <= 64) {
            return "[hex=" + byteString.hex() + ']';
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[size=");
        sb2.append(byteString.getData().length);
        sb2.append(" hex=");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString2, 64);
        if (iResolveDefaultParameter > byteString.getData().length) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData().length + ')').toString());
        }
        if (iResolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (iResolveDefaultParameter != byteString.getData().length) {
            byteString2 = new okio.ByteString(ArraysKt.s(byteString.getData(), 0, iResolveDefaultParameter));
        }
        sb2.append(byteString2.hex());
        sb2.append("…]");
        return sb2.toString();
    }

    public static final String commonUtf8(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        String utf8 = byteString.getUtf8();
        if (utf8 != null) {
            return utf8;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final void commonWrite(okio.ByteString byteString, Buffer buffer, int i11, int i12) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(buffer, "buffer");
        buffer.write(byteString.getData(), i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c11) {
        if ('0' <= c11 && c11 < ':') {
            return c11 - '0';
        }
        if ('a' <= c11 && c11 < 'g') {
            return c11 - 'W';
        }
        if ('A' <= c11 && c11 < 'G') {
            return c11 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c11);
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }
}
