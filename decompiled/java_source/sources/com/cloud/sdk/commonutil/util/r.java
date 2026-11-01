package com.cloud.sdk.commonutil.util;

import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.aliyun.player.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f23216a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f23217b = "";

    private static String a() {
        try {
            if (!e.h()) {
                return "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - e.c();
            if (jCurrentTimeMillis >= 5000) {
                return WebSettings.getDefaultUserAgent(e.a());
            }
            c.Log().w("UserAgentUtil", "createNewUserAgent intervalTime is " + jCurrentTimeMillis);
            return "";
        } catch (Throwable th2) {
            c.Log().e("createNewUserAgent is error , error infor is :=" + th2.getMessage());
            return "";
        }
    }

    private static String b() {
        Locale locale = Locale.getDefault();
        StringBuffer stringBuffer = new StringBuffer();
        String strReplace = Build.VERSION.RELEASE.replace(";", "");
        if (strReplace.length() > 0) {
            stringBuffer.append(strReplace);
        } else {
            stringBuffer.append(BuildConfig.VERSION_NAME);
        }
        stringBuffer.append("; ");
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase());
            String country = locale.getCountry();
            if (country != null) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str = Build.MODEL;
            if (str.length() > 0) {
                stringBuffer.append("; ");
                stringBuffer.append(str);
            }
        }
        String str2 = Build.ID;
        if (str2.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(str2);
        }
        return String.format("Mozilla/5.0 (Linux; Android %s;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/55.0.2883.91 Mobile Safari/537.36", stringBuffer);
    }

    public static String c() {
        try {
            if (d(f23216a)) {
                return f23216a;
            }
            String strJ = j7.a.e().j("user_agent");
            f23216a = strJ;
            if (d(strJ)) {
                return f23216a;
            }
            String strA = a();
            f23216a = strA;
            if (d(strA)) {
                j7.a.e().r("user_agent", f23216a);
                return f23216a;
            }
            if (TextUtils.isEmpty(f23217b)) {
                f23217b = b();
            }
            return d(f23217b) ? f23217b : "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean d(String str) {
        return (TextUtils.isEmpty(str) || str.length() <= 10 || str.contains("windows NT") || str.contains("Macintosh") || str.contains("Dalvik")) ? false : true;
    }
}
