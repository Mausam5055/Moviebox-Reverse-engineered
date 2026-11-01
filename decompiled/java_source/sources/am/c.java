package am;

import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Object f666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final h f667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final boolean f668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Map f669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f670f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f671g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f672h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected SSLSocketFactory f673i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected HostnameVerifier f674j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected e.a f675k;

    public c(String str, Object obj, h hVar, Map map, boolean z10, int i11, int i12, boolean z11, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        e.a aVar = new e.a();
        this.f675k = aVar;
        this.f665a = str;
        this.f666b = obj;
        this.f667c = hVar;
        this.f669e = map;
        this.f668d = z10;
        this.f670f = i11;
        this.f671g = i12;
        this.f672h = z11;
        this.f673i = sSLSocketFactory;
        this.f674j = hostnameVerifier;
        aVar.n(str).e(obj).d(hVar).f(map).o(z10).b(this.f670f).l(this.f671g).i(this.f672h).h(this.f673i).g(this.f674j);
    }

    public wl.b a() {
        return new wl.b(this);
    }

    protected abstract e b();

    public e c() {
        return b();
    }
}
