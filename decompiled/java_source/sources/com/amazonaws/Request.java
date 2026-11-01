package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface Request<T> {
    void a(InputStream inputStream);

    void addHeader(String str, String str2);

    AWSRequestMetrics b();

    void c(String str);

    String d();

    void e(int i11);

    int f();

    void g(String str, String str2);

    InputStream getContent();

    Map getHeaders();

    Map getParameters();

    void h(AWSRequestMetrics aWSRequestMetrics);

    void i(Map map);

    String j();

    boolean k();

    AmazonWebServiceRequest l();

    HttpMethodName m();

    void n(boolean z10);

    void o(HttpMethodName httpMethodName);

    String p();

    void q(Map map);

    URI r();

    void s(URI uri);
}
