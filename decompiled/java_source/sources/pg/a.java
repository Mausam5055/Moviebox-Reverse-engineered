package pg;

import android.app.Application;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0884a f72446a = new C0884a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f72447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f72448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f72449d;

    /* JADX INFO: renamed from: pg.a$a, reason: collision with other inner class name */
    public static final class C0884a {
        private C0884a() {
        }

        public /* synthetic */ C0884a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return a.f72449d;
        }

        public final b b() {
            return a.f72448c;
        }

        public final boolean c() {
            b bVarB = b();
            return (bVarB != null ? bVarB.c() : false) || Log.isLoggable("net_proxy_tag", 3);
        }

        public final boolean d() {
            b bVarB;
            if (a() || (bVarB = b()) == null) {
                return false;
            }
            return bVarB.d();
        }

        public final void e(Application application) {
            a.f72447b = application;
        }

        public final void f(Application application, b bVar) {
            Intrinsics.h(application, "application");
            e(application);
            i(bVar);
        }

        public final void g(boolean z10) {
            a.f72449d = z10;
        }

        public final void h(boolean z10) {
            g(z10);
        }

        public final void i(b bVar) {
            a.f72448c = bVar;
        }
    }
}
