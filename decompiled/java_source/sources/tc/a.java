package tc;

/* JADX INFO: loaded from: classes5.dex */
public class a extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final sc.a f76175b = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.perf.v1.c f76176a;

    a(com.google.firebase.perf.v1.c cVar) {
        this.f76176a = cVar;
    }

    private boolean g() {
        com.google.firebase.perf.v1.c cVar = this.f76176a;
        if (cVar == null) {
            f76175b.j("ApplicationInfo is null");
            return false;
        }
        if (!cVar.s()) {
            f76175b.j("GoogleAppId is null");
            return false;
        }
        if (!this.f76176a.q()) {
            f76175b.j("AppInstanceId is null");
            return false;
        }
        if (!this.f76176a.r()) {
            f76175b.j("ApplicationProcessState is null");
            return false;
        }
        if (!this.f76176a.p()) {
            return true;
        }
        if (!this.f76176a.m().l()) {
            f76175b.j("AndroidAppInfo.packageName is null");
            return false;
        }
        if (this.f76176a.m().m()) {
            return true;
        }
        f76175b.j("AndroidAppInfo.sdkVersion is null");
        return false;
    }

    @Override // tc.e
    public boolean c() {
        if (g()) {
            return true;
        }
        f76175b.j("ApplicationInfo is invalid");
        return false;
    }
}
