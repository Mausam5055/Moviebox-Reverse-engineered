package com.amazonaws.util;

import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f18994a = Pattern.compile(Pattern.quote("+") + "|" + Pattern.quote("*") + "|" + Pattern.quote("%7E") + "|" + Pattern.quote("%2F"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f18995b;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Pattern.quote("%2A"));
        sb2.append("|");
        sb2.append(Pattern.quote("%2B"));
        sb2.append("|");
        f18995b = Pattern.compile(sb2.toString());
    }

    public static String a(String str, String str2) {
        return b(str, str2, false);
    }

    public static String b(String str, String str2, boolean z10) {
        if (str2 == null || str2.length() <= 0) {
            if (str.endsWith("/")) {
                return str;
            }
            return str + "/";
        }
        if (str2.startsWith("/")) {
            if (str.endsWith("/")) {
                str = str.substring(0, str.length() - 1);
            }
        } else if (!str.endsWith("/")) {
            str = str + "/";
        }
        String strE = e(str2, true);
        if (z10) {
            strE = strE.replace("//", "/%2F");
        }
        return str + strE;
    }

    public static String c(Request request) {
        if (request.getParameters().isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            boolean z10 = true;
            for (Map.Entry entry : request.getParameters().entrySet()) {
                String strEncode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
                String str = (String) entry.getValue();
                String strEncode2 = str == null ? "" : URLEncoder.encode(str, "UTF-8");
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(UrlUtils.AND_MARK);
                }
                sb2.append(strEncode);
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(strEncode2);
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    public static boolean d(URI uri) {
        String strB = StringUtils.b(uri.getScheme());
        int port = uri.getPort();
        if (port <= 0) {
            return false;
        }
        if ("http".equals(strB) && port == 80) {
            return false;
        }
        return ("https".equals(strB) && port == 443) ? false : true;
    }

    public static String e(String str, boolean z10) {
        if (str == null) {
            return "";
        }
        try {
            String strEncode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f18994a.matcher(strEncode);
            StringBuffer stringBuffer = new StringBuffer(strEncode.length());
            while (matcher.find()) {
                String strGroup = matcher.group(0);
                if ("+".equals(strGroup)) {
                    strGroup = "%20";
                } else if ("*".equals(strGroup)) {
                    strGroup = "%2A";
                } else if ("%7E".equals(strGroup)) {
                    strGroup = "~";
                } else if (z10 && "%2F".equals(strGroup)) {
                    strGroup = "/";
                }
                matcher.appendReplacement(stringBuffer, strGroup);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static boolean f(Request request) {
        return HttpMethodName.POST.equals(request.m()) && (request.getContent() == null);
    }
}
