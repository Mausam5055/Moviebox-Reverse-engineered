package org.jsoup.helper;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.m;
import org.jsoup.parser.e;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f71687a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f71688b = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* JADX INFO: renamed from: org.jsoup.helper.a$a, reason: collision with other inner class name */
    private static class C0867a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f71689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f71690b;

        public C0867a(String str, boolean z10) {
            this.f71689a = str;
            this.f71690b = z10;
        }
    }

    private static C0867a a(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        byte b11 = bArr[0];
        if ((b11 == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b11 == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new C0867a("UTF-32", false);
        }
        if ((b11 == -2 && bArr[1] == -1) || (b11 == -1 && bArr[1] == -2)) {
            return new C0867a(C.UTF16_NAME, false);
        }
        if (b11 == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new C0867a("UTF-8", true);
        }
        return null;
    }

    static ByteBuffer b() {
        return ByteBuffer.allocate(0);
    }

    static String c(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f71687a.matcher(str);
        if (matcher.find()) {
            return g(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    static String d() {
        StringBuilder sb2 = new StringBuilder(32);
        Random random = new Random();
        for (int i11 = 0; i11 < 32; i11++) {
            char[] cArr = f71688b;
            sb2.append(cArr[random.nextInt(cArr.length)]);
        }
        return sb2.toString();
    }

    static Document e(InputStream inputStream, String str, String str2, e eVar) throws IOException {
        if (inputStream == null) {
            return new Document(str2);
        }
        e10.a aVarK = e10.a.k(inputStream, 32768, 0);
        aVarK.mark(32768);
        ByteBuffer byteBufferF = f(aVarK, 5119);
        boolean z10 = aVarK.read() == -1;
        aVarK.reset();
        C0867a c0867aA = a(byteBufferF);
        if (c0867aA != null) {
            str = c0867aA.f71689a;
        }
        Document documentE = null;
        if (str == null) {
            Document documentF = eVar.f(Charset.forName("UTF-8").decode(byteBufferF).toString(), str2);
            String strF = null;
            for (Element element : documentF.R0("meta[http-equiv=content-type], meta[charset]")) {
                if (element.w("http-equiv")) {
                    strF = c(element.f("content"));
                }
                if (strF == null && element.w("charset")) {
                    strF = element.f("charset");
                }
                if (strF != null) {
                    break;
                }
            }
            if (strF == null && documentF.n() > 0 && (documentF.m(0) instanceof m)) {
                m mVar = (m) documentF.m(0);
                if (mVar.d0().equals("xml")) {
                    strF = mVar.f("encoding");
                }
            }
            String strG = g(strF);
            if (strG != null && !strG.equalsIgnoreCase("UTF-8")) {
                str = strG.trim().replaceAll("[\"']", "");
            } else if (z10) {
                documentE = documentF;
            }
        } else {
            d.i(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
        }
        if (documentE == null) {
            String str3 = str != null ? str : "UTF-8";
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(aVarK, str3), 32768);
            if (c0867aA != null && c0867aA.f71690b) {
                bufferedReader.skip(1L);
            }
            try {
                documentE = eVar.e(bufferedReader, str2);
                documentE.g1().b(str3);
            } catch (UncheckedIOException e11) {
                throw e11.ioException();
            }
        }
        aVarK.close();
        return documentE;
    }

    public static ByteBuffer f(InputStream inputStream, int i11) {
        d.e(i11 >= 0, "maxSize must be 0 (unlimited) or larger");
        return e10.a.k(inputStream, 32768, i11).h(i11);
    }

    private static String g(String str) {
        if (str != null && str.length() != 0) {
            String strReplaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(strReplaceAll)) {
                    return strReplaceAll;
                }
                String upperCase = strReplaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }
}
