package qm;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.collection.s;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f73644a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f73645b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f73646c = new ConcurrentHashMap();

    private e() {
    }

    public final List a(int i11) {
        return (List) f73645b.remove(Integer.valueOf(i11));
    }

    public final int b(List preloadList) {
        ConcurrentHashMap concurrentHashMap;
        Intrinsics.h(preloadList, "preloadList");
        int iHashCode = preloadList.hashCode();
        while (true) {
            concurrentHashMap = f73645b;
            if (!concurrentHashMap.containsKey(Integer.valueOf(iHashCode))) {
                break;
            }
            iHashCode = (iHashCode << 1) | s.a(SystemClock.elapsedRealtimeNanos());
        }
        concurrentHashMap.put(Integer.valueOf(iHashCode), preloadList);
        Iterator it = preloadList.iterator();
        while (it.hasNext()) {
            b.g((b) it.next(), null, 1, null);
        }
        return iHashCode;
    }

    public final int c(b... preload) {
        Intrinsics.h(preload, "preload");
        return b(ArraysKt.K0(preload));
    }

    public final void d(String str, Bundle bundle) {
        List listA;
        c cVar = (c) f73646c.get(str);
        if (cVar == null || (listA = cVar.a(str, bundle)) == null) {
            return;
        }
        int iB = f73644a.b(listA);
        if (bundle != null) {
            bundle.putInt("yy_preload_id", iB);
        }
    }

    public final void e(c interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        lg.a.C0828a.f(lg.a.f68839a, "IPreload", "regInterceptor", false, 4, null);
        f73646c.put(interceptor.getPath(), interceptor);
    }
}
