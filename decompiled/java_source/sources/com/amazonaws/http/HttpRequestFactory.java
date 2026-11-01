package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpRequestFactory {
    private void a(Map map, Request request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI uriR = request.r();
        String host = uriR.getHost();
        if (HttpUtils.d(uriR)) {
            host = host + ":" + uriR.getPort();
        }
        map.put(HttpHeaders.HOST, host);
        for (Map.Entry entry : request.getHeaders().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get(HttpHeaders.CONTENT_TYPE) == null || ((String) map.get(HttpHeaders.CONTENT_TYPE)).isEmpty()) {
            map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=" + StringUtils.b("UTF-8"));
        }
        if (executionContext == null || executionContext.b() == null) {
            return;
        }
        map.put("User-Agent", c(clientConfiguration, executionContext.b()));
    }

    private String c(ClientConfiguration clientConfiguration, String str) {
        if (clientConfiguration.h().contains(str)) {
            return clientConfiguration.h();
        }
        return clientConfiguration.h() + " " + str;
    }

    public HttpRequest b(Request request, ClientConfiguration clientConfiguration, ExecutionContext executionContext) {
        boolean z10 = true;
        String strB = HttpUtils.b(request.r().toString(), request.p(), true);
        String strC = HttpUtils.c(request);
        HttpMethodName httpMethodNameM = request.m();
        boolean z11 = request.getContent() != null;
        HttpMethodName httpMethodName = HttpMethodName.POST;
        if (httpMethodNameM == httpMethodName && !z11) {
            z10 = false;
        }
        if (strC != null && z10) {
            strB = strB + UrlUtils.QUESTION_MARK + strC;
        }
        HashMap map = new HashMap();
        a(map, request, executionContext, clientConfiguration);
        InputStream content = request.getContent();
        HttpMethodName httpMethodName2 = HttpMethodName.PATCH;
        if (httpMethodNameM == httpMethodName2) {
            map.put("X-HTTP-Method-Override", httpMethodName2.toString());
            httpMethodNameM = httpMethodName;
        }
        if (httpMethodNameM == httpMethodName && request.getContent() == null && strC != null) {
            byte[] bytes = strC.getBytes(StringUtils.f19004a);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
            map.put(HttpHeaders.CONTENT_LENGTH, String.valueOf(bytes.length));
            content = byteArrayInputStream;
        }
        if (clientConfiguration.k() && map.get("Accept-Encoding") == null) {
            map.put("Accept-Encoding", "gzip");
        } else {
            map.put("Accept-Encoding", "identity");
        }
        HttpRequest httpRequest = new HttpRequest(httpMethodNameM.toString(), URI.create(strB), map, content);
        httpRequest.g(request.k());
        return httpRequest;
    }
}
