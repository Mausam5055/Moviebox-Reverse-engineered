package am;

import android.content.Context;
import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f683f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f684g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f685h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f686i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f687j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.transsion.http.d.a f688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f689l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final SSLSocketFactory f690m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final HostnameVerifier f691n;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f694c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f695d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f696e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f697f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Object f698g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private h f699h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f700i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Context f701j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f702k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private com.transsion.http.d.a f703l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private Map f704m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f705n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private SSLSocketFactory f706o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private HostnameVerifier f707p;

        public a() {
            bm.a.f16624a.a(this.f692a);
        }

        public a b(int i11) {
            this.f693b = i11;
            return this;
        }

        public a c(Context context) {
            this.f701j = context;
            return this;
        }

        public a d(h hVar) {
            this.f699h = hVar;
            return this;
        }

        public a e(Object obj) {
            this.f698g = obj;
            return this;
        }

        public a f(Map map) {
            this.f704m = map;
            return this;
        }

        public a g(HostnameVerifier hostnameVerifier) {
            this.f707p = hostnameVerifier;
            return this;
        }

        public a h(SSLSocketFactory sSLSocketFactory) {
            this.f706o = sSLSocketFactory;
            return this;
        }

        public a i(boolean z10) {
            this.f695d = z10;
            return this;
        }

        public e j() {
            if (this.f696e == null) {
                throw new IllegalStateException("url == null");
            }
            if (this.f706o == null) {
                this.f706o = new b().a();
            }
            if (this.f707p == null) {
                this.f707p = new am.a().a();
            }
            return new e(this);
        }

        public a l(int i11) {
            this.f694c = i11;
            return this;
        }

        public a m(boolean z10) {
            this.f700i = z10;
            return this;
        }

        public a n(String str) {
            this.f696e = str;
            return this;
        }

        public a o(boolean z10) {
            this.f692a = z10;
            bm.a.f16624a.a(z10);
            return this;
        }
    }

    public e(a aVar) {
        this.f678a = aVar.f693b;
        this.f679b = aVar.f694c;
        boolean unused = aVar.f695d;
        this.f680c = aVar.f696e;
        this.f681d = aVar.f697f;
        this.f682e = aVar.f698g != null ? aVar.f698g : this;
        this.f683f = aVar.f699h;
        this.f685h = aVar.f704m;
        this.f684g = aVar.f700i;
        this.f686i = aVar.f701j;
        this.f687j = aVar.f702k;
        this.f688k = aVar.f703l;
        this.f689l = aVar.f705n;
        this.f690m = aVar.f706o;
        this.f691n = aVar.f707p;
    }

    public int a() {
        return this.f678a;
    }

    void b(String str) {
        this.f680c = str;
    }

    public String c() {
        return this.f681d;
    }

    public com.transsion.http.d.a d() {
        return this.f688k;
    }

    public Context e() {
        return this.f686i;
    }

    public Map f() {
        return this.f685h;
    }

    public HostnameVerifier g() {
        return this.f691n;
    }

    public h h() {
        return this.f683f;
    }

    public String i() {
        return this.f687j;
    }

    public int j() {
        return this.f679b;
    }

    public boolean k() {
        return this.f689l;
    }

    public SSLSocketFactory l() {
        return this.f690m;
    }

    public Object m() {
        return this.f682e;
    }

    public String n() {
        return this.f680c;
    }

    public boolean o() {
        return this.f684g;
    }
}
