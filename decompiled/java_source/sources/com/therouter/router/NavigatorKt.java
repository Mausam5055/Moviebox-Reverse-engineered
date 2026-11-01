package com.therouter.router;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NavigatorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final LinkedList f40767a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f40768b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f40769c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f40770d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List f40771e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static bg.c f40772f = new bg.c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Function2 f40773g = new Function2<RouteItem, Function1<? super RouteItem, ? extends Unit>, Unit>() { // from class: com.therouter.router.NavigatorKt$routerInterceptor$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((RouteItem) obj, (Function1<? super RouteItem, Unit>) obj2);
            return Unit.f67061a;
        }

        public final void invoke(RouteItem route, Function1<? super RouteItem, Unit> callback) {
            Intrinsics.h(route, "route");
            Intrinsics.h(callback, "callback");
            callback.invoke(route);
        }
    };

    public static final void h(bg.e interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        List list = f40770d;
        list.add(interceptor);
        Collections.sort(list, new Comparator() { // from class: com.therouter.router.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return NavigatorKt.i((bg.e) obj, (bg.e) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int i(bg.e eVar, bg.e eVar2) {
        if (eVar == null) {
            return -1;
        }
        if (eVar2 == null) {
            return 1;
        }
        return eVar2.a() - eVar.a();
    }

    public static final HashMap j() {
        return f40768b;
    }

    public static final void k() {
        Iterator it = f40767a.iterator();
        while (it.hasNext()) {
            ((g) it.next()).a().invoke();
        }
        f40767a.clear();
    }

    public static final void l(final bg.f interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        f40773g = new Function2<RouteItem, Function1<? super RouteItem, ? extends Unit>, Unit>() { // from class: com.therouter.router.NavigatorKt$setRouterInterceptor$1

            public static final class a implements bg.b {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Function1 f40774a;

                a(Function1 function1) {
                    this.f40774a = function1;
                }

                @Override // bg.b
                public void a(RouteItem routeItem) {
                    Intrinsics.h(routeItem, "routeItem");
                    this.f40774a.invoke(routeItem);
                }
            }

            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((RouteItem) obj, (Function1<? super RouteItem, Unit>) obj2);
                return Unit.f67061a;
            }

            public final void invoke(RouteItem route, Function1<? super RouteItem, Unit> callback) {
                Intrinsics.h(route, "route");
                Intrinsics.h(callback, "callback");
                interceptor.a(route, new a(callback));
            }
        };
    }
}
