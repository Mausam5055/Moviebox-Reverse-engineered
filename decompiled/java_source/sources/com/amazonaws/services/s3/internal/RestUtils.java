package com.amazonaws.services.s3.internal;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.amazonaws.Request;
import com.amazonaws.util.StringUtils;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class RestUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f18660a = Arrays.asList(RequestParameters.SUBRESOURCE_ACL, "torrent", RequestParameters.SUBRESOURCE_LOGGING, RequestParameters.SUBRESOURCE_LOCATION, "policy", "requestPayment", "versioning", "versions", "versionId", "notification", RequestParameters.UPLOAD_ID, RequestParameters.SUBRESOURCE_UPLOADS, RequestParameters.PART_NUMBER, RequestParameters.SUBRESOURCE_WEBSITE, RequestParameters.SUBRESOURCE_DELETE, RequestParameters.SUBRESOURCE_LIFECYCLE, "tagging", RequestParameters.SUBRESOURCE_CORS, RequestParameters.X_OSS_RESTORE, "replication", "accelerate", "inventory", "analytics", "metrics", RequestParameters.RESPONSE_HEADER_CACHE_CONTROL, RequestParameters.RESPONSE_HEADER_CONTENT_DISPOSITION, RequestParameters.RESPONSE_HEADER_CONTENT_ENCODING, RequestParameters.RESPONSE_HEADER_CONTENT_LANGUAGE, RequestParameters.RESPONSE_HEADER_CONTENT_TYPE, RequestParameters.RESPONSE_HEADER_EXPIRES);

    public static String a(String str, String str2, Request request, String str3, Collection collection) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str + "\n");
        Map headers = request.getHeaders();
        TreeMap treeMap = new TreeMap();
        if (headers != null && headers.size() > 0) {
            for (Map.Entry entry : headers.entrySet()) {
                String str4 = (String) entry.getKey();
                String str5 = (String) entry.getValue();
                if (str4 != null) {
                    String strB = StringUtils.b(str4);
                    if ("content-type".equals(strB) || ConstantsKt.CONTENT_MD5.equals(strB) || "date".equals(strB) || strB.startsWith("x-amz-")) {
                        treeMap.put(strB, str5);
                    }
                }
            }
        }
        if (treeMap.containsKey("x-amz-date")) {
            treeMap.put("date", "");
        }
        if (str3 != null) {
            treeMap.put("date", str3);
        }
        if (!treeMap.containsKey("content-type")) {
            treeMap.put("content-type", "");
        }
        if (!treeMap.containsKey(ConstantsKt.CONTENT_MD5)) {
            treeMap.put(ConstantsKt.CONTENT_MD5, "");
        }
        for (Map.Entry entry2 : request.getParameters().entrySet()) {
            if (((String) entry2.getKey()).startsWith("x-amz-")) {
                treeMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        for (Map.Entry entry3 : treeMap.entrySet()) {
            String str6 = (String) entry3.getKey();
            String str7 = (String) entry3.getValue();
            if (str6.startsWith("x-amz-")) {
                sb2.append(str6);
                sb2.append(':');
                if (str7 != null) {
                    sb2.append(str7);
                }
            } else if (str7 != null) {
                sb2.append(str7);
            }
            sb2.append("\n");
        }
        sb2.append(str2);
        String[] strArr = (String[]) request.getParameters().keySet().toArray(new String[request.getParameters().size()]);
        Arrays.sort(strArr);
        char c11 = '?';
        for (String str8 : strArr) {
            if (f18660a.contains(str8) || (collection != null && collection.contains(str8))) {
                if (sb2.length() == 0) {
                    sb2.append(c11);
                }
                sb2.append(str8);
                String str9 = (String) request.getParameters().get(str8);
                if (str9 != null) {
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append(str9);
                }
                c11 = '&';
            }
        }
        return sb2.toString();
    }
}
