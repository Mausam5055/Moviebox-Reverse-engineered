package rc;

import com.google.firebase.perf.config.RemoteConfigManager;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74307a;

    public f(a aVar) {
        this.f74307a = aVar;
    }

    public static f a(a aVar) {
        return new f(aVar);
    }

    public static RemoteConfigManager c(a aVar) {
        return (RemoteConfigManager) hz.b.c(aVar.e());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RemoteConfigManager get() {
        return c(this.f74307a);
    }
}
