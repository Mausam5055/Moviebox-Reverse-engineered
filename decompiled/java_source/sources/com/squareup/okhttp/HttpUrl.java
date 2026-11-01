package com.squareup.okhttp;

import com.transsion.gslb.Utils;
import java.io.EOFException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpUrl {
    static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    static final String FRAGMENT_ENCODE_SET = "";
    static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    static final String QUERY_COMPONENT_ENCODE_SET = " \"'<>#&=";
    static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    static final String QUERY_ENCODE_SET = " \"'<>#";
    static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;

    /* JADX INFO: renamed from: com.squareup.okhttp.HttpUrl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult;

        static {
            int[] iArr = new int[Builder.ParseResult.values().length];
            $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult = iArr;
            try {
                iArr[Builder.ParseResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static final class Builder {
        String encodedFragment;
        final List<String> encodedPathSegments;
        List<String> encodedQueryNamesAndValues;
        String host;
        String scheme;
        String encodedUsername = "";
        String encodedPassword = "";
        int port = -1;

        enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private static String canonicalizeHost(String str, int i11, int i12) {
            String strPercentDecode = HttpUrl.percentDecode(str, i11, i12, false);
            if (!strPercentDecode.startsWith("[") || !strPercentDecode.endsWith("]")) {
                return domainToAscii(strPercentDecode);
            }
            InetAddress inetAddressDecodeIpv6 = decodeIpv6(strPercentDecode, 1, strPercentDecode.length() - 1);
            if (inetAddressDecodeIpv6 == null) {
                return null;
            }
            byte[] address = inetAddressDecodeIpv6.getAddress();
            if (address.length == 16) {
                return inet6AddressToAscii(address);
            }
            throw new AssertionError();
        }

        private static boolean containsInvalidHostnameAsciiCodes(String str) {
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        private static boolean decodeIpv4Suffix(String str, int i11, int i12, byte[] bArr, int i13) {
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
                    if (cCharAt < '0' || cCharAt > '9') {
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

        /* JADX WARN: Code duplicated, block: B:31:0x004f  */
        /* JADX WARN: Code duplicated, block: B:34:0x005a A[LOOP:1: B:30:0x004d->B:34:0x005a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:59:0x0060 A[EDGE_INSN: B:59:0x0060->B:35:0x0060 BREAK  A[LOOP:1: B:30:0x004d->B:34:0x005a], SYNTHETIC] */
        private static InetAddress decodeIpv6(String str, int i11, int i12) {
            int i13;
            int i14;
            int iDecodeHexDigit;
            byte[] bArr = new byte[16];
            int i15 = 0;
            int i16 = -1;
            int i17 = -1;
            while (i11 < i12) {
                if (i15 == 16) {
                    return null;
                }
                int i18 = i11 + 2;
                if (i18 <= i12 && str.regionMatches(i11, "::", 0, 2)) {
                    if (i16 != -1) {
                        return null;
                    }
                    i15 += 2;
                    i16 = i15;
                    if (i18 == i12) {
                        break;
                    }
                    i17 = i18;
                    i13 = 0;
                    i11 = i17;
                    while (i11 < i12) {
                        iDecodeHexDigit = HttpUrl.decodeHexDigit(str.charAt(i11));
                        if (iDecodeHexDigit == -1) {
                            break;
                            break;
                        }
                        i13 = (i13 << 4) + iDecodeHexDigit;
                        i11++;
                    }
                    i14 = i11 - i17;
                    if (i14 != 0) {
                    }
                    return null;
                }
                if (i15 != 0) {
                    if (!str.regionMatches(i11, ":", 0, 1)) {
                        if (!str.regionMatches(i11, ".", 0, 1) || !decodeIpv4Suffix(str, i17, i12, bArr, i15 - 2)) {
                            return null;
                        }
                        i15 += 2;
                        break;
                    }
                    i11++;
                }
                i17 = i11;
                i13 = 0;
                i11 = i17;
                while (i11 < i12) {
                    iDecodeHexDigit = HttpUrl.decodeHexDigit(str.charAt(i11));
                    if (iDecodeHexDigit == -1) {
                        break;
                    }
                    i13 = (i13 << 4) + iDecodeHexDigit;
                    i11++;
                }
                i14 = i11 - i17;
                if (i14 != 0 || i14 > 4) {
                    return null;
                }
                int i19 = i15 + 1;
                bArr[i15] = (byte) ((i13 >>> 8) & 255);
                i15 += 2;
                bArr[i19] = (byte) (i13 & 255);
            }
            if (i15 != 16) {
                if (i16 == -1) {
                    return null;
                }
                int i20 = i15 - i16;
                System.arraycopy(bArr, i16, bArr, 16 - i20, i20);
                Arrays.fill(bArr, i16, (16 - i15) + i16, (byte) 0);
            }
            try {
                return InetAddress.getByAddress(bArr);
            } catch (UnknownHostException unused) {
                throw new AssertionError();
            }
        }

        private static String domainToAscii(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty() || containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        private static String inet6AddressToAscii(byte[] bArr) {
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
                if (i16 > i14) {
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
                    buffer.writeHexadecimalUnsignedLong(((bArr[i12] & 255) << 8) | (bArr[i12 + 1] & 255));
                    i12 += 2;
                }
            }
            return buffer.readUtf8();
        }

        private boolean isDot(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int parsePort(String str, int i11, int i12) {
            try {
                int i13 = Integer.parseInt(HttpUrl.canonicalize(str, i11, i12, "", false, false, true));
                if (i13 <= 0 || i13 > 65535) {
                    return -1;
                }
                return i13;
            } catch (NumberFormatException unused) {
            }
        }

        private void pop() {
            List<String> list = this.encodedPathSegments;
            if (!list.remove(list.size() - 1).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
            }
        }

        private static int portColonOffset(String str, int i11, int i12) {
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt == ':') {
                    return i11;
                }
                if (cCharAt == '[') {
                    do {
                        i11++;
                        if (i11 >= i12) {
                            break;
                        }
                    } while (str.charAt(i11) != ']');
                }
                i11++;
            }
            return i12;
        }

        private void push(String str, int i11, int i12, boolean z10, boolean z11) throws EOFException {
            String strCanonicalize = HttpUrl.canonicalize(str, i11, i12, " \"<>^`{}|/\\?#", z11, false, true);
            if (isDot(strCanonicalize)) {
                return;
            }
            if (isDotDot(strCanonicalize)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize);
            } else {
                this.encodedPathSegments.add(strCanonicalize);
            }
            if (z10) {
                this.encodedPathSegments.add("");
            }
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        private void resolvePath(String str, int i11, int i12) throws EOFException {
            if (i11 == i12) {
                return;
            }
            char cCharAt = str.charAt(i11);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i11++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i13 = i11;
                if (i13 >= i12) {
                    return;
                }
                i11 = HttpUrl.delimiterOffset(str, i13, i12, "/\\");
                boolean z10 = i11 < i12;
                push(str, i13, i11, z10, true);
                if (z10) {
                    i11++;
                }
            }
        }

        private static int schemeDelimiterOffset(String str, int i11, int i12) {
            if (i12 - i11 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i11);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i11++;
                    if (i11 >= i12) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i11;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private int skipLeadingAsciiWhitespace(String str, int i11, int i12) {
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i11;
                }
                i11++;
            }
            return i12;
        }

        private int skipTrailingAsciiWhitespace(String str, int i11, int i12) {
            for (int i13 = i12 - 1; i13 >= i11; i13--) {
                char cCharAt = str.charAt(i13);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i13 + 1;
                }
            }
            return i11;
        }

        private static int slashCount(String str, int i11, int i12) {
            int i13 = 0;
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i13++;
                i11++;
            }
            return i13;
        }

        public Builder addEncodedPathSegment(String str) throws EOFException {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            push(str, 0, str.length(), false, true);
            return this;
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " \"'<>#&=", true, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " \"'<>#&=", true, true, true) : null);
            return this;
        }

        public Builder addPathSegment(String str) throws EOFException {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            push(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " \"'<>#&=", false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " \"'<>#&=", false, true, true) : null);
            return this;
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.host != null) {
                return new HttpUrl(this, null);
            }
            throw new IllegalStateException("host == null");
        }

        int effectivePort() {
            int i11 = this.port;
            return i11 != -1 ? i11 : HttpUrl.defaultPort(this.scheme);
        }

        public Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", true, false, false) : null;
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPassword == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
            return this;
        }

        public Builder encodedPath(String str) throws EOFException {
            if (str == null) {
                throw new IllegalArgumentException("encodedPath == null");
            }
            if (str.startsWith("/")) {
                resolvePath(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("unexpected encodedPath: " + str);
        }

        public Builder encodedQuery(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, " \"'<>#", true, true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedUsername == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
            return this;
        }

        public Builder fragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", false, false, false) : null;
            return this;
        }

        public Builder host(String str) {
            if (str == null) {
                throw new IllegalArgumentException("host == null");
            }
            String strCanonicalizeHost = canonicalizeHost(str, 0, str.length());
            if (strCanonicalizeHost != null) {
                this.host = strCanonicalizeHost;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        ParseResult parse(HttpUrl httpUrl, String str) throws EOFException {
            int iDelimiterOffset;
            int i11;
            int iSkipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, 0, str.length());
            int iSkipTrailingAsciiWhitespace = skipTrailingAsciiWhitespace(str, iSkipLeadingAsciiWhitespace, str.length());
            if (schemeDelimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace) != -1) {
                if (str.regionMatches(true, iSkipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    this.scheme = "https";
                    iSkipLeadingAsciiWhitespace += 6;
                } else {
                    if (!str.regionMatches(true, iSkipLeadingAsciiWhitespace, "http:", 0, 5)) {
                        return ParseResult.UNSUPPORTED_SCHEME;
                    }
                    this.scheme = "http";
                    iSkipLeadingAsciiWhitespace += 5;
                }
            } else {
                if (httpUrl == null) {
                    return ParseResult.MISSING_SCHEME;
                }
                this.scheme = httpUrl.scheme;
            }
            int iSlashCount = slashCount(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace);
            char c11 = '?';
            char c12 = '#';
            if (iSlashCount >= 2 || httpUrl == null || !httpUrl.scheme.equals(this.scheme)) {
                boolean z10 = false;
                int i12 = iSkipLeadingAsciiWhitespace + iSlashCount;
                boolean z11 = false;
                while (true) {
                    iDelimiterOffset = HttpUrl.delimiterOffset(str, i12, iSkipTrailingAsciiWhitespace, "@/\\?#");
                    byte bCharAt = iDelimiterOffset != iSkipTrailingAsciiWhitespace ? str.charAt(iDelimiterOffset) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c12 || bCharAt == 47 || bCharAt == 92 || bCharAt == c11) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z11) {
                            i11 = iDelimiterOffset;
                            this.encodedPassword += "%40" + HttpUrl.canonicalize(str, i12, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                        } else {
                            int iDelimiterOffset2 = HttpUrl.delimiterOffset(str, i12, iDelimiterOffset, ":");
                            i11 = iDelimiterOffset;
                            String strCanonicalize = HttpUrl.canonicalize(str, i12, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                            if (z10) {
                                strCanonicalize = this.encodedUsername + "%40" + strCanonicalize;
                            }
                            this.encodedUsername = strCanonicalize;
                            if (iDelimiterOffset2 != i11) {
                                this.encodedPassword = HttpUrl.canonicalize(str, iDelimiterOffset2 + 1, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                                z11 = true;
                            }
                            z10 = true;
                        }
                        i12 = i11 + 1;
                    }
                    c11 = '?';
                    c12 = '#';
                }
                int iPortColonOffset = portColonOffset(str, i12, iDelimiterOffset);
                int i13 = iPortColonOffset + 1;
                if (i13 < iDelimiterOffset) {
                    this.host = canonicalizeHost(str, i12, iPortColonOffset);
                    int port = parsePort(str, i13, iDelimiterOffset);
                    this.port = port;
                    if (port == -1) {
                        return ParseResult.INVALID_PORT;
                    }
                } else {
                    this.host = canonicalizeHost(str, i12, iPortColonOffset);
                    this.port = HttpUrl.defaultPort(this.scheme);
                }
                if (this.host == null) {
                    return ParseResult.INVALID_HOST;
                }
                iSkipLeadingAsciiWhitespace = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iSkipLeadingAsciiWhitespace == iSkipTrailingAsciiWhitespace || str.charAt(iSkipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int iDelimiterOffset3 = HttpUrl.delimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace, "?#");
            resolvePath(str, iSkipLeadingAsciiWhitespace, iDelimiterOffset3);
            if (iDelimiterOffset3 < iSkipTrailingAsciiWhitespace && str.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = HttpUrl.delimiterOffset(str, iDelimiterOffset3, iSkipTrailingAsciiWhitespace, Utils.SEPARATOR);
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, iDelimiterOffset3 + 1, iDelimiterOffset4, " \"'<>#", true, true, true));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < iSkipTrailingAsciiWhitespace && str.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, 1 + iDelimiterOffset3, iSkipTrailingAsciiWhitespace, "", true, false, false);
            }
            return ParseResult.SUCCESS;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new IllegalArgumentException("password == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, true);
            return this;
        }

        public Builder port(int i11) {
            if (i11 > 0 && i11 <= 65535) {
                this.port = i11;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i11);
        }

        public Builder query(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, " \"'<>#", false, true, true)) : null;
            return this;
        }

        Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.encodedPathSegments.set(i11, HttpUrl.canonicalize(this.encodedPathSegments.get(i11), "[]", true, false, true));
            }
            List<String> list = this.encodedQueryNamesAndValues;
            if (list != null) {
                int size2 = list.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    String str = this.encodedQueryNamesAndValues.get(i12);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i12, HttpUrl.canonicalize(str, "\\^`{|}", true, true, true));
                    }
                }
            }
            String str2 = this.encodedFragment;
            if (str2 != null) {
                this.encodedFragment = HttpUrl.canonicalize(str2, " \"#<>\\^`{|}", true, false, false);
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, " \"'<>#&=", true, true, true));
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, " \"'<>#&=", false, true, true));
            return this;
        }

        public Builder removePathSegment(int i11) {
            this.encodedPathSegments.remove(i11);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new IllegalArgumentException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.scheme = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.scheme = "https";
            }
            return this;
        }

        public Builder setEncodedPathSegment(int i11, String str) throws EOFException {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), " \"<>^`{}|/\\?#", true, false, true);
            this.encodedPathSegments.set(i11, strCanonicalize);
            if (!isDot(strCanonicalize) && !isDotDot(strCanonicalize)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i11, String str) throws EOFException {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), " \"<>^`{}|/\\?#", false, false, true);
            if (!isDot(strCanonicalize) && !isDotDot(strCanonicalize)) {
                this.encodedPathSegments.set(i11, strCanonicalize);
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.scheme);
            sb2.append("://");
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb2.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.encodedPassword);
                }
                sb2.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.host);
                sb2.append(']');
            } else {
                sb2.append(this.host);
            }
            int iEffectivePort = effectivePort();
            if (iEffectivePort != HttpUrl.defaultPort(this.scheme)) {
                sb2.append(':');
                sb2.append(iEffectivePort);
            }
            HttpUrl.pathSegmentsToString(sb2, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb2.append('?');
                HttpUrl.namesAndValuesToQueryString(sb2, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb2.append('#');
                sb2.append(this.encodedFragment);
            }
            return sb2.toString();
        }

        public Builder username(String str) {
            if (str == null) {
                throw new IllegalArgumentException("username == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, true);
            return this;
        }
    }

    private HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        List<String> list = builder.encodedQueryNamesAndValues;
        this.queryNamesAndValues = list != null ? percentDecode(list, true) : null;
        String str = builder.encodedFragment;
        this.fragment = str != null ? percentDecode(str, false) : null;
        this.url = builder.toString();
    }

    /* synthetic */ HttpUrl(Builder builder, AnonymousClass1 anonymousClass1) {
        this(builder);
    }

    static String canonicalize(String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12) throws EOFException {
        int iCharCount = i11;
        while (iCharCount < i12) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z12) || str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && !z10) || (iCodePointAt == 43 && z11)))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i11, iCharCount);
                canonicalize(buffer, str, iCharCount, i12, str2, z10, z11, z12);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i11, i12);
    }

    static String canonicalize(String str, String str2, boolean z10, boolean z11, boolean z12) {
        return canonicalize(str, 0, str.length(), str2, z10, z11, z12);
    }

    static void canonicalize(Buffer buffer, String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12) throws EOFException {
        Buffer buffer2 = null;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z11) {
                    buffer.writeUtf8(z10 ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z12) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && !z10))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        byte b11 = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = HEX_DIGITS;
                        buffer.writeByte((int) cArr[((b11 & 255) >> 4) & 15]);
                        buffer.writeByte((int) cArr[b11 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    static int decodeHexDigit(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 >= 'a' && c11 <= 'f') {
            return c11 - 'W';
        }
        if (c11 < 'A' || c11 > 'F') {
            return -1;
        }
        return c11 - '7';
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int delimiterOffset(String str, int i11, int i12, String str2) {
        while (i11 < i12) {
            if (str2.indexOf(str.charAt(i11)) != -1) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    static HttpUrl getChecked(String str) throws MalformedURLException, EOFException, UnknownHostException {
        Builder builder = new Builder();
        Builder.ParseResult parseResult = builder.parse(null, str);
        int i11 = AnonymousClass1.$SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[parseResult.ordinal()];
        if (i11 == 1) {
            return builder.build();
        }
        if (i11 == 2) {
            throw new UnknownHostException("Invalid host: " + str);
        }
        throw new MalformedURLException("Invalid URL: " + parseResult + " for " + str);
    }

    static void namesAndValuesToQueryString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            String str = list.get(i11);
            String str2 = list.get(i11 + 1);
            if (i11 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == Builder.ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    static void pathSegmentsToString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            sb2.append('/');
            sb2.append(list.get(i11));
        }
    }

    static String percentDecode(String str, int i11, int i12, boolean z10) {
        for (int i13 = i11; i13 < i12; i13++) {
            char cCharAt = str.charAt(i13);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i11, i13);
                percentDecode(buffer, str, i13, i12, z10);
                return buffer.readUtf8();
            }
        }
        return str.substring(i11, i12);
    }

    static String percentDecode(String str, boolean z10) {
        return percentDecode(str, 0, str.length(), z10);
    }

    private List<String> percentDecode(List<String> list, boolean z10) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? percentDecode(next, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    static void percentDecode(Buffer buffer, String str, int i11, int i12, boolean z10) {
        int i13;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (iCodePointAt == 37 && (i13 = i11 + 2) < i12) {
                int iDecodeHexDigit = decodeHexDigit(str.charAt(i11 + 1));
                int iDecodeHexDigit2 = decodeHexDigit(str.charAt(i13));
                if (iDecodeHexDigit == -1 || iDecodeHexDigit2 == -1) {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                } else {
                    buffer.writeByte((iDecodeHexDigit << 4) + iDecodeHexDigit2);
                    i11 = i13;
                }
            } else if (iCodePointAt == 43 && z10) {
                buffer.writeByte(32);
            } else {
                buffer.writeUtf8CodePoint(iCodePointAt);
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    static List<String> queryStringToNamesAndValues(String str) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 <= str.length()) {
            int iIndexOf = str.indexOf(38, i11);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i11);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i11, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i11, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i11 = iIndexOf + 1;
        }
        return arrayList;
    }

    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, this.url.indexOf(64));
    }

    public String encodedPath() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        return this.url.substring(iIndexOf, delimiterOffset(str, iIndexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int iDelimiterOffset = delimiterOffset(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iDelimiterOffset) {
            int i11 = iIndexOf + 1;
            int iDelimiterOffset2 = delimiterOffset(this.url, i11, iDelimiterOffset, "/");
            arrayList.add(this.url.substring(i11, iDelimiterOffset2));
            iIndexOf = iDelimiterOffset2;
        }
        return arrayList;
    }

    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iIndexOf = this.url.indexOf(63);
        int i11 = iIndexOf + 1;
        String str = this.url;
        return this.url.substring(i11, delimiterOffset(str, iIndexOf + 2, str.length(), Utils.SEPARATOR));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, delimiterOffset(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String host() {
        return this.host;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    public String password() {
        return this.password;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public int port() {
        return this.port;
    }

    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        namesAndValuesToQueryString(sb2, this.queryNamesAndValues);
        return sb2.toString();
    }

    public String queryParameter(String str) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i11))) {
                return this.queryNamesAndValues.get(i11 + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i11) {
        return this.queryNamesAndValues.get(i11 * 2);
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i11));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i11) {
        return this.queryNamesAndValues.get((i11 * 2) + 1);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i11))) {
                arrayList.add(this.queryNamesAndValues.get(i11 + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public HttpUrl resolve(String str) {
        Builder builder = new Builder();
        if (builder.parse(this, str) == Builder.ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public URI uri() {
        try {
            return new URI(newBuilder().reencodeForUri().toString());
        } catch (URISyntaxException unused) {
            throw new IllegalStateException("not valid as a java.net.URI: " + this.url);
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e11) {
            throw new RuntimeException(e11);
        }
    }

    public String username() {
        return this.username;
    }
}
