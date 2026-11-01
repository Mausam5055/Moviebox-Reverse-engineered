package com.alibaba.sdk.android.oss.common.utils;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URLEncoder;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtil {
    public static String paramToQueryString(Map<String, String> map, String str) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!z10) {
                sb2.append(UrlUtils.AND_MARK);
            }
            sb2.append(urlEncode(key, str));
            if (value != null) {
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(urlEncode(value, str));
            }
            z10 = false;
        }
        return sb2.toString();
    }

    public static String urlEncode(String str, String str2) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, str2).replace("+", "%20").replace("*", "%2A").replace("%7E", "~").replace("%2F", "/");
        } catch (Exception e11) {
            throw new IllegalArgumentException("failed to encode url!", e11);
        }
    }
}
