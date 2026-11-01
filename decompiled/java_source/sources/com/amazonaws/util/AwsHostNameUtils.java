package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AwsHostNameUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f18985a = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    public static String a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("hostname cannot be null");
        }
        String strB = b(str);
        if (strB != null) {
            return strB;
        }
        if (str.endsWith(".amazonaws.com")) {
            return d(str.substring(0, str.length() - 14));
        }
        if (str.endsWith(".amazonaws.com.cn")) {
            return d(str.substring(0, str.length() - 17));
        }
        if (str2 == null) {
            return "us-east-1";
        }
        Matcher matcher = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(str2) + "[.-]([a-z0-9-]+)\\.").matcher(str);
        return matcher.find() ? matcher.group(1) : "us-east-1";
    }

    private static String b(String str) {
        for (HostRegexToRegionMapping hostRegexToRegionMapping : InternalConfig.Factory.a().g()) {
            if (str.matches(hostRegexToRegionMapping.a())) {
                return hostRegexToRegionMapping.b();
            }
        }
        return null;
    }

    public static String c(URI uri) {
        String host = uri.getHost();
        if (host.endsWith(".amazonaws.com")) {
            String strSubstring = host.substring(0, host.indexOf(".amazonaws.com"));
            if (strSubstring.endsWith(".s3") || f18985a.matcher(strSubstring).matches()) {
                return "s3";
            }
            return strSubstring.indexOf(46) == -1 ? strSubstring : strSubstring.substring(0, strSubstring.indexOf(46));
        }
        throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + host + ").");
    }

    private static String d(String str) {
        Matcher matcher = f18985a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            return "us-east-1";
        }
        String strSubstring = str.substring(iLastIndexOf + 1);
        return "us-gov".equals(strSubstring) ? "us-gov-west-1" : strSubstring;
    }
}
