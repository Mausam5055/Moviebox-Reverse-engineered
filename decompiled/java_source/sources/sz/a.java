package sz;

import g10.h;
import ir.ac.iust.htmlchardet.Charsets;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    private static Document a(byte[] bArr, String str) {
        return d10.a.b(new String(bArr, Charset.forName(str)));
    }

    public static String b(byte[] bArr, boolean... zArr) {
        Document documentA;
        byte[] bytes = null;
        if (zArr == null || zArr.length <= 0 || !zArr[0]) {
            documentA = null;
        } else {
            documentA = a(bArr, "ISO-8859-1");
            String strD = d(documentA);
            if (Charsets.isValid(strD)) {
                return Charsets.normalize(strD);
            }
        }
        String strE = e(bArr);
        if (strE.equalsIgnoreCase("UTF-8")) {
            return Charsets.normalize(strE);
        }
        if (documentA == null) {
            documentA = a(bArr, "ISO-8859-1");
        }
        try {
            bytes = documentA.W0().getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
        }
        if (bytes != null && bytes.length >= 40) {
            bArr = bytes;
        }
        return Charsets.normalize(c(bArr));
    }

    private static String c(byte[] bArr) {
        tz.a aVar = new tz.a();
        aVar.d(bArr);
        return aVar.b().getName();
    }

    private static String d(Document document) {
        for (Element element : document.R0("meta")) {
            String strF = element.f("charset");
            if (Charsets.isValid(strF)) {
                return strF;
            }
            String strF2 = element.f("content");
            if (strF2.contains("charset")) {
                String strTrim = strF2.substring(strF2.indexOf("charset=") + 8, strF2.length()).trim();
                if (Charsets.isValid(strTrim)) {
                    return strTrim;
                }
            }
        }
        return null;
    }

    private static String e(byte[] bArr) {
        h hVar = new h(0);
        hVar.i(bArr, bArr.length, false);
        hVar.a();
        return hVar.g()[0];
    }
}
