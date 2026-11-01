package com.therouter.history;

import com.therouter.TheRouterThreadPool;
import com.therouter.inject.RecyclerLruCache;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HistoryRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f40732a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f40733b = 30;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final RecyclerLruCache f40734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final WeakHashMap f40735d;

    static {
        RecyclerLruCache recyclerLruCache = new RecyclerLruCache(f40733b);
        recyclerLruCache.a(new Function3<String, d, d, Unit>() { // from class: com.therouter.history.HistoryRecorder$mCacher$1$1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((String) obj, (d) obj2, (d) obj3);
                return Unit.f67061a;
            }

            public final void invoke(String str, d dVar, d dVar2) {
                HistoryRecorder.f40735d.put(str, dVar);
            }
        });
        f40734c = recyclerLruCache;
        f40735d = new WeakHashMap();
    }

    public static final boolean c(final d event) {
        Intrinsics.h(event, "event");
        return TheRouterThreadPool.g(new Runnable() { // from class: com.therouter.history.e
            @Override // java.lang.Runnable
            public final void run() {
                HistoryRecorder.d(event);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(d event) {
        Intrinsics.h(event, "$event");
        RecyclerLruCache recyclerLruCache = f40734c;
        long j11 = f40732a;
        f40732a = 1 + j11;
        recyclerLruCache.put(String.valueOf(j11), event);
    }
}
