package bi;

import okhttp3.Call;
import okhttp3.EventListener;

/* JADX INFO: loaded from: classes5.dex */
public class g implements EventListener.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EventListener.Factory f16525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f16526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f16527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f16528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f16529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f16530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f16531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f16532h;

    public g() {
        this.f16526b = 0;
        this.f16527c = false;
        this.f16528d = false;
        this.f16529e = false;
        this.f16530f = false;
        this.f16532h = "All";
    }

    public g(EventListener.Factory factory, int i11, boolean z10) {
        this.f16528d = false;
        this.f16529e = false;
        this.f16530f = false;
        this.f16532h = "All";
        this.f16525a = factory;
        this.f16526b = i11;
        this.f16527c = z10;
    }

    public void a(String str) {
        this.f16531g = str;
    }

    public void b(boolean z10) {
        this.f16530f = z10;
    }

    @Override // okhttp3.EventListener.Factory
    public EventListener create(Call call) {
        EventListener.Factory factory = this.f16525a;
        EventListener eventListenerCreate = factory != null ? factory.create(call) : null;
        String strHost = call.request().url().host();
        if (d.d() || d.a(strHost)) {
            o.f16547a.h("NetworkMonitor", "==== MonitorFactory host : ${host} matches ====");
            return new f(eventListenerCreate, this.f16526b, this.f16527c, this.f16532h, this.f16530f, this.f16531g, this.f16528d, this.f16529e);
        }
        o.f16547a.h("NetworkMonitor", "==== MonitorFactory host : ${host} does not matche ====");
        return eventListenerCreate == null ? EventListener.NONE : eventListenerCreate;
    }
}
