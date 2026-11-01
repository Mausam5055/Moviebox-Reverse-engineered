package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultRequest<T> implements Request<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18304a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private URI f18308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18309f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AmazonWebServiceRequest f18310g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InputStream f18312i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f18313j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AWSRequestMetrics f18314k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f18315l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f18305b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f18306c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f18307d = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HttpMethodName f18311h = HttpMethodName.POST;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f18309f = str;
        this.f18310g = amazonWebServiceRequest;
    }

    @Override // com.amazonaws.Request
    public void a(InputStream inputStream) {
        this.f18312i = inputStream;
    }

    @Override // com.amazonaws.Request
    public void addHeader(String str, String str2) {
        this.f18307d.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public AWSRequestMetrics b() {
        return this.f18314k;
    }

    @Override // com.amazonaws.Request
    public void c(String str) {
        this.f18304a = str;
    }

    @Override // com.amazonaws.Request
    public String d() {
        return this.f18309f;
    }

    @Override // com.amazonaws.Request
    public void e(int i11) {
        this.f18313j = i11;
    }

    @Override // com.amazonaws.Request
    public int f() {
        return this.f18313j;
    }

    @Override // com.amazonaws.Request
    public void g(String str, String str2) {
        this.f18306c.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public InputStream getContent() {
        return this.f18312i;
    }

    @Override // com.amazonaws.Request
    public Map getHeaders() {
        return this.f18307d;
    }

    @Override // com.amazonaws.Request
    public Map getParameters() {
        return this.f18306c;
    }

    @Override // com.amazonaws.Request
    public void h(AWSRequestMetrics aWSRequestMetrics) {
        if (this.f18314k != null) {
            throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
        }
        this.f18314k = aWSRequestMetrics;
    }

    @Override // com.amazonaws.Request
    public void i(Map map) {
        this.f18307d.clear();
        this.f18307d.putAll(map);
    }

    @Override // com.amazonaws.Request
    public String j() {
        return this.f18315l;
    }

    @Override // com.amazonaws.Request
    public boolean k() {
        return this.f18305b;
    }

    @Override // com.amazonaws.Request
    public AmazonWebServiceRequest l() {
        return this.f18310g;
    }

    @Override // com.amazonaws.Request
    public HttpMethodName m() {
        return this.f18311h;
    }

    @Override // com.amazonaws.Request
    public void n(boolean z10) {
        this.f18305b = z10;
    }

    @Override // com.amazonaws.Request
    public void o(HttpMethodName httpMethodName) {
        this.f18311h = httpMethodName;
    }

    @Override // com.amazonaws.Request
    public String p() {
        return this.f18304a;
    }

    @Override // com.amazonaws.Request
    public void q(Map map) {
        this.f18306c.clear();
        this.f18306c.putAll(map);
    }

    @Override // com.amazonaws.Request
    public URI r() {
        return this.f18308e;
    }

    @Override // com.amazonaws.Request
    public void s(URI uri) {
        this.f18308e = uri;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m());
        sb2.append(" ");
        sb2.append(r());
        sb2.append(" ");
        String strP = p();
        if (strP == null) {
            sb2.append("/");
        } else {
            if (!strP.startsWith("/")) {
                sb2.append("/");
            }
            sb2.append(strP);
        }
        sb2.append(" ");
        if (!getParameters().isEmpty()) {
            sb2.append("Parameters: (");
            for (String str : getParameters().keySet()) {
                String str2 = (String) getParameters().get(str);
                sb2.append(str);
                sb2.append(": ");
                sb2.append(str2);
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        if (!getHeaders().isEmpty()) {
            sb2.append("Headers: (");
            for (String str3 : getHeaders().keySet()) {
                String str4 = (String) getHeaders().get(str3);
                sb2.append(str3);
                sb2.append(": ");
                sb2.append(str4);
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        return sb2.toString();
    }
}
