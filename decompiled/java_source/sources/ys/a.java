package ys;

import android.app.Application;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import zs.b;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f79056a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static tt.a f79057b;

    private a() {
    }

    public final void a(Function0 createFactory) {
        Intrinsics.h(createFactory, "createFactory");
        if (f79057b == null) {
            lg.a.f68839a.c("ShortTv", "checkCreateFactory, null create", true);
            f79057b = (tt.a) createFactory.invoke();
        }
    }

    public final tt.a b() {
        return f79057b;
    }

    public final void c(Application application, tt.a factory) {
        Intrinsics.h(application, "application");
        Intrinsics.h(factory, "factory");
        f79057b = factory;
        application.registerActivityLifecycleCallbacks(b.f79453a);
        kt.b.f68391a.c(application);
        wt.b.f77949a.b().init();
    }
}
