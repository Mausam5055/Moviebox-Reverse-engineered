package com.cloud.tmc.kernel.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.func.MimeTypeKt;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.transsion.gslb.Utils;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class UrlUtils {
    public static final String AND_MARK = "&";
    public static final String EQUAL_MARK = "=";
    public static final String QUESTION_MARK = "?";
    public static final String TAG = "TmcKernel:UrlUtils";
    private static LruCache<String, Uri> sCachedUriMap = new LruCache<>(20);
    private static LruCache<String, String> sCachedPurifyUrlMap = new LruCache<>(20);

    public static String addParam(String str, String str2, String str3) {
        return addParam(str, str2, str3, true);
    }

    public static String addParam(String str, String str2, String str3, boolean z10) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        if (StringUtils.isEmpty(str2)) {
            return str.trim();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(str2.trim(), str3);
        return addParams(str, linkedHashMap, z10);
    }

    public static String addParamNotExist(String str, String str2, String str3) {
        return addParam(str, str2, str3, false);
    }

    public static String addParams(String str, Map<String, String> map) {
        return addParams(str, map, true);
    }

    public static String addParams(String str, Map<String, String> map, boolean z10) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        if (map == null || map.size() < 1) {
            return str.trim();
        }
        Uri url = parseUrl(str);
        if (url == null) {
            return "";
        }
        Uri.Builder builderBuildUpon = url.buildUpon();
        builderBuildUpon.clearQuery();
        Map paramsMap = getParamsMap(str);
        if (paramsMap == null) {
            paramsMap = new LinkedHashMap();
        }
        if (!z10) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!StringUtils.isEmpty(entry.getKey())) {
                    linkedHashMap.put(entry.getKey().trim(), entry.getValue());
                }
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                for (Map.Entry entry3 : paramsMap.entrySet()) {
                    if (!StringUtils.isEmpty((CharSequence) entry2.getKey()) && ((String) entry2.getKey()).trim().equals(entry3.getKey())) {
                        map.remove(((String) entry2.getKey()).trim());
                    }
                }
            }
        }
        for (Map.Entry<String, String> entry4 : map.entrySet()) {
            paramsMap.put(entry4.getKey().trim(), entry4.getValue());
        }
        if (paramsMap.size() > 0) {
            for (String str2 : paramsMap.keySet()) {
                String str3 = (String) paramsMap.get(str2);
                if (str3 == null) {
                    str3 = "";
                }
                builderBuildUpon.appendQueryParameter(str2, str3);
            }
        }
        return builderBuildUpon.build().toString();
    }

    public static String addParamsNotExist(String str, Map<String, String> map) {
        return addParams(str, map, false);
    }

    @Nullable
    public static String decode(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (Exception e11) {
            TmcLogger.e(TAG, "Exception", e11);
            return null;
        }
    }

    @Nullable
    public static String encode(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception e11) {
            TmcLogger.e(TAG, "Exception", e11);
            return null;
        }
    }

    public static String getCORSUrl(String str) {
        try {
            Uri url = parseUrl(str);
            if (url == null) {
                return "";
            }
            String str2 = url.getScheme() + "://" + url.getHost();
            if (url.getPort() == -1) {
                return str2;
            }
            return str2 + ":" + url.getPort();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getContentTypeFromUrl(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String extension = getExtension(str);
            if (extension == null) {
                extension = "";
            }
            return MimeTypeKt.getMimeType(extension, false);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            return null;
        }
    }

    public static String getExtension(String str) {
        String path;
        String str2;
        int iLastIndexOf;
        try {
            if (!TextUtils.isEmpty(str) && (path = Uri.parse(str).getPath()) != null) {
                String[] strArrSplit = path.split("/");
                if (strArrSplit.length > 0 && (iLastIndexOf = (str2 = strArrSplit[strArrSplit.length - 1]).lastIndexOf(46)) != -1) {
                    return str2.substring(iLastIndexOf + 1);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
        return null;
    }

    public static String getHash(String str) {
        int iIndexOf;
        Uri url = parseUrl(str);
        String fragment = url != null ? url.getFragment() : null;
        if (fragment != null && (iIndexOf = fragment.indexOf(QUESTION_MARK)) > 0) {
            fragment = fragment.substring(0, iIndexOf);
        }
        return (fragment == null || !fragment.startsWith("/")) ? fragment : fragment.substring(1);
    }

    public static String getHost(String str) {
        Uri url = parseUrl(str);
        if (url != null) {
            return url.getHost();
        }
        return null;
    }

    public static String getOnlineHost(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("file:///") || str.startsWith("data:")) {
            return null;
        }
        return getHost(str);
    }

    public static String getParam(Uri uri, String str, String str2) {
        String queryParameter;
        if (uri == null) {
            return str2;
        }
        try {
            queryParameter = uri.getQueryParameter(str);
        } catch (Exception e11) {
            TmcLogger.e(TAG, "Exception", e11);
            queryParameter = null;
        }
        return TextUtils.isEmpty(queryParameter) ? str2 : queryParameter;
    }

    @Nullable
    public static Map<String, String> getParamsMap(String str) {
        String query;
        try {
            if (!StringUtils.isEmpty(str) && (query = getQuery(str)) != null && !StringUtils.isEmpty(query)) {
                String[] strArrSplit = query.split(AND_MARK);
                if (strArrSplit.length > 0) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (String str2 : strArrSplit) {
                        if (!StringUtils.isEmpty(str2)) {
                            String[] strArrSplit2 = str2.split(EQUAL_MARK);
                            if (strArrSplit2.length > 0) {
                                String str3 = strArrSplit2[0];
                                if (!StringUtils.isEmpty(str3)) {
                                    if (strArrSplit2.length > 1) {
                                        linkedHashMap.put(str3.trim(), strArrSplit2[1]);
                                    } else {
                                        linkedHashMap.put(str3.trim(), "");
                                    }
                                }
                            }
                        }
                    }
                    return linkedHashMap;
                }
                return null;
            }
            return null;
        } catch (Exception e11) {
            TmcLogger.e(TAG, "getParamsMap failed", e11);
        }
    }

    public static String getPath(String str) {
        Uri url = parseUrl(str);
        if (url != null) {
            return url.getPath();
        }
        return null;
    }

    public static String getPathAndHash(String str) {
        return getPath(str) + Utils.SEPARATOR + getHash(str);
    }

    public static int getPort(String str) {
        try {
            Uri url = parseUrl(str);
            if (url == null || url.getPort() == -1) {
                return -1;
            }
            return url.getPort();
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static String getQuery(String str) {
        Uri url = parseUrl(str);
        if (url != null) {
            return url.getQuery();
        }
        return null;
    }

    public static String getScheme(String str) {
        Uri url = parseUrl(str);
        if (url != null) {
            return url.getScheme();
        }
        return null;
    }

    public static boolean isUrlInDomainArray(String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length == 0) {
            return false;
        }
        Uri url = parseUrl(str);
        if (url == null) {
            TmcLogger.d(TAG, "parse auto url failed!");
            return false;
        }
        String host = url.getHost();
        if (TextUtils.isEmpty(host)) {
            TmcLogger.d(TAG, "can't get url host");
            return false;
        }
        String lowerCase = host.toLowerCase();
        try {
            for (String str2 : strArr) {
                if (!str2.equalsIgnoreCase(lowerCase)) {
                    if (!lowerCase.endsWith("." + str2)) {
                    }
                }
                return true;
            }
            return false;
        } catch (Exception e11) {
            TmcLogger.e(TAG, "match auto login exception.", e11);
            return false;
        }
    }

    public static String mergeUrl(String str, String str2) {
        String strPurifyUrl;
        int iLastIndexOf;
        Uri url = parseUrl(str2);
        if (url == null || !TextUtils.isEmpty(url.getScheme())) {
            return str2;
        }
        String str3 = null;
        if (str2.startsWith("//")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Uri url2 = parseUrl(str);
            if (url2 != null && !TextUtils.isEmpty(url2.getScheme())) {
                str3 = url2.getScheme() + ":" + str2;
            }
            TmcLogger.d(TAG, "getAbsoluteUrl // " + str3);
            return str3;
        }
        if (!str2.startsWith("/")) {
            if (TextUtils.isEmpty(str2) || (iLastIndexOf = (strPurifyUrl = purifyUrl(str)).lastIndexOf("/")) == -1) {
                return null;
            }
            String str4 = strPurifyUrl.substring(0, iLastIndexOf) + "/" + str2;
            TmcLogger.d(TAG, "getAbsoluteUrl else " + str4);
            return str4;
        }
        Uri url3 = parseUrl(str);
        if (url3 == null) {
            return null;
        }
        String scheme = url3.getScheme();
        String authority = url3.getAuthority();
        if (!TextUtils.isEmpty(scheme) && !TextUtils.isEmpty(authority)) {
            str3 = scheme + "://" + authority + str2;
        }
        TmcLogger.d(TAG, "getAbsoluteUrl / " + str3);
        return str3;
    }

    public static Uri parseUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Uri uri = sCachedUriMap.get(str);
        if (uri != null) {
            return uri;
        }
        try {
            uri = Uri.parse(str);
            sCachedUriMap.put(str, uri);
            return uri;
        } catch (Exception e11) {
            TmcLogger.e(TAG, "parse url exception.", e11);
            return uri;
        }
    }

    public static String purifyUrl(String str) {
        String strSubstring;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = sCachedPurifyUrlMap.get(str);
        if (str2 != null) {
            return str2;
        }
        try {
            int iIndexOf = str.indexOf(Utils.SEPARATOR);
            strSubstring = iIndexOf != -1 ? str.substring(0, iIndexOf) : str;
            try {
                if (strSubstring.contains("??")) {
                    sCachedPurifyUrlMap.put(str, strSubstring);
                    return strSubstring;
                }
                int iIndexOf2 = strSubstring.indexOf(QUESTION_MARK);
                if (iIndexOf2 != -1) {
                    strSubstring = strSubstring.substring(0, iIndexOf2);
                }
                sCachedPurifyUrlMap.put(str, strSubstring);
                return strSubstring;
            } catch (Throwable unused) {
                sCachedPurifyUrlMap.put(str, strSubstring);
                return strSubstring;
            }
        } catch (Throwable unused2) {
            strSubstring = str;
        }
    }

    public static String removeParams(String str, String... strArr) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        if (strArr == null || strArr.length < 1) {
            return str.trim();
        }
        Uri url = parseUrl(str);
        if (url == null) {
            return "";
        }
        Uri.Builder builderBuildUpon = url.buildUpon();
        builderBuildUpon.clearQuery();
        Map<String, String> paramsMap = getParamsMap(str);
        if (paramsMap != null && paramsMap.size() > 0) {
            for (String str2 : strArr) {
                if (!StringUtils.isEmpty(str2)) {
                    paramsMap.remove(str2.trim());
                }
            }
        }
        if (paramsMap == null || paramsMap.size() <= 0) {
            return str;
        }
        for (String str3 : paramsMap.keySet()) {
            builderBuildUpon.appendQueryParameter(str3, paramsMap.get(str3));
        }
        return builderBuildUpon.build().toString();
    }

    public static String stripAnchor(String str) {
        int iIndexOf = str.indexOf(35);
        if (iIndexOf == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iIndexOf);
        TmcLogger.d(TAG, "stripAnchor url:" + str + " afterUrl:" + strSubstring);
        return strSubstring;
    }

    public static String urlDecode(String str) {
        return EncodeUtils.urlDecode(str);
    }
}
