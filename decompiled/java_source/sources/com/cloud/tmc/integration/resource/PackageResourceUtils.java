package com.cloud.tmc.integration.resource;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class PackageResourceUtils {
    private static final String HOST = ".miniapp.transsion.com/index.html#pages/index/index";
    private static final String SCHEME_HTTPS = "https";

    public static ResourceQuery parse(String str) {
        Uri uri = Uri.parse(str);
        String queryParameter = uri.getQueryParameter("appId");
        TmcLogger.d("解析url:appid:" + queryParameter);
        String path = uri.getPath();
        TmcLogger.d("解析url:path:" + path);
        String fragment = uri.getFragment();
        TmcLogger.d("解析url:page:" + fragment);
        String strUrlDecode = UrlUtils.urlDecode(uri.getQueryParameter("query"));
        TmcLogger.d("解析query:decode:" + strUrlDecode);
        Uri uri2 = Uri.parse("https://xx.xx.com?" + strUrlDecode);
        Set<String> queryParameterNames = uri2.getQueryParameterNames();
        TmcLogger.d("解析 提取query参数:");
        for (String str2 : queryParameterNames) {
            TmcLogger.d("decode  " + str2 + ":   " + uri2.getQueryParameter(str2));
        }
        return new ResourceQuery(queryParameter, path, fragment, queryParameterNames);
    }

    public static String transformToURI(String str, String str2, String str3, String str4, String str5) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(SCHEME_HTTPS).authority(str2 + HOST).appendPath(str3);
        if (!TextUtils.isEmpty(str4)) {
            builder.fragment(str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            builder.query(str5);
        }
        return builder.toString();
    }
}
