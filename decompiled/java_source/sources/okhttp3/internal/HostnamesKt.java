package okhttp3.internal;

import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, d2 = {"decodeIpv4Suffix", "", "input", "", "pos", "", "limit", PlaceTypes.ADDRESS, "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (Intrinsics.j(cCharAt, 31) <= 0 || Intrinsics.j(cCharAt, 127) >= 0 || StringsKt.n0(" #%/:?@[\\]", cCharAt, 0, false, 6, null) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i11, int i12, byte[] bArr, int i13) {
        int i14 = i13;
        while (i11 < i12) {
            if (i14 == bArr.length) {
                return false;
            }
            if (i14 != i13) {
                if (str.charAt(i11) != '.') {
                    return false;
                }
                i11++;
            }
            int i15 = i11;
            int i16 = 0;
            while (i15 < i12) {
                char cCharAt = str.charAt(i15);
                if (Intrinsics.j(cCharAt, 48) < 0 || Intrinsics.j(cCharAt, 57) > 0) {
                    break;
                }
                if ((i16 == 0 && i11 != i15) || (i16 = ((i16 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i15++;
            }
            if (i15 - i11 == 0) {
                return false;
            }
            bArr[i14] = (byte) i16;
            i14++;
            i11 = i15;
        }
        return i14 == i13 + 4;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[LOOP:1: B:30:0x0069->B:33:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x007b A[EDGE_INSN: B:54:0x007b->B:34:0x007b BREAK  A[LOOP:1: B:30:0x0069->B:33:0x0075], SYNTHETIC] */
    private static final InetAddress decodeIpv6(String str, int i11, int i12) {
        int i13;
        int i14;
        int hexDigit;
        byte[] bArr = new byte[16];
        int i15 = i11;
        int i16 = -1;
        int i17 = -1;
        int i18 = 0;
        while (i15 < i12) {
            if (i18 == 16) {
                return null;
            }
            int i19 = i15 + 2;
            if (i19 <= i12 && StringsKt.V(str, "::", i15, false, 4, null)) {
                if (i16 != -1) {
                    return null;
                }
                i18 += 2;
                if (i19 == i12) {
                    i16 = i18;
                    break;
                }
                i17 = i19;
                i16 = i18;
                i15 = i17;
                i13 = 0;
                while (i15 < i12) {
                    hexDigit = Util.parseHexDigit(str.charAt(i15));
                    if (hexDigit != -1) {
                        break;
                        break;
                    }
                    i13 = (i13 << 4) + hexDigit;
                    i15++;
                }
                i14 = i15 - i17;
                if (i14 != 0) {
                }
                return null;
            }
            if (i18 != 0) {
                if (!StringsKt.V(str, ":", i15, false, 4, null)) {
                    if (!StringsKt.V(str, ".", i15, false, 4, null) || !decodeIpv4Suffix(str, i17, i12, bArr, i18 - 2)) {
                        return null;
                    }
                    i18 += 2;
                    break;
                }
                i15++;
            }
            i17 = i15;
            i15 = i17;
            i13 = 0;
            while (i15 < i12) {
                hexDigit = Util.parseHexDigit(str.charAt(i15));
                if (hexDigit != -1) {
                    break;
                }
                i13 = (i13 << 4) + hexDigit;
                i15++;
            }
            i14 = i15 - i17;
            if (i14 != 0 || i14 > 4) {
                return null;
            }
            int i20 = i18 + 1;
            bArr[i18] = (byte) ((i13 >>> 8) & 255);
            i18 += 2;
            bArr[i20] = (byte) (i13 & 255);
        }
        if (i18 != 16) {
            if (i16 == -1) {
                return null;
            }
            int i21 = i18 - i16;
            System.arraycopy(bArr, i16, bArr, 16 - i21, i21);
            Arrays.fill(bArr, i16, (16 - i18) + i16, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < bArr.length) {
            int i15 = i13;
            while (i15 < 16 && bArr[i15] == 0 && bArr[i15 + 1] == 0) {
                i15 += 2;
            }
            int i16 = i15 - i13;
            if (i16 > i14 && i16 >= 4) {
                i11 = i13;
                i14 = i16;
            }
            i13 = i15 + 2;
        }
        Buffer buffer = new Buffer();
        while (i12 < bArr.length) {
            if (i12 == i11) {
                buffer.writeByte(58);
                i12 += i14;
                if (i12 == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i12 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((Util.and(bArr[i12], 255) << 8) | Util.and(bArr[i12 + 1], 255));
                i12 += 2;
            }
        }
        return buffer.readUtf8();
    }

    public static final String toCanonicalHost(String str) {
        Intrinsics.h(str, "<this>");
        if (!StringsKt.c0(str, ":", false, 2, null)) {
            try {
                String ascii = IDN.toASCII(str);
                Intrinsics.g(ascii, "toASCII(host)");
                Locale US = Locale.US;
                Intrinsics.g(US, "US");
                String lowerCase = ascii.toLowerCase(US);
                Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0 || containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressDecodeIpv6 = (StringsKt.W(str, "[", false, 2, null) && StringsKt.G(str, "]", false, 2, null)) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
        if (inetAddressDecodeIpv6 == null) {
            return null;
        }
        byte[] address = inetAddressDecodeIpv6.getAddress();
        if (address.length == 16) {
            Intrinsics.g(address, "address");
            return inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return inetAddressDecodeIpv6.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
