package com.transsion.transfer.androidasync.http.server;

import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.b0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncHttpServer extends n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Hashtable f55421h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f55422e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    bv.f f55423f = new AnonymousClass1();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    bv.a f55424g;

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1, reason: invalid class name */
    class AnonymousClass1 implements bv.f {

        /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1$1, reason: invalid class name and collision with other inner class name */
        class C06781 extends n.a {
            final bv.i A;
            final /* synthetic */ com.transsion.transfer.androidasync.j B;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            n.a f55426q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            q f55427r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            String f55428s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            String f55429t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            boolean f55430u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            boolean f55431v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            k f55432w;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            boolean f55433x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            boolean f55434y;

            /* JADX INFO: renamed from: z, reason: collision with root package name */
            final Runnable f55435z;

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1$1$a */
            class a implements bv.i {
                a() {
                }
            }

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1$1$b */
            class b implements bv.a {
                b() {
                }

                @Override // bv.a
                public void g(Exception exc) {
                    C06781.this.resume();
                    if (exc != null) {
                        C06781.this.M(exc);
                        return;
                    }
                    C06781 c06781 = C06781.this;
                    c06781.f55433x = true;
                    c06781.V();
                }
            }

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1$1$c */
            class c extends k {
                c(com.transsion.transfer.androidasync.j jVar, com.transsion.transfer.androidasync.http.server.c cVar) {
                    super(jVar, cVar);
                }

                @Override // com.transsion.transfer.androidasync.http.server.k
                protected void C() {
                    C06781.this.f55430u = true;
                    super.C();
                    this.f55464d.s(null);
                    AsyncHttpServer.this.r(r(), C06781.this.f55432w);
                    C06781.this.b0();
                }

                @Override // com.transsion.transfer.androidasync.http.server.k
                protected void D(Exception exc) {
                    super.D(exc);
                    if (exc != null) {
                        C06781.this.B.t(new bv.d.a());
                        C06781.this.B.s(new bv.a.C0149a());
                        C06781.this.B.close();
                    }
                }
            }

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.server.AsyncHttpServer$1$1$d */
            class d extends bv.d.a {
                d() {
                }

                @Override // bv.d.a, bv.d
                public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                    super.F(pVar, byteBufferList);
                    C06781.this.f55442i.close();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06781(com.transsion.transfer.androidasync.j jVar) {
                super();
                this.B = jVar;
                this.f55426q = this;
                this.f55435z = new Runnable() { // from class: com.transsion.transfer.androidasync.http.server.AsyncHttpServer.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                };
                this.A = new a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b0() {
                if (this.f55431v && this.f55430u && !AsyncHttpServer.this.n(this.f55432w)) {
                    if (AsyncHttpServer.this.m(this.f55426q, this.f55432w)) {
                        AnonymousClass1.this.w(this.B);
                    } else {
                        this.B.close();
                    }
                }
            }

            @Override // com.transsion.transfer.androidasync.http.server.c
            protected cv.a U(Headers headers) {
                String[] strArrSplit = T().split(" ");
                String str = strArrSplit[1];
                this.f55428s = str;
                String strDecode = URLDecoder.decode(str.split("\\?")[0]);
                this.f55429t = strDecode;
                String str2 = strArrSplit[0];
                this.f55446m = str2;
                n.d dVarA = AsyncHttpServer.this.a(str2, strDecode);
                if (dVarA == null) {
                    return null;
                }
                this.f55480o = dVarA.f55488c;
                this.f55427r = dVarA.f55489d;
                return null;
            }

            @Override // com.transsion.transfer.androidasync.http.server.c
            protected void V() {
                Headers headers = getHeaders();
                if (!this.f55433x && "100-continue".equals(headers.c("Expect"))) {
                    pause();
                    a0.h(this.f55442i, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), new b());
                    return;
                }
                c cVar = new c(this.B, this);
                this.f55432w = cVar;
                boolean zQ = AsyncHttpServer.this.q(this, cVar);
                this.f55434y = zQ;
                if (zQ) {
                    return;
                }
                if (this.f55427r == null) {
                    this.f55432w.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
                    this.f55432w.d();
                } else if (!D().K() || this.f55431v) {
                    c0();
                }
            }

            @Override // com.transsion.transfer.androidasync.http.server.c
            protected cv.a X(Headers headers) {
                return AsyncHttpServer.this.s(headers);
            }

            void c0() {
                AsyncHttpServer.this.p(this.f55427r, this, this.f55432w);
            }

            @Override // com.transsion.transfer.androidasync.http.server.c, bv.a
            public void g(Exception exc) {
                if (AsyncHttpServer.this.n(this.f55432w)) {
                    return;
                }
                this.f55431v = true;
                super.g(exc);
                this.f55442i.t(new d());
                if (exc != null) {
                    this.f55442i.close();
                    return;
                }
                b0();
                if (!D().K() || this.f55434y) {
                    return;
                }
                c0();
            }

            @Override // com.transsion.transfer.androidasync.http.server.b
            public String getPath() {
                return this.f55429t;
            }

            @Override // com.transsion.transfer.androidasync.http.server.b
            public Multimap h() {
                String[] strArrSplit = this.f55428s.split("\\?", 2);
                return strArrSplit.length < 2 ? new Multimap() : Multimap.parseQuery(strArrSplit[1]);
            }
        }

        AnonymousClass1() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            AsyncHttpServer.this.t(exc);
        }

        @Override // bv.f
        public void q(com.transsion.transfer.androidasync.i iVar) {
            AsyncHttpServer.this.f55422e.add(iVar);
        }

        @Override // bv.f
        public void w(com.transsion.transfer.androidasync.j jVar) {
            new C06781(jVar).Y(jVar);
            jVar.resume();
        }
    }

    public interface a {
        void a(b0 b0Var, b bVar);
    }

    static {
        Hashtable hashtable = new Hashtable();
        f55421h = hashtable;
        hashtable.put(200, "OK");
        f55421h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_CONSUMED_VALUE), "Accepted");
        f55421h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE), "Partial Content");
        f55421h.put(101, "Switching Protocols");
        f55421h.put(Integer.valueOf(Sdk$SDKError.Reason.MRAID_ERROR_VALUE), "Moved Permanently");
        f55421h.put(Integer.valueOf(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE), "Found");
        f55421h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_EXPIRED_VALUE), "Not Modified");
        f55421h.put(400, "Bad Request");
        f55421h.put(401, "Unauthorized");
        f55421h.put(Integer.valueOf(TTAdConstant.DEEPLINK_FALLBACK_CODE), "Not Found");
        f55421h.put(500, "Internal Server Error");
    }

    public static String l(int i11) {
        String str = (String) f55421h.get(Integer.valueOf(i11));
        return str == null ? "Unknown" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Exception exc) {
        bv.a aVar = this.f55424g;
        if (aVar != null) {
            aVar.g(exc);
        }
    }

    protected boolean m(b bVar, d dVar) {
        return HttpUtil.e(dVar.E(), bVar.getHeaders());
    }

    protected boolean n(d dVar) {
        return dVar.b() == 101;
    }

    public com.transsion.transfer.androidasync.i o(AsyncServer asyncServer, int i11) {
        return asyncServer.y(null, i11, this.f55423f);
    }

    protected void p(q qVar, b bVar, d dVar) {
        if (qVar != null) {
            try {
                qVar.b(bVar, dVar);
            } catch (Exception e11) {
                Log.e("AsyncHttpServer", "request callback raised uncaught exception. Catching versus crashing process", e11);
                dVar.c(500);
                dVar.d();
            }
        }
    }

    protected boolean q(b bVar, d dVar) {
        return false;
    }

    protected void r(b bVar, d dVar) {
    }

    protected cv.a s(Headers headers) {
        return new s(headers.c(HttpHeaders.CONTENT_TYPE));
    }

    public void u() {
        ArrayList arrayList = this.f55422e;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.i) it.next()).stop();
            }
        }
    }
}
