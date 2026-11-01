package com.therouter.router.action;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.therouter.TheRouterKt;
import com.therouter.TheRouterThreadPool;
import com.therouter.c;
import com.therouter.history.HistoryRecorder;
import com.therouter.router.Navigator;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ActionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActionManager f40778a = new ActionManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f40779b = new ConcurrentHashMap();

    private ActionManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Navigator navigator, Context context) {
        Context contextC;
        Intrinsics.h(navigator, "$navigator");
        ArrayList<zf.a> arrayList = new ArrayList();
        List list = (List) f40779b.get(navigator.o());
        CopyOnWriteArrayList<zf.a> copyOnWriteArrayList = list != null ? new CopyOnWriteArrayList(list) : null;
        Bundle bundle = new Bundle();
        if (copyOnWriteArrayList != null) {
            for (zf.a aVar : copyOnWriteArrayList) {
                if (aVar != null) {
                    aVar.d(bundle);
                    HistoryRecorder.c(new com.therouter.history.a(navigator.p()));
                    if (context == null) {
                        contextC = c.c();
                        Intrinsics.e(contextC);
                    } else {
                        contextC = context;
                    }
                    boolean zB = aVar.b(contextC, navigator);
                    Bundle bundleA = aVar.a();
                    arrayList.add(aVar);
                    if (zB) {
                        bundle = bundleA;
                        break;
                    }
                    bundle = bundleA;
                }
            }
        }
        for (zf.a aVar2 : arrayList) {
            aVar2.d(bundle);
            aVar2.c();
        }
    }

    public final void c(final Navigator navigator, final Context context) {
        Intrinsics.h(navigator, "navigator");
        if (TextUtils.isEmpty(navigator.o())) {
            return;
        }
        TheRouterKt.c("ActionManager", "handleAction->" + navigator.p(), new Function0<Unit>() { // from class: com.therouter.router.action.ActionManager$handleAction$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m308invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m308invoke() {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    TheRouterKt.d("ActionManager", String.valueOf(stackTraceElement), null, 4, null);
                }
            }
        });
        TheRouterThreadPool.g(new Runnable() { // from class: com.therouter.router.action.a
            @Override // java.lang.Runnable
            public final void run() {
                ActionManager.b(navigator, context);
            }
        });
    }

    public final boolean d(Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return f40779b.get(navigator.o()) != null;
    }
}
