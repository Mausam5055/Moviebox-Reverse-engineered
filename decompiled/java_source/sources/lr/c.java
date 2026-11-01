package lr;

import android.app.Application;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static rs.a f69032b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f69031a = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f69033c = b.f69021e.a();

    private c() {
    }

    public final void a(Function0 createFactory) {
        Intrinsics.h(createFactory, "createFactory");
        if (f69032b == null) {
            lg.a.f68839a.c("ShortTv", "checkCreateFactory, null create", true);
            f69032b = (rs.a) createFactory.invoke();
        }
    }

    public final b b() {
        return f69033c;
    }

    public final rs.a c() {
        return f69032b;
    }

    public final void d(Application application, rs.a factory) {
        Intrinsics.h(application, "application");
        Intrinsics.h(factory, "factory");
        f69032b = factory;
        application.registerActivityLifecycleCallbacks(vr.b.f77441a);
        fs.b.f62459a.c(application);
        com.transsnet.flow.event.b bVar = com.transsnet.flow.event.b.f60254a;
        if (bVar.b() == null) {
            bVar.c(application);
        }
        com.transsion.shorttv.subtitle.manager.b.f53090a.b().init();
    }
}
