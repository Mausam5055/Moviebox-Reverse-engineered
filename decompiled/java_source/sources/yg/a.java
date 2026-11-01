package yg;

import com.tn.lib.net.cons.HeaderType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0968a f79008a = new C0968a(null);

    /* JADX INFO: renamed from: yg.a$a, reason: collision with other inner class name */
    public static final class C0968a {
        private C0968a() {
        }

        public /* synthetic */ C0968a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Interceptor a() {
            pg.b bVarB = pg.a.f72446a.b();
            return (bVarB != null ? bVarB.a() : null) == HeaderType.ONE_ROOM ? new c() : new c();
        }
    }
}
