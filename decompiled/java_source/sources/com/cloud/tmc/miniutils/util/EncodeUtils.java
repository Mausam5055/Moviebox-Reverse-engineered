package com.cloud.tmc.miniutils.util;

import android.os.Build;
import android.text.Html;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes3.dex */
public final class EncodeUtils {
    private EncodeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static byte[] base64Decode(String str) {
        return (str == null || str.length() == 0) ? new byte[0] : Base64.decode(str, 2);
    }

    public static byte[] base64Decode(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? new byte[0] : Base64.decode(bArr, 2);
    }

    public static byte[] base64Encode(String str) {
        return base64Encode(str.getBytes());
    }

    public static byte[] base64Encode(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? new byte[0] : Base64.encode(bArr, 2);
    }

    public static String base64Encode2String(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? "" : Base64.encodeToString(bArr, 2);
    }

    public static String binaryDecode(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        String[] strArrSplit = str.split(" ");
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrSplit) {
            sb2.append((char) Integer.parseInt(str2, 2));
        }
        return sb2.toString();
    }

    public static String binaryEncode(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (char c11 : str.toCharArray()) {
            sb2.append(Integer.toBinaryString(c11));
            sb2.append(" ");
        }
        return sb2.deleteCharAt(sb2.length() - 1).toString();
    }

    public static CharSequence htmlDecode(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str);
    }

    public static String htmlEncode(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int length = charSequence.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt == '\"') {
                sb2.append("&quot;");
            } else if (cCharAt == '<') {
                sb2.append("&lt;");
            } else if (cCharAt == '>') {
                sb2.append("&gt;");
            } else if (cCharAt == '&') {
                sb2.append("&amp;");
            } else if (cCharAt != '\'') {
                sb2.append(cCharAt);
            } else {
                sb2.append("&#39;");
            }
        }
        return sb2.toString();
    }

    public static String urlDecode(String str) {
        return urlDecode(str, "UTF-8");
    }

    public static String urlDecode(String str, String str2) {
        if (str == null || str.length() == 0) {
            return "";
        }
        try {
            return URLDecoder.decode(str.replaceAll("%(?![0-9a-fA-F]{2})", "%25").replaceAll("\\+", "%2B"), str2);
        } catch (UnsupportedEncodingException e11) {
            throw new AssertionError(e11);
        }
    }

    public static String urlEncode(String str) {
        return urlEncode(str, "UTF-8");
    }

    public static String urlEncode(String str, String str2) {
        if (str == null || str.length() == 0) {
            return "";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e11) {
            throw new AssertionError(e11);
        }
    }
}
