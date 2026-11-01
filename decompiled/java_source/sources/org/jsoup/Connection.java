package org.jsoup;

import java.net.Proxy;
import java.net.URL;
import java.util.Collection;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.jsoup.nodes.Document;
import org.jsoup.parser.e;

/* JADX INFO: loaded from: classes7.dex */
public interface Connection {

    public enum Method {
        GET(false),
        POST(true),
        PUT(true),
        DELETE(false),
        PATCH(true),
        HEAD(false),
        OPTIONS(false),
        TRACE(false);

        private final boolean hasBody;

        Method(boolean z10) {
            this.hasBody = z10;
        }

        public final boolean hasBody() {
            return this.hasBody;
        }
    }

    public interface a {
        URL f();

        a h(String str, String str2);

        Map k();

        Method method();

        a n(String str);

        a p(URL url);

        a q(String str, String str2);

        a r(Method method);

        boolean s(String str);

        Map u();
    }

    public interface b extends a {
        b a(boolean z10);

        boolean b();

        String c();

        b d(String str);

        boolean e();

        SSLSocketFactory g();

        Proxy i();

        Collection j();

        boolean l();

        b o(e eVar);

        boolean t();

        int timeout();

        String v();

        int w();

        e x();
    }

    public interface c extends a {
        Document m();
    }

    Connection a(boolean z10);

    Connection b(String str);

    Document get();
}
