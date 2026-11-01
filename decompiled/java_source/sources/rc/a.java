package rc;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f74299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final jc.e f74300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ic.b f74301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ic.b f74302d;

    public a(com.google.firebase.f fVar, jc.e eVar, ic.b bVar, ic.b bVar2) {
        this.f74299a = fVar;
        this.f74300b = eVar;
        this.f74301c = bVar;
        this.f74302d = bVar2;
    }

    com.google.firebase.perf.config.a a() {
        return com.google.firebase.perf.config.a.g();
    }

    com.google.firebase.f b() {
        return this.f74299a;
    }

    jc.e c() {
        return this.f74300b;
    }

    ic.b d() {
        return this.f74301c;
    }

    RemoteConfigManager e() {
        return RemoteConfigManager.getInstance();
    }

    SessionManager f() {
        return SessionManager.getInstance();
    }

    ic.b g() {
        return this.f74302d;
    }
}
