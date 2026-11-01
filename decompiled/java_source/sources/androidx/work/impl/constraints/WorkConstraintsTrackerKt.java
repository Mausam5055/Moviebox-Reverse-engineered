package androidx.work.impl.constraints;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.work.impl.model.j0;
import androidx.work.t;
import i4.n;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WorkConstraintsTrackerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15589a;

    static {
        String strI = t.i("WorkConstraintsTracker");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15589a = strI;
    }

    public static final NetworkRequestConstraintController a(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return new NetworkRequestConstraintController((ConnectivityManager) systemService, 0L, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List d(n nVar) {
        List listQ = CollectionsKt.q(new androidx.work.impl.constraints.controllers.b(nVar.a()), new androidx.work.impl.constraints.controllers.c(nVar.b()), new androidx.work.impl.constraints.controllers.i(nVar.e()));
        if (Build.VERSION.SDK_INT >= 28) {
            listQ.add(a(nVar.c()));
        } else {
            i4.g gVarD = nVar.d();
            Intrinsics.e(gVarD);
            listQ.addAll(CollectionsKt.o(new androidx.work.impl.constraints.controllers.e(gVarD), new androidx.work.impl.constraints.controllers.h(nVar.d()), new androidx.work.impl.constraints.controllers.g(nVar.d()), new androidx.work.impl.constraints.controllers.f(nVar.d())));
        }
        return listQ;
    }

    public static final t1 e(WorkConstraintsTracker workConstraintsTracker, j0 spec, i0 dispatcher, h listener) {
        Intrinsics.h(workConstraintsTracker, "<this>");
        Intrinsics.h(spec, "spec");
        Intrinsics.h(dispatcher, "dispatcher");
        Intrinsics.h(listener, "listener");
        return kotlinx.coroutines.k.d(o0.a(dispatcher), null, null, new WorkConstraintsTrackerKt$listen$1(workConstraintsTracker, spec, listener, null), 3, null);
    }
}
