package yj;

import java.util.HashMap;
import java.util.ServiceLoader;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0969a f79022a = new C0969a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f79023b = new HashMap();

    /* JADX INFO: renamed from: yj.a$a, reason: collision with other inner class name */
    public static final class C0969a {
        private C0969a() {
        }

        public /* synthetic */ C0969a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Class clazz) {
            Intrinsics.h(clazz, "clazz");
            if (a.f79023b.containsKey(clazz.getName())) {
                Object obj = a.f79023b.get(clazz.getName());
                Intrinsics.f(obj, "null cannot be cast to non-null type T of com.transsion.baselib.service.BusinessServiceManager.Companion.getService");
                return obj;
            }
            ServiceLoader serviceLoaderLoad = ServiceLoader.load(clazz);
            if (serviceLoaderLoad.iterator().hasNext()) {
                Object next = serviceLoaderLoad.iterator().next();
                a.f79023b.put(clazz.getName(), next);
                return next;
            }
            lg.a.C0828a.m(lg.a.f68839a, "Service " + clazz + " has not implemented", false, 2, null);
            return null;
        }
    }
}
