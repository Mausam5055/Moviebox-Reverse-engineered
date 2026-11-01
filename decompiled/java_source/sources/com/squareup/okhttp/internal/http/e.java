package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.framed.ErrorCode;
import com.squareup.okhttp.internal.framed.FramedConnection;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements HttpStream {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ByteString f40479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ByteString f40480f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ByteString f40481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ByteString f40482h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ByteString f40483i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final ByteString f40484j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final ByteString f40485k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final ByteString f40486l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final List f40487m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final List f40488n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final List f40489o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final List f40490p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f40491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FramedConnection f40492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f40493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.squareup.okhttp.internal.framed.a f40494d;

    class a extends ForwardingSource {
        public a(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            e.this.f40491a.r(e.this);
            super.close();
        }
    }

    static {
        ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8("connection");
        f40479e = byteStringEncodeUtf8;
        ByteString byteStringEncodeUtf9 = ByteString.encodeUtf8("host");
        f40480f = byteStringEncodeUtf9;
        ByteString byteStringEncodeUtf10 = ByteString.encodeUtf8("keep-alive");
        f40481g = byteStringEncodeUtf10;
        ByteString byteStringEncodeUtf11 = ByteString.encodeUtf8("proxy-connection");
        f40482h = byteStringEncodeUtf11;
        ByteString byteStringEncodeUtf12 = ByteString.encodeUtf8("transfer-encoding");
        f40483i = byteStringEncodeUtf12;
        ByteString byteStringEncodeUtf13 = ByteString.encodeUtf8("te");
        f40484j = byteStringEncodeUtf13;
        ByteString byteStringEncodeUtf14 = ByteString.encodeUtf8("encoding");
        f40485k = byteStringEncodeUtf14;
        ByteString byteStringEncodeUtf15 = ByteString.encodeUtf8("upgrade");
        f40486l = byteStringEncodeUtf15;
        ByteString byteString = com.squareup.okhttp.internal.framed.b.f40364e;
        ByteString byteString2 = com.squareup.okhttp.internal.framed.b.f40365f;
        ByteString byteString3 = com.squareup.okhttp.internal.framed.b.f40366g;
        ByteString byteString4 = com.squareup.okhttp.internal.framed.b.f40367h;
        ByteString byteString5 = com.squareup.okhttp.internal.framed.b.f40368i;
        ByteString byteString6 = com.squareup.okhttp.internal.framed.b.f40369j;
        f40487m = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f40488n = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12);
        f40489o = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f40490p = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15);
    }

    public e(n nVar, FramedConnection framedConnection) {
        this.f40491a = nVar;
        this.f40492b = framedConnection;
    }

    public static List b(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40364e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40365f, j.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40367h, com.squareup.okhttp.internal.g.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40366g, request.httpUrl().scheme()));
        int size = headers.size();
        for (int i11 = 0; i11 < size; i11++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(headers.name(i11).toLowerCase(Locale.US));
            if (!f40489o.contains(byteStringEncodeUtf8)) {
                arrayList.add(new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, headers.value(i11)));
            }
        }
        return arrayList;
    }

    private static String c(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static Response.Builder d(List list) throws ProtocolException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        for (int i11 = 0; i11 < size; i11++) {
            ByteString byteString = ((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40370a;
            String strUtf8 = ((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40371b.utf8();
            if (byteString.equals(com.squareup.okhttp.internal.framed.b.f40363d)) {
                str = strUtf8;
            } else if (!f40490p.contains(byteString)) {
                builder.add(byteString.utf8(), strUtf8);
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a("HTTP/1.1 " + str);
        return new Response.Builder().protocol(Protocol.HTTP_2).code(mVarA.f40542b).message(mVarA.f40543c).headers(builder.build());
    }

    public static Response.Builder e(List list) throws ProtocolException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        String str2 = "HTTP/1.1";
        for (int i11 = 0; i11 < size; i11++) {
            ByteString byteString = ((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40370a;
            String strUtf8 = ((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40371b.utf8();
            int i12 = 0;
            while (i12 < strUtf8.length()) {
                int iIndexOf = strUtf8.indexOf(0, i12);
                if (iIndexOf == -1) {
                    iIndexOf = strUtf8.length();
                }
                String strSubstring = strUtf8.substring(i12, iIndexOf);
                if (byteString.equals(com.squareup.okhttp.internal.framed.b.f40363d)) {
                    str = strSubstring;
                } else if (byteString.equals(com.squareup.okhttp.internal.framed.b.f40369j)) {
                    str2 = strSubstring;
                } else if (!f40488n.contains(byteString)) {
                    builder.add(byteString.utf8(), strSubstring);
                }
                i12 = iIndexOf + 1;
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a(str2 + " " + str);
        return new Response.Builder().protocol(Protocol.SPDY_3).code(mVarA.f40542b).message(mVarA.f40543c).headers(builder.build());
    }

    public static List f(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 5);
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40364e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40365f, j.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40369j, "HTTP/1.1"));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40368i, com.squareup.okhttp.internal.g.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40366g, request.httpUrl().scheme()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = headers.size();
        for (int i11 = 0; i11 < size; i11++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(headers.name(i11).toLowerCase(Locale.US));
            if (!f40487m.contains(byteStringEncodeUtf8)) {
                String strValue = headers.value(i11);
                if (linkedHashSet.add(byteStringEncodeUtf8)) {
                    arrayList.add(new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, strValue));
                } else {
                    for (int i12 = 0; i12 < arrayList.size(); i12++) {
                        if (((com.squareup.okhttp.internal.framed.b) arrayList.get(i12)).f40370a.equals(byteStringEncodeUtf8)) {
                            arrayList.set(i12, new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, c(((com.squareup.okhttp.internal.framed.b) arrayList.get(i12)).f40371b.utf8(), strValue)));
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void cancel() {
        com.squareup.okhttp.internal.framed.a aVar = this.f40494d;
        if (aVar != null) {
            aVar.n(ErrorCode.CANCEL);
        }
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Sink createRequestBody(Request request, long j11) {
        return this.f40494d.q();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void finishRequest() throws IOException {
        this.f40494d.q().close();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public ResponseBody openResponseBody(Response response) {
        return new i(response.headers(), Okio.buffer(new a(this.f40494d.r())));
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Response.Builder readResponseHeaders() {
        return this.f40492b.d0() == Protocol.HTTP_2 ? d(this.f40494d.p()) : e(this.f40494d.p());
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void setHttpEngine(g gVar) {
        this.f40493c = gVar;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestBody(k kVar) throws IOException {
        kVar.h(this.f40494d.q());
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestHeaders(Request request) {
        if (this.f40494d != null) {
            return;
        }
        this.f40493c.C();
        com.squareup.okhttp.internal.framed.a aVarL0 = this.f40492b.l0(this.f40492b.d0() == Protocol.HTTP_2 ? b(request) : f(request), this.f40493c.q(request), true);
        this.f40494d = aVarL0;
        Timeout timeoutU = aVarL0.u();
        long readTimeout = this.f40493c.f40501a.getReadTimeout();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeoutU.timeout(readTimeout, timeUnit);
        this.f40494d.A().timeout(this.f40493c.f40501a.getWriteTimeout(), timeUnit);
    }
}
