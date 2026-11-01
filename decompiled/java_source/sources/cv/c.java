package cv;

import android.text.TextUtils;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.future.Continuation;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.http.server.p;
import com.transsion.transfer.androidasync.s;
import com.transsion.transfer.androidasync.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class c extends p implements cv.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    v f60893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Headers f60894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ByteBufferList f60895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    cv.d f60896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f60897m = "multipart/form-data";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f60898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f60899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ArrayList f60900p;

    class a implements v.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Headers f60901a;

        /* JADX INFO: renamed from: cv.c$a$a, reason: collision with other inner class name */
        class C0722a implements bv.d {
            C0722a() {
            }

            @Override // bv.d
            public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                byteBufferList.f(c.this.f60895k);
            }
        }

        a(Headers headers) {
            this.f60901a = headers;
        }

        @Override // com.transsion.transfer.androidasync.v.a
        public void a(String str) {
            if (!"\r".equals(str)) {
                this.f60901a.b(str);
                return;
            }
            c.this.W();
            c cVar = c.this;
            cVar.f60893i = null;
            cVar.t(null);
            cv.d dVar = new cv.d(this.f60901a);
            c.this.getClass();
            if (c.this.I() == null) {
                c cVar2 = c.this;
                cVar2.f60896l = dVar;
                cVar2.f60895k = new ByteBufferList();
                c.this.t(new C0722a());
            }
        }
    }

    class b implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.a f60904a;

        b(bv.a aVar) {
            this.f60904a = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            this.f60904a.g(exc);
        }
    }

    /* JADX INFO: renamed from: cv.c$c, reason: collision with other inner class name */
    class C0723c implements bv.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f60906a;

        C0723c(s sVar) {
            this.f60906a = sVar;
        }

        @Override // bv.c
        public void onContinue(Continuation continuation, bv.a aVar) {
            byte[] bytes = "\r\n".getBytes();
            a0.h(this.f60906a, bytes, aVar);
            c.this.f60898n += bytes.length;
        }
    }

    class d implements bv.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cv.d f60908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s f60909b;

        d(cv.d dVar, s sVar) {
            this.f60908a = dVar;
            this.f60909b = sVar;
        }

        @Override // bv.c
        public void onContinue(Continuation continuation, bv.a aVar) {
            long jC = this.f60908a.c();
            if (jC >= 0) {
                c cVar = c.this;
                cVar.f60898n = (int) (((long) cVar.f60898n) + jC);
            }
            this.f60908a.d(this.f60909b, aVar);
        }
    }

    class e implements bv.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cv.d f60911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s f60912b;

        e(cv.d dVar, s sVar) {
            this.f60911a = dVar;
            this.f60912b = sVar;
        }

        @Override // bv.c
        public void onContinue(Continuation continuation, bv.a aVar) {
            byte[] bytes = this.f60911a.b().g(c.this.Q()).getBytes();
            a0.h(this.f60912b, bytes, aVar);
            c.this.f60898n += bytes.length;
        }
    }

    class f implements bv.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f60914a;

        f(s sVar) {
            this.f60914a = sVar;
        }

        @Override // bv.c
        public void onContinue(Continuation continuation, bv.a aVar) {
            byte[] bytes = c.this.P().getBytes();
            a0.h(this.f60914a, bytes, aVar);
            c.this.f60898n += bytes.length;
        }
    }

    public c() {
    }

    public c(String str) {
        String string = Multimap.parseSemicolonDelimited(str).getString("boundary");
        if (string == null) {
            M(new Exception("No boundary found for multipart/form-data"));
        } else {
            T(string);
        }
    }

    @Override // cv.a
    public void C(j jVar, s sVar, bv.a aVar) {
        if (this.f60900p == null) {
            return;
        }
        Continuation continuation = new Continuation(new b(aVar));
        for (cv.d dVar : this.f60900p) {
            continuation.add(new e(dVar, sVar)).add(new d(dVar, sVar)).add(new C0723c(sVar));
        }
        continuation.add(new f(sVar));
        continuation.start();
    }

    @Override // cv.a
    public boolean K() {
        return false;
    }

    @Override // com.transsion.transfer.androidasync.http.server.p
    protected void R() {
        super.R();
        W();
    }

    @Override // com.transsion.transfer.androidasync.http.server.p
    protected void S() {
        Headers headers = new Headers();
        v vVar = new v();
        this.f60893i = vVar;
        vVar.a(new a(headers));
        t(this.f60893i);
    }

    public void U(cv.d dVar) {
        if (this.f60900p == null) {
            this.f60900p = new ArrayList();
        }
        this.f60900p.add(dVar);
    }

    public List V() {
        if (this.f60900p == null) {
            return null;
        }
        return new ArrayList(this.f60900p);
    }

    void W() {
        if (this.f60895k == null) {
            return;
        }
        if (this.f60894j == null) {
            this.f60894j = new Headers();
        }
        String strV = this.f60895k.v();
        String strA = TextUtils.isEmpty(this.f60896l.a()) ? "unnamed" : this.f60896l.a();
        g gVar = new g(strA, strV);
        gVar.f60916a = this.f60896l.f60916a;
        U(gVar);
        this.f60894j.a(strA, strV);
        this.f60896l = null;
        this.f60895k = null;
    }

    @Override // cv.a
    public String j() {
        if (O() == null) {
            T("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        return this.f60897m + "; boundary=" + O();
    }

    @Override // cv.a
    public int length() {
        if (O() == null) {
            T("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        int iC = 0;
        for (cv.d dVar : this.f60900p) {
            String strG = dVar.b().g(Q());
            if (dVar.c() == -1) {
                return -1;
            }
            iC = (int) (((long) iC) + dVar.c() + ((long) strG.getBytes().length) + ((long) 2));
        }
        int length = iC + P().getBytes().length;
        this.f60899o = length;
        return length;
    }

    @Override // cv.a
    public void r(com.transsion.transfer.androidasync.p pVar, bv.a aVar) {
        N(pVar);
        s(aVar);
    }

    public String toString() {
        Iterator it = V().iterator();
        return it.hasNext() ? ((cv.d) it.next()).toString() : "multipart content is empty";
    }
}
