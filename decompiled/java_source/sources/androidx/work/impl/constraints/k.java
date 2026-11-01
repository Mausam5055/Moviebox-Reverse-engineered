package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class k extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f15625a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f15626b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f15627c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static NetworkCapabilities f15628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f15629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Boolean f15630f;

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(Function1 function1, ConnectivityManager connectivityManager) {
        synchronized (f15626b) {
            Map map = f15627c;
            map.remove(function1);
            if (map.isEmpty()) {
                t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController unregister shared callback");
                connectivityManager.unregisterNetworkCallback(f15625a);
                f15630f = null;
                f15628d = null;
                f15629e = false;
            }
        }
        return Unit.f67061a;
    }

    private final boolean d(NetworkRequest networkRequest, NetworkCapabilities networkCapabilities) {
        Boolean bool = f15630f;
        Intrinsics.e(bool);
        return !bool.booleanValue() && networkRequest.canBeSatisfiedBy(networkCapabilities);
    }

    private final void e() {
        ArrayList<Pair> arrayList = new ArrayList();
        synchronized (f15626b) {
            try {
                if (f15629e && f15630f != null) {
                    for (Map.Entry entry : f15627c.entrySet()) {
                        arrayList.add(TuplesKt.a((Function1) entry.getKey(), f15625a.d((NetworkRequest) entry.getValue(), f15628d) ? b.a.f15592a : new b.C0134b(7)));
                    }
                    Unit unit = Unit.f67061a;
                    for (Pair pair : arrayList) {
                        ((Function1) pair.component1()).invoke((b) pair.component2());
                    }
                    return;
                }
                t.e().a(WorkConstraintsTrackerKt.f15589a, "Not dispatching constraint state yet: isBlocked=" + f15630f + ", capabilitiesInitialized=" + f15629e);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Function0 b(final ConnectivityManager connManager, NetworkRequest networkRequest, final Function1 onConstraintState) {
        Intrinsics.h(connManager, "connManager");
        Intrinsics.h(networkRequest, "networkRequest");
        Intrinsics.h(onConstraintState, "onConstraintState");
        synchronized (f15626b) {
            try {
                Map map = f15627c;
                boolean zIsEmpty = map.isEmpty();
                map.put(onConstraintState, networkRequest);
                if (zIsEmpty) {
                    t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController register shared callback");
                    connManager.registerDefaultNetworkCallback(f15625a);
                } else if (f15629e && f15630f != null) {
                    t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController send initial capabilities");
                    onConstraintState.invoke(f15625a.d(networkRequest, f15628d) ? b.a.f15592a : new b.C0134b(7));
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new Function0() { // from class: androidx.work.impl.constraints.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.c(onConstraintState, connManager);
            }
        };
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z10) {
        Intrinsics.h(network, "network");
        t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController onBlockedStatusChanged callback " + z10);
        synchronized (f15626b) {
            if (Intrinsics.c(f15630f, Boolean.valueOf(z10))) {
                return;
            }
            f15630f = Boolean.valueOf(z10);
            Unit unit = Unit.f67061a;
            e();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (f15626b) {
            f15628d = networkCapabilities;
            f15629e = true;
            Unit unit = Unit.f67061a;
        }
        e();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.h(network, "network");
        t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController onLost callback");
        synchronized (f15626b) {
            try {
                f15628d = null;
                Iterator it = f15627c.keySet().iterator();
                while (it.hasNext()) {
                    ((Function1) it.next()).invoke(new b.C0134b(7));
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
