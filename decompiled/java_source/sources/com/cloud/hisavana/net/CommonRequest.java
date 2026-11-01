package com.cloud.hisavana.net;

import android.text.TextUtils;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes.dex */
public class CommonRequest {
    private CommonRequest() {
        throw new IllegalStateException("Utility class");
    }

    public static Request a(String str, RequestParams requestParams, IHttpCallback iHttpCallback) {
        try {
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append(UrlUtils.QUESTION_MARK);
            if (requestParams != null && !requestParams.getHttpParams().isEmpty()) {
                for (Map.Entry entry : requestParams.getHttpParams().entrySet()) {
                    sb2.append((String) entry.getKey());
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append((String) entry.getValue());
                    sb2.append(UrlUtils.AND_MARK);
                }
            }
            return requestParams != null ? new Request.Builder().url(sb2.substring(0, sb2.length() - 1)).headers(c(requestParams.getHttpHeaders())).get().build() : new Request.Builder().url(sb2.substring(0, sb2.length() - 1)).get().build();
        } catch (Exception e11) {
            if (iHttpCallback != null) {
                iHttpCallback.d(490, null, e11);
            }
            return null;
        }
    }

    public static Request b(String str, RequestParams requestParams, IHttpCallback iHttpCallback) {
        try {
            return new Request.Builder().url(str).headers(c(requestParams.getHttpHeaders())).post(d(requestParams.getPostBody())).build();
        } catch (Exception e11) {
            if (iHttpCallback != null) {
                iHttpCallback.d(490, null, e11);
            }
            return null;
        }
    }

    private static Headers c(Map map) {
        if (map == null) {
            map = new HashMap();
        }
        return !map.isEmpty() ? Headers.of((Map<String, String>) map) : new Headers.Builder().build();
    }

    private static RequestBody d(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return RequestBody.create(MediaType.get(ContentType.JSON.getValue()), str);
    }
}
