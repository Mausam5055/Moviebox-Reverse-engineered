package pc;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.metrics.h;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import vc.k;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final sc.a f72411i = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f72412a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.perf.config.a f72413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.firebase.perf.util.d f72414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f72415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.firebase.f f72416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ic.b f72417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final jc.e f72418g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ic.b f72419h;

    e(com.google.firebase.f fVar, ic.b bVar, jc.e eVar, ic.b bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        this.f72415d = null;
        this.f72416e = fVar;
        this.f72417f = bVar;
        this.f72418g = eVar;
        this.f72419h = bVar2;
        if (fVar == null) {
            this.f72415d = Boolean.FALSE;
            this.f72413b = aVar;
            this.f72414c = new com.google.firebase.perf.util.d(new Bundle());
            return;
        }
        k.k().r(fVar, eVar, bVar2);
        Context contextK = fVar.k();
        com.google.firebase.perf.util.d dVarA = a(contextK);
        this.f72414c = dVarA;
        remoteConfigManager.setFirebaseRemoteConfigProvider(bVar);
        this.f72413b = aVar;
        aVar.P(dVarA);
        aVar.O(contextK);
        sessionManager.setApplicationContext(contextK);
        this.f72415d = aVar.j();
        sc.a aVar2 = f72411i;
        if (aVar2.h() && d()) {
            aVar2.f(String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", sc.b.b(fVar.n().e(), contextK.getPackageName())));
        }
    }

    private static com.google.firebase.perf.util.d a(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No perf enable meta data found ");
            sb2.append(e11.getMessage());
            bundle = null;
        }
        return bundle != null ? new com.google.firebase.perf.util.d(bundle) : new com.google.firebase.perf.util.d();
    }

    public static e c() {
        return (e) com.google.firebase.f.l().j(e.class);
    }

    public Map b() {
        return new HashMap(this.f72412a);
    }

    public boolean d() {
        Boolean bool = this.f72415d;
        return bool != null ? bool.booleanValue() : com.google.firebase.f.l().t();
    }

    public h e(String str, String str2) {
        return new h(str, str2, k.k(), new Timer());
    }
}
