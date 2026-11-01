package pc;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f72421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f72422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f72423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f72424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final uz.a f72425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final uz.a f72426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final uz.a f72427g;

    public g(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5, uz.a aVar6, uz.a aVar7) {
        this.f72421a = aVar;
        this.f72422b = aVar2;
        this.f72423c = aVar3;
        this.f72424d = aVar4;
        this.f72425e = aVar5;
        this.f72426f = aVar6;
        this.f72427g = aVar7;
    }

    public static g a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5, uz.a aVar6, uz.a aVar7) {
        return new g(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static e c(com.google.firebase.f fVar, ic.b bVar, jc.e eVar, ic.b bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        return new e(fVar, bVar, eVar, bVar2, remoteConfigManager, aVar, sessionManager);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e get() {
        return c((com.google.firebase.f) this.f72421a.get(), (ic.b) this.f72422b.get(), (jc.e) this.f72423c.get(), (ic.b) this.f72424d.get(), (RemoteConfigManager) this.f72425e.get(), (com.google.firebase.perf.config.a) this.f72426f.get(), (SessionManager) this.f72427g.get());
    }
}
