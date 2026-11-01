package com.mbridge.msdk.mbsignalcommon.windvane;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f36573a = {"wv_hybrid:", "mraid:", "ssp:", "mvb_hybrid:"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f36574b = Pattern.compile("hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f36575c = Pattern.compile("mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f36576d = Pattern.compile("ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f36577e = Pattern.compile("mv://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, String> f36578f = new HashMap();

    static {
        for (d dVar : d.values()) {
            f36578f.put(dVar.c(), dVar.b());
        }
    }

    public static String a(String str) {
        char[] cArr = {'\'', '\\'};
        StringBuffer stringBuffer = new StringBuffer(1000);
        stringBuffer.setLength(0);
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 255) {
                int i12 = 0;
                while (true) {
                    if (i12 >= 2) {
                        stringBuffer.append(cCharAt);
                        break;
                    }
                    if (cArr[i12] == cCharAt) {
                        stringBuffer.append("\\" + cCharAt);
                        break;
                    }
                    i12++;
                }
            } else {
                stringBuffer.append("\\u");
                String upperCase = Integer.toHexString(cCharAt >>> '\b').toUpperCase();
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                String upperCase2 = Integer.toHexString(cCharAt & 255).toUpperCase();
                if (upperCase2.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase2);
            }
        }
        return new String(stringBuffer);
    }

    public static String b(String str) {
        String str2 = f36578f.get(d(str));
        return str2 == null ? "" : str2;
    }

    public static Pattern c(String str) {
        if ("wv_hybrid:".equals(str)) {
            return f36577e;
        }
        if ("mraid:".equals(str)) {
            return f36575c;
        }
        if ("ssp:".equals(str)) {
            return f36576d;
        }
        if ("mvb_hybrid:".equals(str)) {
            return f36577e;
        }
        return null;
    }

    public static String d(String str) {
        String path;
        int iLastIndexOf;
        return (TextUtils.isEmpty(str) || (path = Uri.parse(str).getPath()) == null || (iLastIndexOf = path.lastIndexOf(".")) == -1) ? "" : path.substring(iLastIndexOf + 1);
    }

    public static boolean e(String str) {
        return b(str).startsWith("image");
    }

    public static boolean f(String str) {
        for (String str2 : f36573a) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
