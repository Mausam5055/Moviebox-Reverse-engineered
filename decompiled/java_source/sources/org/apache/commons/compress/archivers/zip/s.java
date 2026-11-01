package org.apache.commons.compress.archivers.zip;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final r f71189a = a("UTF8");

    public static r a(String str) {
        Charset charsetDefaultCharset = Charset.defaultCharset();
        if (str != null) {
            try {
                charsetDefaultCharset = Charset.forName(str);
            } catch (UnsupportedCharsetException unused) {
            }
        }
        return new e(charsetDefaultCharset, b(charsetDefaultCharset.name()));
    }

    static boolean b(String str) {
        if (str == null) {
            str = Charset.defaultCharset().name();
        }
        Charset charset = StandardCharsets.UTF_8;
        if (charset.name().equalsIgnoreCase(str)) {
            return true;
        }
        Iterator<String> it = charset.aliases().iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
