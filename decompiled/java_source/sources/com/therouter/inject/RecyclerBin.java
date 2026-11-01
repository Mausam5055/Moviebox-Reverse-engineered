package com.therouter.inject;

import java.util.Arrays;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class RecyclerBin {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f40745a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RecyclerLruCache f40746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakHashMap f40747c;

    public RecyclerBin() {
        RecyclerLruCache recyclerLruCache = new RecyclerLruCache(10);
        recyclerLruCache.a(new Function3<a, Object, Object, Unit>() { // from class: com.therouter.inject.RecyclerBin$mCacher$1$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((a) obj, obj2, obj3);
                return Unit.f67061a;
            }

            public final void invoke(a aVar, Object obj, Object obj2) {
                WeakHashMap weakHashMap = this.this$0.f40747c;
                RecyclerBin recyclerBin = this.this$0;
                synchronized (weakHashMap) {
                    recyclerBin.f40747c.put(aVar, obj);
                    Unit unit = Unit.f67061a;
                }
            }
        });
        this.f40746b = recyclerLruCache;
        this.f40747c = new WeakHashMap();
    }

    public final Object b(Class clazz, Object... params) {
        Object objRemove;
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        a aVar = new a(clazz, Arrays.copyOf(params, params.length));
        Object obj = this.f40745a.get(aVar);
        if (obj != null) {
            return obj;
        }
        Object obj2 = this.f40746b.get(aVar);
        if (obj2 != null) {
            return obj2;
        }
        synchronized (this.f40747c) {
            objRemove = this.f40747c.remove(aVar);
            Unit unit = Unit.f67061a;
        }
        if (objRemove != null) {
            this.f40746b.put(aVar, objRemove);
        }
        return objRemove;
    }

    public final void c(Class clazz, Object obj, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        a aVar = new a(clazz, Arrays.copyOf(params, params.length));
        if (clazz.isAnnotationPresent(Singleton.class)) {
            if (obj != null) {
                this.f40745a.put(aVar, obj);
            }
        } else {
            if (clazz.isAnnotationPresent(NewInstance.class)) {
                return;
            }
            this.f40746b.put(aVar, obj);
        }
    }
}
